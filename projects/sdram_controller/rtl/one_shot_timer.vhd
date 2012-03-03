library ieee;
use ieee.std_logic_1164.all;

entity one_shot_timer is
  
  generic (
    N : natuaral);

  port (
    clk_i      : in  std_logic;
    rst_i      : in  std_logic;
    sync_rst_i : in  std_logic;
    done_o     : out std_logic);

end entity one_shot_timer;

architecture behaviour of one_shot_timer is

  signal tm_sreg : std_logic_vector(N-2 downto 0);

begin  -- architecture behaviour

  shift_proc : process (clk_i, rst_i) is
  begin  -- process shift_proc
    if rst_i = '1' then                     -- asynchronous reset (active high)
      tm_sreg <= (others => '0');
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      if sync_rst_i = '1' then
        tm_sreg <= (others => '0');
      elsif tm_sreg(0) = '0' then
        if N >= 3 then
          tm_sreg <= '1' & tm_sreg(N-2 downto 1);
        else
          tm_sreg <= '1';
        end if;
      end if;
    end if;
  end process shift_proc;

  done_o <= tm_sreg(0);

end architecture behaviour;
