library ieee;
use ieee.std_logic_1164.all;

entity uart_receiver_fsm is

  port (
    clk_i : in std_logic;
    rst_i : in std_logic;

    -- FSM inputs --
    rx_i          : in std_logic;
    sample_tick_i : in std_logic;
    sc_cnt_i      : in integer range 0 to 31;  -- Counts sample ticks.
    r_last_bit_i  : in std_logic;

    -- FSM outputs --
    sc_cnt_en_o      : out std_logic;
    sc_load_o        : out std_logic;
    r_shift_nLoad_o  : out std_logic;
    r_shift_en_o     : out std_logic;   -- Enables shift of rx shift reg.
    rx_done_tick_o   : out std_logic;
    frame_err_tick_o : out std_logic;

    -- Configuration inputs --
    stop_bits_num_i : in std_logic_vector(1 downto 0));

end entity uart_receiver_fsm;

architecture behaviour of uart_receiver_fsm is

  type STATE is (IDLE_S, START_S, DATA_S, STOP_S);

  -- State signals
  signal l_state      : STATE;
  signal l_state_next : STATE;

  -- Next state condition signals --
  signal l_idle_start_cond : std_logic;
  signal l_start_data_cond : std_logic;
  signal l_data_stop_cond  : std_logic;
  signal l_stop_idle_cond  : std_logic;

  -- Next state transition signals --
  signal l_idle_start_trans : std_logic;
  signal l_start_data_trans : std_logic;
  signal l_data_stop_trans  : std_logic;
  signal l_stop_idle_trans  : std_logic;

  -- Counter comparison signals --
  signal l_sc_cnt_ge_7  : std_logic;    -- Sample count greater or equal than 7
  signal l_sc_cnt_ge_15 : std_logic;  -- Sample count greater or equal than 15
  signal l_sc_cnt_ge_19 : std_logic;  -- Sample count greater or equal than 19
  signal l_sc_cnt_ge_31 : std_logic;  -- Sample count greater or equal than 31

  signal l_center_of_next_bit  : std_logic;
  signal l_center_of_start_bit : std_logic;
  signal l_center_of_stop_bit  : std_logic;
  signal l_stop_comp_src       : std_logic;
  signal l_sample_rx           : std_logic;  -- High when Rx line should be sampled.

  signal l_last_dbit : std_logic;
  
begin  -- architecture behaviour

  -- purpose: Clocks in next state
  -- type   : sequential
  -- inputs : clk_i, rst_i, l_state_next
  -- outputs: l_state_reg
  state_reg_proc : process (clk_i, rst_i) is
  begin  -- process state_reg_proc
    if rst_i = '1' then                     -- asynchronous reset (active high)
      l_state <= IDLE_S;
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      l_state <= l_state_next;
    end if;
  end process state_reg_proc;

  -- purpose: Logic for next state
  -- type   : combinational
  -- inputs : 
  -- outputs: l_state_next
  next_state_proc : process (l_data_stop_cond, l_idle_start_cond,
                             l_start_data_cond, l_state, l_stop_idle_cond) is
  begin  -- process next_state_proc
    case l_state is
      when IDLE_S =>
        if l_idle_start_cond = '1' then
          l_state_next <= START_S;
        else
          l_state_next <= IDLE_S;
        end if;
      when START_S =>
        if l_start_data_cond = '1' then
          l_state_next <= DATA_S;
        else
          l_state_next <= START_S;
        end if;
      when DATA_S =>
        if l_data_stop_cond = '1' then
          l_state_next <= STOP_S;
        else
          l_state_next <= DATA_S;
        end if;
      when STOP_S =>
        if l_stop_idle_cond = '1' then
          l_state_next <= IDLE_S;
        else
          l_state_next <= STOP_S;
        end if;
    end case;
  end process next_state_proc;

  with stop_bits_num_i select
    l_stop_comp_src <=
    l_sc_cnt_ge_15 when "00",
    l_sc_cnt_ge_19 when "01",
    l_sc_cnt_ge_31 when others;

  l_center_of_start_bit <= sample_tick_i and l_sc_cnt_ge_7;
  l_center_of_next_bit  <= sample_tick_i and l_sc_cnt_ge_15;
  l_center_of_stop_bit  <= sample_tick_i and l_stop_comp_src;

                                        -- Next state conditions signals --
  l_idle_start_cond <= sample_tick_i and (not rx_i);
  l_start_data_cond <= l_center_of_start_bit;
  l_data_stop_cond  <= l_center_of_next_bit and r_last_bit_i;
  l_stop_idle_cond  <= l_center_of_stop_bit;

                                        -- Next state transition signals --
  l_idle_start_trans <= '1' when l_idle_start_cond = '1' and l_state = IDLE_S  else '0';
  l_start_data_trans <= '1' when l_start_data_cond = '1' and l_state = START_S else '0';
  l_data_stop_trans  <= '1' when l_data_stop_cond = '1' and l_state = DATA_S   else '0';
  l_stop_idle_trans  <= '1' when l_stop_idle_cond = '1' and l_state = STOP_S   else '0';

                                        -- Counter comparisons --
  l_sc_cnt_ge_7  <= '1' when sc_cnt_i >= 7  else '0';
  l_sc_cnt_ge_15 <= '1' when sc_cnt_i >= 15 else '0';
  l_sc_cnt_ge_19 <= '1' when sc_cnt_i >= 19 else '0';
  l_sc_cnt_ge_31 <= '1' when sc_cnt_i >= 31 else '0';

                                        -- Rx sample control signal --
  l_sample_rx <= '1' when l_center_of_next_bit = '1' and l_state = DATA_S else '0';

                                          -- Sample counter control signals --
  sc_cnt_en_o <= '1' when sample_tick_i = '1' and l_state /= IDLE_S else '0';
  sc_load_o   <= '1' when
                 l_sample_rx = '1' or
                 l_idle_start_trans = '1' or
                 l_start_data_trans = '1' or
                 l_data_stop_trans = '1'  -- or
                 --l_stop_idle_trans = '1'
                 else '0';

  r_shift_nLoad_o <= not l_start_data_trans;

  r_shift_en_o <= l_sample_rx;

  rx_done_tick_o   <= l_stop_idle_trans and rx_i;  -- RX done when stop bit was
                                                   -- received.
  frame_err_tick_o <= l_stop_idle_trans and (not rx_i);
  
end architecture behaviour;
