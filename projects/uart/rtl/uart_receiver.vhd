library ieee;
use ieee.std_logic_1164.all;

entity uart_receiver is
  generic (
    N : integer := 8);  -- maximum data + parity bits to be receive
  port (
    clk_i : in std_logic;
    rst_i : in std_logic;

    rx_i          : in std_logic;
    sample_tick_i : in std_logic;       -- High when receiver should sample rx

    data_o         : out std_logic_vector(N-1 downto 0);
    rx_done_tick_o : out std_logic;

    -- Configuration inputs --
    trans_length_i : in integer range 0 to N  -- Number of data + parity bits
                                              -- to be received
    );

end uart_receiver;

architecture structure of uart_receiver is

  constant SHIFT_REG_RELOAD_VAL : std_logic_vector(N-1 downto 0) := (others => '-');

  signal f_rx : std_logic;              -- Glitch filtered rx signal

  signal sc_cnt : integer range 0 to 15;
  signal bc_cnt : integer range 0 to N;

  signal fsm_sc_cnt_en   : std_logic;
  signal fsm_sc_load     : std_logic;
  signal fsm_bc_cnt_en   : std_logic;
  signal fsm_bc_load     : std_logic;
  signal fsm_rx_shift_en : std_logic;
  
begin  -- structure

  rx_filter : entity work.schmitt_trigger_filter
    generic map (
      N         => 2,
      RESET_VAL => '0')
    port map (
      clk_i  => clk_i,
      rst_i  => rst_i,
      sig_i  => rx_i,
      fsig_o => f_rx);

  rx_shift_reg : entity work.shift_reg
    generic map (
      N         => N,
      RESET_VAL => SHIFT_REG_RELOAD_VAL)
    port map (
      clk_i         => clk_i,
      rst_i         => rst_i,
      shift_nLoad_i => '1',
      shift_en_i    => fsm_rx_shift_en,
      serial_i      => f_rx,
      data_i        => (others => '-'),
      data_o        => data_o);

  sample_counter : entity work.counter
    generic map (
      max_cnt => 15)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      cnt_en_i   => fsm_sc_cnt_en,
      load_i     => fsm_sc_load,
      load_cnt_i => 0,
      cnt_o      => sc_cnt);

  bits_counter : entity work.counter
    generic map (
      max_cnt => N)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      cnt_en_i   => fsm_bc_cnt_en,
      load_i     => fsm_bc_load,
      load_cnt_i => 0,
      cnt_o      => bc_cnt);

  uart_receiver_fsm_1 : entity work.uart_receiver_fsm
    generic map (
      N => N)
    port map (
      clk_i          => clk_i,
      rst_i          => rst_i,
      rx_i           => f_rx,
      sample_tick_i  => sample_tick_i,
      sc_cnt_i       => sc_cnt,
      bc_cnt_i       => bc_cnt,
      trans_length_i => trans_length_i,
      sc_cnt_en_o    => fsm_sc_cnt_en,
      sc_load_o      => fsm_sc_load,
      bc_cnt_en_o    => fsm_bc_cnt_en,
      bc_load_o      => fsm_bc_load,
      rx_shift_en_o  => fsm_rx_shift_en,
      rx_done_tick_o => rx_done_tick_o);

end structure;
