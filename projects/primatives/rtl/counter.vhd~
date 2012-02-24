library ieee;
use ieee.std_logic_1164.all;

entity counter is
  
  generic (
    max_cnt : integer);                 -- max value of counter

  port (
    clk_i      : in  std_logic;
    rst_i      : in  std_logic;
    cnt_en_i   : in  std_logic;
    load_i     : in  std_logic;
    load_cnt_i : in  integer range 0 to max_cnt;
    cnt_o      : out integer range 0 to max_cnt);

end entity counter;

architecture behaviour of counter is

  signal l_cnt      : integer range 0 to max_cnt;
  signal l_cnt_next : integer range 0 to max_cnt;
  signal l_ld_cnt   : std_logic_vector(1 downto 0);  -- Temp signal for select statement
  
begin  -- architecture behaviour

  -- purpose: Increment, reset and load counter
  -- type   : sequential
  -- inputs : clk_i, rst_i, l_cnt_next
  -- outputs: l_cnt
  count_proc : process (clk_i, rst_i) is
  begin  -- process count_proc
    if rst_i = '1' then                     -- asynchronous reset (active high)
      l_cnt <= 0;
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      l_cnt <= l_cnt_next;
    end if;
  end process count_proc;

  l_ld_cnt <= cnt_en_i & load_i;
  with l_ld_cnt select
    l_cnt_next <=
    l_cnt      when "00",
    load_cnt_i when "01",
    l_cnt + 1  when "10",
    load_cnt_i when others;

  cnt_o <= l_cnt;

end architecture behaviour;
