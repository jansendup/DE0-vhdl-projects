library ieee;
use ieee.std_logic_1164.all;

entity schmitt_trigger_filter is
    generic(N : integer := 4;
            RESET_VAL : std_logic := '0');
    port(clk_i, rst_i : in std_logic;
         sig_i  : in std_logic;
         fsig_o : out std_logic);
end schmitt_trigger_filter;

architecture behaviour of schmitt_trigger_filter is

constant ONES  : std_logic_vector(0 to (N-1)) := (others=>'1');
constant ZEROS : std_logic_vector(0 to (N-1)) := (others=>'0');

signal l_sreg      : std_logic_vector(0 to (N-1));
signal l_sreg_next : std_logic_vector(0 to (N-1));
signal l_fsig_reg      : std_logic;
signal l_fsig_reg_next : std_logic;
begin

filter_proc:
process(clk_i, rst_i)
begin
    if(rst_i = '1') then
        l_fsig_reg <= RESET_VAL;
        l_sreg <= (others=>RESET_VAL);
    elsif(clk_i'event and clk_i = '1') then
         l_sreg <= l_sreg_next;
         l_fsig_reg <= l_fsig_reg_next;
    end if;
end process;

l_sreg_next <= sig_i & l_sreg(0 to (N-2));

l_fsig_reg_next <= '1' when l_sreg = ONES else
                   '0' when l_sreg = ZEROS else
                    l_fsig_reg;

fsig_o <= l_fsig_reg;

end behaviour;
