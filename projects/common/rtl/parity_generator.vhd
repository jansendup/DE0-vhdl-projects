library ieee;
use ieee.std_logic_1164.all;

entity parity_generator is
  
  generic (
    N : natural);

  port (
    din_i    : in  std_logic_vector(N-1 downto 0);
    parity_o : out std_logic);

end entity parity_generator;

architecture behaviour of parity_generator is

  signal xor_outputs : std_logic_vector(N-2 downto 0);
  
begin  -- architecture behaviour

  xor_outputs(0) <= din_i(0) xor din_i(1);
  xor_loop : for i in 1 to N-2 generate
    xor_outputs(i) <= xor_outputs(i - 1) xor din_i(i + 1);
  end generate xor_loop;

  parity_o <= xor_outputs(N-2);

end architecture behaviour;
