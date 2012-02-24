library ieee;
use ieee.std_logic_1164.all;

entity uart_receiver is
  generic (
    N : integer := 8);  -- maximum data + parity bits to be receive
  port (
    clk_i          : in  std_logic;
    rst_i          : in  std_logic;
    rx_i           : in  std_logic;
    sample_tick_i  : in  std_logic;     -- High when receiver should sample rx
    bits_cnt_i     : in  integer range 0 to N;  -- Number of data + parity bits
                                                -- to be received
    data_o         : out std_logic_vector(N downto 0);
    rx_done_tick_o : out std_logic);

end uart_receiver;

architecture behaviour of uart_receiver is

  type STATE is (IDLE_S, START_S, DATA_S, STOP_S);
  constant SHIFT_REG_RELOAD_VAL : std_logic_vector(N-1 downto 0) := (others => '-');

  -- State signals
  signal l_state_reg  : STATE;
  signal l_state_next : STATE;

  -- Decoded state signals --
  signal l_state_idle  : std_logic;
  signal l_state_start : std_logic;
  signal l_state_data  : std_logic;
  signal l_state_stop  : std_logic;

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

  -- Counters signals
  signal l_sc_cnt_en   : std_logic;
  signal l_sc_load     : std_logic;
  signal l_sc_load_cnt : integer range 0 to 15;
  signal sc_cnt        : integer range 0 to 15;
  signal l_bc_cnt_en   : std_logic;
  signal l_bc_load     : std_logic;
  signal l_bc_load_cnt : integer range 0 to N;
  signal bc_cnt        : integer range 0 to N;

  -- Counter comparison signals --
  signal l_sc_cnt_ge_7        : std_logic;  -- Sample count greater or equal than 7
  signal l_sc_cnt_ge_15       : std_logic;  -- Sample count greater or equal than 15
  signal l_bc_cnt_eq_b_cnt_in : std_logic;  -- Bits counter equal to the number
                                            -- of bits expected in transmision.

  signal l_sample_rx : std_logic;       -- High when rx needs to be sampled
                                        -- in data state.
  signal f_rx        : std_logic;       -- Glitch filtered rx signal
  signal s_data : std_logic_vector(N-1 downto 0);  -- Receive shift register output.
  
begin  -- behaviour

  rx_filter : entity work.schmitt_trigger_filter
    generic map (
      N         => 2,
      RESET_VAL => '0')
    port map (
      clk_i  => clk_i,
      rst_i  => rst_i,
      sig_i  => rx_i,
      fsig_o => f_rx);

  rx_shift_reg: entity work.shift_reg
    generic map (
      N         => N,
      RESET_VAL => SHIFT_REG_RELOAD_VAL)
    port map (
      clk_i         => clk_i,
      rst_i         => rst_i,
      shift_nLoad_i => '1',
      shift_en_i    => l_sample_rx,
      serial_i      => f_rx,
      data_i        => (others => '-'),
      data_o        => s_data);

  sample_counter : entity work.counter
    generic map (
      max_cnt => 15)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      cnt_en_i   => l_sc_cnt_en,
      load_i     => l_sc_load,
      load_cnt_i => l_sc_load_cnt,
      cnt_o      => sc_cnt);

  bits_counter : entity work.counter
    generic map (
      max_cnt => N)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      cnt_en_i   => l_bc_cnt_en,
      load_i     => l_bc_load,
      load_cnt_i => l_bc_load_cnt,
      cnt_o      => bc_cnt);

  -- purpose: Clocks in next state
  -- type   : sequential
  -- inputs : clk_i, rst_i, l_state_next
  -- outputs: l_state_reg
  state_reg_proc : process (clk_i, rst_i) is
  begin  -- process state_reg_proc
    if rst_i = '0' then                     -- asynchronous reset (active low)
      l_state_reg <= IDLE_S;
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      l_state_reg <= l_state_next;
    end if;
  end process state_reg_proc;

  -- purpose: Logic for next state
  -- type   : combinational
  -- inputs : sample_tick_i, f_rx
  -- outputs: l_state_next
  next_state_proc : process (f_rx, l_state_reg, sample_tick_i, sc_cnt) is
  begin  -- process next_state_proc
    
    if l_state_idle = '1' then

    end if;
    
  end process next_state_proc;

  -- Counter comparisons --
  l_sc_cnt_ge_7        <= '1' when sc_cnt >= 7          else '0';
  l_sc_cnt_ge_15       <= '1' when sc_cnt >= 15         else '0';
  l_bc_cnt_eq_b_cnt_in <= '1' when bc_cnt >= bits_cnt_i else '0';

  -- Decode state register --
  l_state_idle  <= '1' when l_state_reg = IDLE_S  else '0';
  l_state_start <= '1' when l_state_reg = START_S else '0';
  l_state_data  <= '1' when l_state_reg = DATA_S  else '0';
  l_state_stop  <= '1' when l_state_reg = STOP_S  else '0';

  -- Next state conditions signals --
  l_idle_start_cond <= sample_tick_i and (not f_rx);
  l_start_data_cond <= l_sc_cnt_ge_7;
  l_data_stop_cond  <= l_bc_cnt_eq_b_cnt_in;
  l_stop_idle_cond  <= l_sc_cnt_ge_15;

  -- State transitions signals --
  l_idle_start_trans <= l_idle_start_cond and l_state_idle;
  l_start_data_trans <= l_start_data_cond and l_state_start;
  l_data_stop_trans  <= l_data_stop_cond and l_state_data;
  l_stop_idle_trans  <= l_stop_idle_cond and l_state_stop;

  -- Sample control signal --
  l_sample_rx <= l_sc_cnt_ge_15 and l_state_data;

  -- Sample counter control signals --
  l_sc_cnt_en <= sample_tick_i and (not l_state_idle);
  l_sc_load   <= l_sample_rx or l_idle_start_trans or
                 l_start_data_trans or l_data_stop_trans;
  l_sc_load_cnt <= 0;

  -- Bits counter control signals --
  l_bc_cnt_en   <= l_sample_rx;
  l_bc_load     <= l_start_data_trans;
  l_bc_load_cnt <= 0;

end behaviour;
