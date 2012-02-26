library ieee;
use ieee.std_logic_1164.all;

entity shift_reg is
  generic(N          : integer := 8;
           RESET_VAL : std_logic_vector);

  port(clk_i, rst_i   : in  std_logic;
        shift_nLoad_i : in  std_logic;
        shift_en_i    : in  std_logic;
        serial_i      : in  std_logic;
        data_i        : in  std_logic_vector(N - 1 downto 0);
        data_o        : out std_logic_vector(N - 1 downto 0));
end shift_reg;

architecture behaviour of shift_reg is

  signal reg : std_logic_vector(N - 1 downto 0);

begin

  shift_load_proc :
  process(clk_i, rst_i)
  begin
    if(rst_i = '1') then
      reg <= RESET_VAL;
    elsif(clk_i'event and clk_i = '1') then
      
      if(shift_nLoad_i = '1' and shift_en_i = '1') then
        reg      <= serial_i & reg(N - 1 downto 1);
      end if;
      if(shift_nLoad_i = '0') then
        reg <= data_i;
      end if;
      
    end if;
  end process;

  data_o <= reg;

end behaviour;

