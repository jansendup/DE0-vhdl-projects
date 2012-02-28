library ieee;
use ieee.std_logic_1164.all;

entity uart_transmitter is
  
  port (
    clk_i         : in std_logic;
    rst_i         : in std_logic;
    sample_tick_i : in std_logic;

    data_i         : in  std_logic_vector(7 downto 0);
    tx_start_i     : in  std_logic;
    tx_done_tick_o : out std_logic;
    tx_idle_o      : out std_logic;
    tx_o           : out std_logic;

    -- Configuration inputs --
    par_en_i        : in std_logic;
    par_odd_nEven_i : in std_logic;
    stop_bits_num_i : in std_logic_vector(1 downto 0)
    );

end entity uart_transmitter;

architecture structure of uart_transmitter is

  signal sc_cnt_en : std_logic;
  signal sc_load   : std_logic;
  signal sc_cnt    : integer range 0 to 31;

  signal bc_cnt_en : std_logic;
  signal bc_load   : std_logic;
  signal bc_cnt    : integer range 0 to 9;

  signal t_data_out : std_logic_vector(8 downto 0);
  signal t_data_in  : std_logic_vector(8 downto 0);

  signal pg_parity : std_logic;

  signal fsm_shift_nLoad : std_logic;
  signal fsm_shift_en    : std_logic;
  
begin  -- architecture structure

  sample_ticks_counter : entity work.counter
    generic map (
      max_cnt => 31,
      rst_val => 0)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      cnt_en_i   => sc_cnt_en,
      load_i     => sc_load,
      load_cnt_i => 0,
      cnt_o      => sc_cnt);

  bits_counter : entity work.counter
    generic map (
      max_cnt => 9,
      rst_val => 0)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      cnt_en_i   => bc_cnt_en,
      load_i     => bc_load,
      load_cnt_i => 0,
      cnt_o      => bc_cnt);

  t_shift_reg : entity work.shift_reg
    generic map (
      N         => 9,
      RESET_VAL => "000000000")
    port map (
      clk_i         => clk_i,
      rst_i         => rst_i,
      shift_nLoad_i => fsm_shift_nLoad,
      shift_en_i    => fsm_shift_en,
      serial_i      => '-',
      data_i        => t_data_in,
      data_o        => t_data_out);

  parity_generator_1 : entity work.parity_generator
    generic map (
      N => 8)
    port map (
      din_i    => data_i,
      parity_o => pg_parity);

  uart_transmitter_fsm_1 : entity work.uart_transmitter_fsm
    port map (
      clk_i           => clk_i,
      rst_i           => rst_i,
      sample_tick_i   => sample_tick_i,
      tx_start_i      => tx_start_i,
      t_bit_o         => t_data_out(0),
      tx_o            => tx_o,
      tx_done_tick_o  => tx_done_tick_o,
      tx_idle_o       => tx_idle_o,
      shift_nLoad_o   => fsm_shift_nLoad,
      shift_en_o      => fsm_shift_en,
      sc_cnt_i        => sc_cnt,
      bc_cnt_i        => bc_cnt,
      sc_cnt_en_o     => sc_cnt_en,
      bc_cnt_en_o     => bc_cnt_en,
      sc_load_o       => sc_load,
      bc_load_o       => bc_load,
      par_en_i        => par_en_i,
      par_odd_nEven_i => par_odd_nEven_i,
      stop_bits_num_i => stop_bits_num_i);

  t_data_in <= (pg_parity xor par_odd_nEven_i) & data_i;

end architecture structure;
