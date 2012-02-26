library ieee;
use ieee.std_logic_1164.all;

entity uart is
  generic (
    MAX_DATA_BITS       : integer;
    MAX_PARITY_BITS     : integer;
    MAX_CYCLES_PER_TICK : integer);
  port(clk_i : in std_logic;
       rst_i : in std_logic;
       en_i  : in std_logic;

       rx_i           : in  std_logic;
       rx_done_tick_o : out std_logic;
       rx_data_o      : out std_logic_vector(MAX_DATA_BITS + MAX_PARITY_BITS - 1 downto 0);

       tx_o            : out std_logic;
       tx_done_tick_o  : out std_logic;
       tx_start_tick_i : in  std_logic;
       tx_data_i       : in  std_logic_vector(MAX_DATA_BITS + MAX_PARITY_BITS - 1 downto 0);

       trans_length_i    : in integer range 0 to MAX_DATA_BITS + MAX_PARITY_BITS;
       cycles_per_tick_i : in integer range 0 to MAX_CYCLES_PER_TICK
       );
end uart;

architecture structure of uart is

  signal bg_tick : std_logic;

begin
  
  uart_receiver_1 : entity work.uart_receiver
    generic map(
      N => MAX_DATA_BITS + MAX_PARITY_BITS)
    port map(
      clk_i          => clk_i,
      rst_i          => rst_i,
      rx_i           => rx_i,
      sample_tick_i  => bg_tick,
      data_o         => rx_data_o,
      rx_done_tick_o => rx_done_tick_o,
      trans_length_i => trans_length_i
      );

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
