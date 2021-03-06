library ieee;
use ieee.std_logic_1164.all;

package primatives_pkg is
   component shift_reg is
      generic( N : integer := 8;
               RESET_VAL : std_logic_vector);
              
      port( clk_i, rst_i : in std_logic;
            shift_nLoad_i : in std_logic;
            shift_en_i : in  std_logic;
            serial_i : in  std_logic;
            serial_o : out std_logic;
            data_i : in  std_logic_vector(N - 1 downto 0);
            data_o : out std_logic_vector(N - 1 downto 0));
   end component;

   component schmitt_trigger_filter is
    generic(N : integer := 4;
            RESET_VAL : std_logic := '0');
    port(clk_i, rst_i : in std_logic;
         sig_i  : in std_logic;
         fsig_o : out std_logic);
    end component;

   component counter is
     generic (
       max_cnt : integer);
     port (
       clk_i      : in  std_logic;
       rst_i      : in  std_logic;
       cnt_en_i   : in  std_logic;
       load_i     : in  std_logic;
       load_cnt_i : in  integer range 0 to max_cnt;
       cnt_o      : out integer range 0 to max_cnt);
   end component counter;

end package;
