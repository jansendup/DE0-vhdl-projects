library ieee;
use ieee.std_logic_1164.all;

entity baud_rate_generator is
  generic (
    MAX_CYCLES_PER_TICK : integer);
  port (
    clk_i             : in  std_logic;
    rst_i             : in  std_logic;
    en_i              : in  std_logic;
    cycles_per_tick_i : in  integer range 0 to MAX_CYCLES_PER_TICK;
    tick_o            : out std_logic);

end entity baud_rate_generator;

architecture structure of baud_rate_generator is

  signal l_reload : std_logic;
  signal c_count  : integer range 0 to MAX_CYCLES_PER_TICK;
  
begin  -- architecture structure

  cycles_counter : entity work.counter
    generic map (
      max_cnt => MAX_CYCLES_PER_TICK)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      cnt_en_i   => en_i,
      load_i     => l_reload,
      load_cnt_i => 0,
      cnt_o      => c_count);

  l_reload <= '1' when c_count = cycles_per_tick_i else '0';
  tick_o   <= l_reload;

end architecture structure;
