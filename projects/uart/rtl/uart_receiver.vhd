library ieee;
use ieee.std_logic_1164.all;

entity uart_receiver is
  port (
    clk_i : in std_logic;
    rst_i : in std_logic;

    rx_i          : in std_logic;
    sample_tick_i : in std_logic;       -- High when receiver should sample rx

    data_o         : out std_logic_vector(7 downto 0);
    rx_done_tick_o : out std_logic;

    -- Error signal ticks --
    frame_err_tick_o  : out std_logic;
    parity_err_tick_o : out std_logic;

    -- Configuration inputs --
    par_en_i        : in std_logic;
    par_odd_nEven_i : in std_logic;
    stop_bits_num_i : in std_logic_vector(1 downto 0)
    );

end uart_receiver;

architecture structure of uart_receiver is

  signal f_rx : std_logic;              -- Glitch filtered rx signal

  signal r_serial_in : std_logic;
  signal r_reg_load  : std_logic_vector(7 downto 0);

  signal r_data : std_logic_vector(7 downto 0);
  signal p_data : std_logic_vector(0 downto 0);

  signal sc_cnt : integer range 0 to 31;

  signal l_parity : std_logic;

  signal fsm_sc_cnt_en      : std_logic;
  signal fsm_sc_load        : std_logic;
  signal fsm_r_shift_en     : std_logic;
  signal fsm_r_shift_nLoad  : std_logic;
  signal rx_done_tick       : std_logic;
  signal fsm_frame_err_tick : std_logic;
  
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

  p_shift_reg : entity work.shift_reg
    generic map (
      N         => 1,
      RESET_VAL => "1")
    port map (
      clk_i         => clk_i,
      rst_i         => rst_i,
      shift_nLoad_i => fsm_r_shift_nLoad,
      shift_en_i    => fsm_r_shift_en,
      serial_i      => f_rx,
      data_i        => "1",
      data_o        => p_data);

  r_shift_reg : entity work.shift_reg
    generic map (
      N         => 8,
      RESET_VAL => "00000000")
    port map (
      clk_i         => clk_i,
      rst_i         => rst_i,
      shift_nLoad_i => fsm_r_shift_nLoad,
      shift_en_i    => fsm_r_shift_en,
      serial_i      => r_serial_in,
      data_i        => r_reg_load,
      data_o        => r_data);

  sample_counter : entity work.counter
    generic map (
      max_cnt => 31)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      cnt_en_i   => fsm_sc_cnt_en,
      load_i     => fsm_sc_load,
      load_cnt_i => 0,
      cnt_o      => sc_cnt);

  uart_receiver_fsm_1 : entity work.uart_receiver_fsm
    port map (
      clk_i         => clk_i,
      rst_i         => rst_i,
      rx_i          => f_rx,
      sample_tick_i => sample_tick_i,
      sc_cnt_i      => sc_cnt,
      r_last_bit_i  => r_data(0),

      sc_cnt_en_o      => fsm_sc_cnt_en,
      sc_load_o        => fsm_sc_load,
      r_shift_nLoad_o  => fsm_r_shift_nLoad,
      r_shift_en_o     => fsm_r_shift_en,
      rx_done_tick_o   => rx_done_tick,
      frame_err_tick_o => fsm_frame_err_tick,

      stop_bits_num_i => stop_bits_num_i);

  parity_generator_1 : entity work.parity_generator
    generic map (
      N => 9)
    port map (
      din_i    => (r_data & p_data),
      parity_o => l_parity);

  parity_err_tick_o <= par_en_i and rx_done_tick and (l_parity xor par_odd_nEven_i);

  r_serial_in <= p_data(0) when par_en_i = '1' else f_rx;

  r_reg_load(7)          <= '0' when par_en_i = '1' else '1';
  r_reg_load(6 downto 0) <= (others => '0');

  rx_done_tick_o <= rx_done_tick;
  data_o         <= r_data;

end structure;
