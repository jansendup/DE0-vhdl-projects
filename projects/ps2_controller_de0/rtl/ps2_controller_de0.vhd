
library ieee;
use ieee.std_logic_1164.all;

entity ps2_controller_de0 is
   port
   (
      FL_BYTE_N : in std_logic;
      FL_CE_N : in std_logic;
      FL_OE_N : in std_logic;
      FL_RST_N : in std_logic;
      FL_RY : in std_logic;
      FL_WE_N : in std_logic;
      FL_WP_N : in std_logic;
      FL_DQ15_AM1 : in std_logic;
      GPIO_CLKIN_N0 : in std_logic;
      GPIO_CLKIN_P0 : in std_logic;
      GPIO_CLKOUT_N0 : in std_logic;
      GPIO_CLKOUT_P0 : in std_logic;
      GPIO_CLKIN_P1 : in std_logic;
      GPIO_CLKIN_N1 : in std_logic;
      GPIO_CLKOUT_P1 : in std_logic;
      GPIO_CLKOUT_N1 : in std_logic;
      PS2_KBCLK : inout std_logic;
      PS2_KBDAT : inout std_logic;
      PS2_MSCLK : inout std_logic;
      PS2_MSDAT : inout std_logic;
      UART_RXD : in std_logic;
      UART_TXD : in std_logic;
      UART_RTS : in std_logic;
      UART_CTS : in std_logic;
      SD_CLK : in std_logic;
      SD_CMD : in std_logic;
      SD_DAT0 : in std_logic;
      SD_DAT3 : in std_logic;
      SD_WP_N : in std_logic;
      LCD_RW : in std_logic;
      LCD_RS : in std_logic;
      LCD_EN : in std_logic;
      LCD_BLON : in std_logic;
      VGA_HS : in std_logic;
      VGA_VS : in std_logic;
      CLOCK_50 : in std_logic;
      DRAM_CAS_N : in std_logic;
      DRAM_CS_N : in std_logic;
      DRAM_CLK : in std_logic;
      DRAM_CKE : in std_logic;
      DRAM_LDQM : in std_logic;
      DRAM_UDQM : in std_logic;
      DRAM_RAS_N : in std_logic;
      DRAM_WE_N : in std_logic;
      CLOCK_50_2 : in std_logic;
      LEDG : out std_logic_vector(0 to 9);
      SW : in std_logic_vector(0 to 9);
      KEY : in std_logic_vector(0 to 2);
      FL_ADDR : in std_logic_vector(0 to 21);
      FL_DQ : in std_logic_vector(0 to 14);
      GPIO_0 : in std_logic_vector(0 to 31);
      GPIO_1 : in std_logic_vector(0 to 31);
      LCD_DATA : in std_logic_vector(0 to 7);
      VGA_G : in std_logic_vector(0 to 3);
      VGA_R : in std_logic_vector(0 to 3);
      VGA_B : in std_logic_vector(0 to 3);
      HEX0 : in std_logic_vector(0 to 7);
      HEX1 : in std_logic_vector(0 to 7);
      HEX2 : in std_logic_vector(0 to 7);
      HEX3 : in std_logic_vector(0 to 7);
      DRAM_BA : in std_logic_vector(0 to 1);
      DRAM_DQ : in std_logic_vector(0 to 15);
      DRAM_ADDR : in std_logic_vector(0 to 12)
   );

end ps2_controller_de0;

architecture structure of ps2_controller_de0 is

component ps2_controller is
    port( clk_i, reset_i :in std_logic;
          ps2_clk_io, ps2_data_io: inout std_logic;
          rx_en_i: in std_logic;
          rx_buf_full_o, rx_parity_err_o: out std_logic;
          rx_buf_o: out std_logic_vector(7 downto 0)--;
          --leds_o: out std_logic_vector(0 to 3));
          );
end component;

signal counter : integer range 0 to 104 := 0;
signal counter2 : integer range 0 to 12500000 := 0;
signal ps2_cntrl_clk : std_logic := '0';
signal ps2_reset : std_logic := '1';
signal ps2_buf_full, ps2_parity_err : std_logic;
signal ps2_buf : std_logic_vector(7 downto 0);
signal flash_led : std_logic := '0';
begin

process(CLOCK_50)
begin
    if(CLOCK_50'event and CLOCK_50 = '1') then
        counter <= counter + 1;
        counter2 <= counter2 + 1;
        if(counter >= 104) then
            ps2_cntrl_clk <= NOT ps2_cntrl_clk;
            counter <= 0;
        end if;
        if(counter2 >= 12500000) then
            flash_led <= NOT flash_led;
            counter2 <= 0;
        end if;
    end if;
end process;

process(ps2_cntrl_clk)
begin
    if(ps2_cntrl_clk'event and ps2_cntrl_clk = '1') then
        if(ps2_reset = '1') then
            ps2_reset <= '0';
        end if;
    end if;
end process;

ps2_cntrl : ps2_controller
    port map(clk_i => ps2_cntrl_clk, reset_i => ps2_reset,
             ps2_clk_io => PS2_KBCLK, ps2_data_io => PS2_KBDAT,
             rx_en_i => '1',
             rx_buf_full_o => ps2_buf_full, rx_parity_err_o => ps2_parity_err,
             rx_buf_o => ps2_buf);--,
             --leds_o => LEDG(0 to 3));
             
LEDG(0 to 7) <= ps2_buf(7 downto 0);
LEDG(9) <= ps2_buf_full;
LEDG(8) <= ps2_parity_err;
PS2_MSCLK <= 'Z';
PS2_MSDAT <= 'Z';
end;
