library ieee;
use ieee.std_logic_1164.all;
entity seg7_decoder is
  
  port (
    data_i : in  std_logic_vector(3 downto 0);
    data_o : out std_logic_vector(6 downto 0));

end entity seg7_decoder;

architecture behaviour of seg7_decoder is

begin  -- architecture behaviour

  with data_i select
    data_o <=
    "0111111" when x"0",
    "0000110 when x"0",
    "1011011" when x"2",
    "1001111" when x"3",
    "1100110" when x"4",
    "1101101" when x"5",
    "1111101" when x"6",
    "0000111" when x"7",
    "1111111" when x"8",
    "1101111" when x"9",
    "1110111" when x"A",
    "1111100" when x"B",
    "0111001" when x"C",
    "1011110" when x"D",
    "1111001" when x"E",
    "1110001" when others;

end architecture behaviour;
