library ieee;
use ieee.std_logic_1164.all;

entity ps2_controller_fsm is
  generic (
    MAX_TIMER_COUNT             : integer;
    CYCLES_PER_10_MICRO_SECONDS : integer);
  port(clk_i, rst_i              : in    std_logic;
       ps2_clk_io, ps2_data_io   : inout std_logic;
       f_ps2_clk_i, f_ps2_data_i : in    std_logic;

       rx_en_i        : in  std_logic;
       rx_done_tick_o : out std_logic;

       tx_start_tick_i : in  std_logic;
       tx_done_tick_o  : out std_logic;

       rx_frame_err_tick_o : out std_logic;
       tx_nack_tick_o      : out std_logic;
       bussy_flag_o        : out std_logic;

       buf_tx_nRx_sel_o  : out std_logic;
       buf_shift_nLoad_o : out std_logic;
       buf_shift_en_o    : out std_logic;
       buf_serial_out_i  : in  std_logic;

       bc_cnt_i    : in  integer range 0 to 9;
       bc_cnt_en_o : out std_logic;
       bc_reload_o : out std_logic;

       tm_reload_o : out std_logic;
       tm_cnt_i    : in  integer range 0 to MAX_TIMER_COUNT

       );
end entity ps2_controller_fsm;

architecture behaviour of ps2_controller_fsm is

  type state_t is (IDLE_S, INHIBIT_S, RX_DATA_S, RX_STOP_S, TX_INHIBIT_S, TX_START_S, TX_DATA_S, TX_STOP_S, TX_ACK_S);

  signal pre_ps2_clk     : std_logic;
  signal ps2_clk_falling : std_logic;

  signal state_next : state_t;
  signal state      : state_t := IDLE_S;

  signal rx_idle_data_cond : std_logic;
  signal rx_data_stop_cond : std_logic;
  signal rx_stop_idle_cond : std_logic;

  signal rx_idle_data_trans : std_logic;
  --signal rx_data_stop_trans : std_logic;
  signal rx_stop_idle_trans : std_logic;

  signal tx_inhibit_cond       : std_logic;
  signal tx_inhibit_start_cond : std_logic;
  signal tx_start_data_cond    : std_logic;
  signal tx_data_stop_cond     : std_logic;
  signal tx_stop_ack_cond      : std_logic;
  signal tx_ack_idle_cond      : std_logic;

  signal tx_inhibit_trans       : std_logic;
  --signal tx_inhibit_start_trans : std_logic;
  signal tx_start_data_trans    : std_logic;
  --signal tx_data_stop_trans     : std_logic;
  signal tx_stop_ack_trans      : std_logic;
  signal tx_ack_idle_trans      : std_logic;

  signal rx_next_bit_tick : std_logic;
  signal tx_next_bit_tick : std_logic;
  
begin  -- architecture behaviour

  transition_proc :
  process(clk_i, rst_i)
  begin
    if(rst_i = '1') then
      state       <= IDLE_S;
      pre_ps2_clk <= '0';
    elsif(clk_i'event and clk_i = '1') then
      pre_ps2_clk <= f_ps2_clk_i;
      state       <= state_next;
    end if;
  end process;

  next_state_logic_proc :
  process(rx_data_stop_cond, rx_idle_data_cond, rx_stop_idle_cond, state,
          tx_ack_idle_cond, tx_data_stop_cond, tx_inhibit_cond,
          tx_inhibit_start_cond, tx_start_data_cond, tx_stop_ack_cond,
          rx_en_i)
  begin
    case(state) is
      when IDLE_S =>
    if tx_inhibit_cond = '1' then
      state_next <= TX_INHIBIT_S;
    elsif rx_en_i = '0' then
      state_next <= INHIBIT_S;
    elsif rx_idle_data_cond = '1' then
      state_next <= RX_DATA_S;
    else
      state_next <= IDLE_S;
    end if;

    when INHIBIT_S =>
    if tx_inhibit_cond = '1' then
      state_next <= TX_INHIBIT_S;
    elsif rx_en_i = '1' then
      state_next <= IDLE_S;
    else
      state_next <= INHIBIT_S;
    end if;

    when RX_DATA_S =>
    if rx_data_stop_cond = '1' then  -- If the start bit is shifted to the start...
      state_next <= RX_STOP_S;
    else
      state_next <= RX_DATA_S;
    end if;
    when RX_STOP_S =>
    if rx_stop_idle_cond = '1' then
      state_next <= IDLE_S;
    else
      state_next <= RX_STOP_S;
    end if;

    when TX_INHIBIT_S =>
    if tx_inhibit_start_cond = '1' then  -- Remember to release clk on
                                         -- transition
      state_next <= TX_START_S;
    else
      state_next <= TX_INHIBIT_S;
    end if;

    when TX_START_S =>
    if tx_start_data_cond = '1' then
      state_next <= TX_DATA_S;
    else
      state_next <= TX_START_S;
    end if;
    when TX_DATA_S =>
    if tx_data_stop_cond = '1' then
      state_next <= TX_STOP_S;
    else
      state_next <= TX_DATA_S;
    end if;
    when TX_STOP_S =>
    if tx_stop_ack_cond = '1' then
      state_next <= TX_ACK_S;
    else
      state_next <= TX_STOP_S;
    end if;
    when TX_ACK_S =>
    if tx_ack_idle_cond = '1' then
      state_next <= IDLE_S;
    else
      state_next <= TX_ACK_S;
    end if;
    
  end case;
end process;

-- PS2 Clock Edge detection
ps2_clk_falling <= pre_ps2_clk and (not f_ps2_clk_i);

rx_idle_data_cond <= ps2_clk_falling and (not f_ps2_data_i);
rx_data_stop_cond <= not buf_serial_out_i and ps2_clk_falling;  -- Check if the last bit is the
                                                                -- start bit
rx_stop_idle_cond <= ps2_clk_falling;

rx_idle_data_trans <= '1' when state = IDLE_S and rx_idle_data_cond = '1'    else '0';
--rx_data_stop_trans <= '1' when state = RX_DATA_S and rx_data_stop_cond = '1' else '0';
rx_stop_idle_trans <= '1' when state = RX_STOP_S and rx_stop_idle_cond = '1' else '0';

tx_inhibit_cond       <= tx_start_tick_i;
tx_inhibit_start_cond <= '1' when tm_cnt_i >= (10*CYCLES_PER_10_MICRO_SECONDS-1) else '0';
tx_start_data_cond    <= ps2_clk_falling;
tx_data_stop_cond     <= '1' when bc_cnt_i >= 9                                  else '0';
tx_stop_ack_cond      <= ps2_clk_falling;
tx_ack_idle_cond      <= f_ps2_clk_i;

tx_inhibit_trans       <= '1' when (state = IDLE_S or state = INHIBIT_S) and tx_inhibit_cond = '1' else '0';
--tx_inhibit_start_trans <= '1' when state = TX_INHIBIT_S and tx_inhibit_start_cond = '1'            else '0';
tx_start_data_trans    <= '1' when state = TX_START_S and tx_start_data_cond = '1'                 else '0';
--tx_data_stop_trans     <= '1' when state = TX_DATA_S and tx_data_stop_cond = '1'                   else '0';
tx_stop_ack_trans      <= '1' when state = TX_STOP_S and tx_stop_ack_cond = '1'                    else '0';
tx_ack_idle_trans      <= '1' when state = TX_ACK_S and tx_ack_idle_cond = '1'                     else '0';

rx_next_bit_tick <= '1' when state = RX_DATA_S and ps2_clk_falling = '1' else '0';
tx_next_bit_tick <= '1' when state = TX_DATA_S and ps2_clk_falling = '1' else '0';

bc_cnt_en_o <= tx_next_bit_tick;
bc_reload_o <= tx_start_data_trans;

tm_reload_o <= '0' when state = TX_INHIBIT_S else '1';

-- RX Shift register control logic
buf_tx_nRx_sel_o  <= tx_inhibit_trans;
buf_shift_nLoad_o <= not(rx_idle_data_trans or tx_inhibit_trans);
buf_shift_en_o    <= rx_next_bit_tick or tx_next_bit_tick;

-- Status & data output logic
rx_done_tick_o      <= rx_stop_idle_trans;
rx_frame_err_tick_o <= rx_stop_idle_trans and (not f_ps2_data_i);
tx_done_tick_o      <= tx_ack_idle_trans;
tx_nack_tick_o      <= tx_stop_ack_trans and f_ps2_data_i;
bussy_flag_o        <= '0' when state = IDLE_S else '1';

with state select
  ps2_clk_io <=
  '0' when TX_INHIBIT_S,
  '0' when INHIBIT_S,
  'Z' when others;

with state select
  ps2_data_io <=
  '0'              when TX_START_S,
  buf_serial_out_i when TX_DATA_S,
  'Z'              when others;

end architecture behaviour;
