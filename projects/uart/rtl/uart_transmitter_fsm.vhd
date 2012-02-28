library ieee;
use ieee.std_logic_1164.all;

entity uart_transmitter_fsm is
  
  port (
    clk_i         : in std_logic;
    rst_i         : in std_logic;
    sample_tick_i : in std_logic;

    tx_start_i     : in  std_logic;
    t_bit_o        : in  std_logic;
    tx_o           : out std_logic;
    tx_done_tick_o : out std_logic;
    tx_idle_o      : out std_logic;

    shift_nLoad_o : out std_logic;
    shift_en_o    : out std_logic;

    sc_cnt_i : in integer range 0 to 31;
    bc_cnt_i : in integer range 0 to 9;

    sc_cnt_en_o : out std_logic;
    bc_cnt_en_o : out std_logic;
    sc_load_o   : out std_logic;
    bc_load_o   : out std_logic;

    -- Configuration inputs --
    par_en_i        : in std_logic;
    par_odd_nEven_i : in std_logic;
    stop_bits_num_i : in std_logic_vector(1 downto 0)

    );

end entity uart_transmitter_fsm;

architecture behaviour of uart_transmitter_fsm is

  type STATE_TYPE is (START_S, DATA_S, STOP_S, IDLE_S);

  signal state      : STATE_TYPE;
  signal state_next : STATE_TYPE;

  signal sc_ge_15 : std_logic;
  signal sc_ge_23 : std_logic;
  signal sc_ge_31 : std_logic;
  signal bc_ge_7  : std_logic;
  signal bc_ge_8  : std_logic;

  signal idle_start_cond : std_logic;
  signal start_data_cond : std_logic;
  signal data_stop_cond  : std_logic;
  signal stop_idle_cond  : std_logic;

  signal idle_start_trans : std_logic;
  signal start_data_trans : std_logic;
  signal data_stop_trans  : std_logic;
  signal stop_idle_trans  : std_logic;

  signal at_last_bit        : std_logic;
  signal at_end_of_stop_bit : std_logic;

  signal t_next_bit : std_logic;

begin  -- architecture behaviour

  state_update_proc : process (clk_i, rst_i) is
  begin  -- process state_update_proc
    if rst_i = '1' then                     -- asynchronous reset (active high)
      state <= IDLE_S;
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      state <= state_next;
    end if;
  end process state_update_proc;

  next_state_proc : process (data_stop_cond, idle_start_cond, start_data_cond,
                             state, stop_idle_cond) is
  begin  -- process next_state_proc
    case state is
      when IDLE_S =>
        if idle_start_cond = '1' then
          state_next <= START_S;
        else
          state_next <= IDLE_S;
        end if;
      when START_S =>
        if start_data_cond = '1' then
          state_next <= DATA_S;
        else
          state_next <= START_S;
        end if;
      when DATA_S =>
        if data_stop_cond = '1' then
          state_next <= STOP_S;
        else
          state_next <= DATA_S;
        end if;
      when STOP_S =>
        if stop_idle_cond = '1' then
          state_next <= IDLE_S;
        else
          state_next <= STOP_S;
        end if;
    end case;
  end process next_state_proc;

  sc_ge_15 <= '1' when sc_cnt_i >= 15 else '0';
  sc_ge_23 <= '1' when sc_cnt_i >= 23 else '0';
  sc_ge_31 <= '1' when sc_cnt_i >= 31 else '0';

  bc_ge_7 <= '1' when bc_cnt_i >= 7 else '0';
  bc_ge_8 <= '1' when bc_cnt_i >= 8 else '0';

  at_last_bit <= bc_ge_8 when par_en_i = '1' else bc_ge_7;
  with stop_bits_num_i select
    at_end_of_stop_bit <=
    sc_ge_15 when "00",
    sc_ge_23 when "01",
    sc_ge_31 when others;

  idle_start_cond <= tx_start_i;--and sample_tick_i;
  start_data_cond <= sc_ge_15 and sample_tick_i;
  data_stop_cond  <= at_last_bit and sample_tick_i;
  stop_idle_cond  <= at_end_of_stop_bit and sample_tick_i;

  idle_start_trans <= '1' when idle_start_cond = '1' and state = IDLE_S  else '0';
  start_data_trans <= '1' when start_data_cond = '1' and state = START_S else '0';
  data_stop_trans  <= '1' when data_stop_cond = '1' and state = DATA_S   else '0';
  stop_idle_trans  <= '1' when stop_idle_cond = '1' and state = STOP_S   else '0';

  t_next_bit <= '1' when sc_ge_15 = '1' and sample_tick_i = '1' and state = DATA_S else '0';

  sc_load_o <= t_next_bit or idle_start_trans or start_data_trans or data_stop_trans or stop_idle_trans;
  bc_load_o <= start_data_trans;

  sc_cnt_en_o <= '1' when sample_tick_i = '1' and state /= IDLE_S else '0';
  bc_cnt_en_o <= t_next_bit;

  with state select
    tx_o <=
    t_bit_o when DATA_S,
    '0'     when START_S,
    '1'     when others;

  tx_done_tick_o <= stop_idle_trans;
  tx_idle_o      <= '1' when state = IDLE_S else '0';

  shift_nLoad_o <= not idle_start_trans;
  shift_en_o    <= t_next_bit;
  

end architecture behaviour;

