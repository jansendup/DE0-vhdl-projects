library ieee;
use ieee.std_logic_1164.all;

entity uart is
  generic (
    MAX_CYCLES_PER_TICK : integer);
  port(clk_i : in std_logic;
       rst_i : in std_logic;
       en_i  : in std_logic;

       rx_i           : in  std_logic;
       rx_done_tick_o : out std_logic;
       rx_data_o      : out std_logic_vector(7 downto 0);

       tx_o           : out std_logic;
       tx_done_tick_o : out std_logic;
       tx_start_i     : in  std_logic;
       tx_data_i      : in  std_logic_vector(7 downto 0);

       -- Error signal ticks --
       rx_frame_err_tick_o : out std_logic;
       rx_par_err_tick_o   : out std_logic;

       -- Configuration inputs --
       par_en_i          : in std_logic;
       par_odd_nEven_i   : in std_logic;
       stop_bits_num_i   : in std_logic_vector(1 downto 0);
       cycles_per_tick_i : in integer range 0 to MAX_CYCLES_PER_TICK
       );
end uart;

architecture structure of uart is

  signal bg_tick : std_logic;

begin
  
  uart_receiver_1 : entity work.uart_receiver
    port map(
      clk_i             => clk_i,
      rst_i             => rst_i,
      rx_i              => rx_i,
      sample_tick_i     => bg_tick,
      data_o            => rx_data_o,
      rx_done_tick_o    => rx_done_tick_o,
      frame_err_tick_o  => rx_frame_err_tick_o,
      parity_err_tick_o => rx_par_err_tick_o,
      par_en_i          => par_en_i,
      par_odd_nEven_i   => par_odd_nEven_i,
      stop_bits_num_i   => stop_bits_num_i
      );

  uart_transmitter_1: entity work.uart_transmitter
    port map (
      clk_i           => clk_i,
      rst_i           => rst_i,
      sample_tick_i   => bg_tick,
      data_i          => tx_data_i,
      tx_start_i      => tx_start_i,
      tx_done_tick_o  => tx_done_tick_o,
      --tx_idle_o       => tx_idle_o,
      tx_o            => tx_o,
      par_en_i        => par_en_i,
      par_odd_nEven_i => par_odd_nEven_i,
      stop_bits_num_i => stop_bits_num_i);

  baud_rate_generator_1 : entity work.baud_rate_generator
    generic map (
      MAX_CYCLES_PER_TICK => MAX_CYCLES_PER_TICK)
    port map (
      clk_i             => clk_i,
      rst_i             => rst_i,
      en_i              => en_i,
      cycles_per_tick_i => cycles_per_tick_i,
      tick_o            => bg_tick);

end architecture;
