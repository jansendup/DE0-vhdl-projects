library ieee;
use ieee.std_logic_1164.all;

entity uart_de0 is
  port
    (
      FL_BYTE_N      : in  std_logic;
      FL_CE_N        : in  std_logic;
      FL_OE_N        : in  std_logic;
      FL_RST_N       : in  std_logic;
      FL_RY          : in  std_logic;
      FL_WE_N        : in  std_logic;
      FL_WP_N        : in  std_logic;
      FL_DQ15_AM1    : in  std_logic;
      GPIO_CLKIN_N0  : in  std_logic;
      GPIO_CLKIN_P0  : in  std_logic;
      GPIO_CLKOUT_N0 : in  std_logic;
      GPIO_CLKOUT_P0 : in  std_logic;
      GPIO_CLKIN_P1  : in  std_logic;
      GPIO_CLKIN_N1  : in  std_logic;
      GPIO_CLKOUT_P1 : in  std_logic;
      GPIO_CLKOUT_N1 : in  std_logic;
      PS2_KBCLK      : in  std_logic;
      PS2_KBDAT      : in  std_logic;
      PS2_MSCLK      : in  std_logic;
      PS2_MSDAT      : in  std_logic;
      UART_RXD       : in  std_logic;
      UART_TXD       : out std_logic;
      UART_RTS       : in  std_logic;
      UART_CTS       : in  std_logic;
      SD_CLK         : in  std_logic;
      SD_CMD         : in  std_logic;
      SD_DAT0        : in  std_logic;
      SD_DAT3        : in  std_logic;
      SD_WP_N        : in  std_logic;
      LCD_RW         : in  std_logic;
      LCD_RS         : in  std_logic;
      LCD_EN         : in  std_logic;
      LCD_BLON       : in  std_logic;
      VGA_HS         : in  std_logic;
      VGA_VS         : in  std_logic;
      CLOCK_50       : in  std_logic;
      DRAM_CAS_N     : in  std_logic;
      DRAM_CS_N      : in  std_logic;
      DRAM_CLK       : in  std_logic;
      DRAM_CKE       : in  std_logic;
      DRAM_LDQM      : in  std_logic;
      DRAM_UDQM      : in  std_logic;
      DRAM_RAS_N     : in  std_logic;
      DRAM_WE_N      : in  std_logic;
      CLOCK_50_2     : in  std_logic;
      LEDG           : out std_logic_vector(9 downto 0);
      SW             : in  std_logic_vector(9 downto 0);
      KEY            : in  std_logic_vector(2 downto 0);
      FL_ADDR        : in  std_logic_vector(21 downto 0);
      FL_DQ          : in  std_logic_vector(14 downto 0);
      GPIO_0         : in  std_logic_vector(31 downto 0);
      GPIO_1         : in  std_logic_vector(31 downto 0);
      LCD_DATA       : in  std_logic_vector(7 downto 0);
      VGA_G          : in  std_logic_vector(3 downto 0);
      VGA_R          : in  std_logic_vector(3 downto 0);
      VGA_B          : in  std_logic_vector(3 downto 0);
      HEX0           : in  std_logic_vector(7 downto 0);
      HEX1           : in  std_logic_vector(7 downto 0);
      HEX2           : in  std_logic_vector(7 downto 0);
      HEX3           : in  std_logic_vector(7 downto 0);
      DRAM_BA        : in  std_logic_vector(1 downto 0);
      DRAM_DQ        : in  std_logic_vector(15 downto 0);
      DRAM_ADDR      : in  std_logic_vector(12 downto 0)
      );

end uart_de0;

architecture structure of uart_de0 is

  signal rst         : std_logic;
  signal err_ind_rst : std_logic;

  signal rx_data         : std_logic_vector(7 downto 0);
  signal rx_done_tick    : std_logic;
  signal frame_err_tick  : std_logic;
  signal parity_err_tick : std_logic;

  signal tx_done_tick : std_logic;
  
begin

  uart_1 : entity work.uart
    generic map (
      MAX_CYCLES_PER_TICK => 255)
    port map (
      clk_i           => CLOCK_50,
      rst_i           => rst,
      en_i            => '1',
      rx_i            => UART_RXD,
      rx_done_tick_o  => rx_done_tick,
      rx_data_o       => rx_data,
      tx_o            => UART_TXD,
      tx_done_tick_o  => tx_done_tick,
      tx_start_tick_i => '0',
      tx_data_i       => x"00",

      rx_frame_err_tick_o => frame_err_tick,
      rx_par_err_tick_o   => parity_err_tick,

      par_en_i        => SW(3),
      par_odd_nEven_i => SW(2),
      stop_bits_num_i => SW(1 downto 0),

      cycles_per_tick_i => 80);

  reset_control_1 : entity work.reset_control
    port map (
      clk_i => CLOCK_50,
      rst_o => rst);

  error_indicator_1 : entity work.error_indicator
    port map (
      clk_i             => CLOCK_50,
      rst_i             => err_ind_rst,
      frame_err_tick_i  => frame_err_tick,
      parity_err_tick_i => parity_err_tick,
      frame_err_led_o   => LEDG(8),
      parity_err_led_o  => LEDG(9));

  err_ind_rst      <= rst or (not KEY(0));
  LEDG(7 downto 0) <= rx_data;

end;

library ieee;
use ieee.std_logic_1164.all;
entity reset_control is
  port (
    clk_i : in  std_logic;
    rst_o : out std_logic);
end entity reset_control;

architecture behaviour of reset_control is
  signal count : integer range 0 to 127 := 0;
begin  -- architecture behaviour

  reset_count_proc : process (clk_i)
  begin
    if clk_i'event and clk_i = '1' then
      if count < 127 then
        count <= count + 1;
      end if;
    end if;
  end process reset_count_proc;

  rst_o <= '1' when count < 127 else '0';
  
end architecture behaviour;

library ieee;
use ieee.std_logic_1164.all;
entity error_indicator is
  
  port (
    clk_i : in std_logic;
    rst_i : in std_logic;

    frame_err_tick_i  : in std_logic;
    parity_err_tick_i : in std_logic;

    frame_err_led_o  : out std_logic;
    parity_err_led_o : out std_logic);

end entity error_indicator;

architecture behaviour of error_indicator is

  signal l_flash      : std_logic;
  signal l_frame_err  : std_logic;
  signal l_parity_err : std_logic;

  signal l_flash_counter : integer range 0 to 12500000;
  
begin  -- architecture behaviour

  catch_ticks_proc : process (clk_i, rst_i) is
  begin  -- process catch_ticks_proc
    if rst_i = '1' then                     -- asynchronous reset (active high)
      l_frame_err  <= '0';
      l_parity_err <= '0';
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      if frame_err_tick_i = '1' then
        l_frame_err <= '1';
      end if;
      if parity_err_tick_i = '1' then
        l_parity_err <= '1';
      end if;
    end if;
  end process catch_ticks_proc;

  flash_proc : process (clk_i, rst_i) is
  begin  -- process flash_proc
    if rst_i = '1' then                     -- asynchronous reset (active high)
      l_flash <= '1';
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      l_flash_counter <= l_flash_counter + 1;
      if l_flash_counter >= 12500000 then
        l_flash_counter <= 0;
        l_flash         <= not l_flash;
      end if;
    end if;
  end process flash_proc;

  frame_err_led_o  <= l_frame_err and l_flash;
  parity_err_led_o <= l_parity_err and l_flash;

end architecture behaviour;
