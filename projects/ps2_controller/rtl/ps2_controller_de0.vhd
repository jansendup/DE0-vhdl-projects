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
entity knight_rider_leds is
  
  generic (
    CLK_FREQ : natural;
    PERIOD   : natural;
    N        : natural;
    O        : natural                  -- Number of leds to be on
    );

  port (
    clk_i              : in  std_logic;
    rst_i              : in  std_logic;
    leds_out_o         : out std_logic_vector(N-1 downto 0);
    leds_update_tick_o : out std_logic);

end entity knight_rider_leds;

architecture behaviour of knight_rider_leds is
  constant MAX_UPDATE_COUNT : integer := (CLK_FREQ / 1000 * PERIOD / N);
  constant MAX_SHIFT_COUNT  : integer := (N - O - 1);

  signal leds_reg : std_logic_vector(N-1 downto 0);

  signal update_counter : integer range 0 to MAX_UPDATE_COUNT;
  signal update_tick    : std_logic;

  signal shift_counter : integer range 0 to MAX_SHIFT_COUNT;
  signal s_right       : std_logic;
begin  -- architecture behaviour

  leds_shift_proc : process (clk_i, rst_i) is
  begin  -- process leds_shift_proc
    if rst_i = '1' then                     -- asynchronous reset (active high)
      for i in 0 to N - 1 loop
        if i < O then
          leds_reg(i) <= '1';
        else
          leds_reg(i) <= '0';
        end if;
      end loop;  -- i
      update_counter <= 0;
      shift_counter  <= 0;
      s_right        <= '0';
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      update_counter <= update_counter + 1;
      if update_tick = '1' then
        
        update_counter <= 0;
        shift_counter  <= shift_counter + 1;
        if shift_counter >= MAX_SHIFT_COUNT then
          shift_counter <= 0;
          s_right       <= not s_right;
        end if;

        if s_right = '1' then
          leds_reg <= leds_reg(0) & leds_reg(N-1 downto 1);
        else
          leds_reg <= leds_reg(N-2 downto 0) & leds_reg(N-1);
        end if;
        
      end if;
    end if;
  end process leds_shift_proc;

  update_tick <= '1' when update_counter >= MAX_UPDATE_COUNT - 1 else '0';
  leds_out_o <= leds_reg;
  leds_update_tick_o <= update_tick;
  
end architecture behaviour;

library ieee;
use ieee.std_logic_1164.all;

entity ps2_controller_de0 is
  port
    (
      FL_BYTE_N      : in    std_logic;
      FL_CE_N        : in    std_logic;
      FL_OE_N        : in    std_logic;
      FL_RST_N       : in    std_logic;
      FL_RY          : in    std_logic;
      FL_WE_N        : in    std_logic;
      FL_WP_N        : in    std_logic;
      FL_DQ15_AM1    : in    std_logic;
      GPIO_CLKIN_N0  : in    std_logic;
      GPIO_CLKIN_P0  : in    std_logic;
      GPIO_CLKOUT_N0 : in    std_logic;
      GPIO_CLKOUT_P0 : in    std_logic;
      GPIO_CLKIN_P1  : in    std_logic;
      GPIO_CLKIN_N1  : in    std_logic;
      GPIO_CLKOUT_P1 : in    std_logic;
      GPIO_CLKOUT_N1 : in    std_logic;
      PS2_KBCLK      : inout std_logic;
      PS2_KBDAT      : inout std_logic;
      PS2_MSCLK      : in    std_logic;
      PS2_MSDAT      : in    std_logic;
      UART_RXD       : in    std_logic;
      UART_TXD       : in    std_logic;
      UART_RTS       : in    std_logic;
      UART_CTS       : in    std_logic;
      SD_CLK         : in    std_logic;
      SD_CMD         : in    std_logic;
      SD_DAT0        : in    std_logic;
      SD_DAT3        : in    std_logic;
      SD_WP_N        : in    std_logic;
      LCD_RW         : in    std_logic;
      LCD_RS         : in    std_logic;
      LCD_EN         : in    std_logic;
      LCD_BLON       : in    std_logic;
      VGA_HS         : in    std_logic;
      VGA_VS         : in    std_logic;
      CLOCK_50       : in    std_logic;
      DRAM_CAS_N     : in    std_logic;
      DRAM_CS_N      : in    std_logic;
      DRAM_CLK       : in    std_logic;
      DRAM_CKE       : in    std_logic;
      DRAM_LDQM      : in    std_logic;
      DRAM_UDQM      : in    std_logic;
      DRAM_RAS_N     : in    std_logic;
      DRAM_WE_N      : in    std_logic;
      CLOCK_50_2     : in    std_logic;
      LEDG           : out    std_logic_vector(9 downto 0);
      SW             : in    std_logic_vector(9 downto 0);
      KEY            : in    std_logic_vector(2 downto 0);
      FL_ADDR        : in    std_logic_vector(21 downto 0);
      FL_DQ          : in    std_logic_vector(14 downto 0);
      GPIO_0         : in    std_logic_vector(31 downto 0);
      GPIO_1         : in    std_logic_vector(31 downto 0);
      LCD_DATA       : in    std_logic_vector(7 downto 0);
      VGA_G          : in    std_logic_vector(3 downto 0);
      VGA_R          : in    std_logic_vector(3 downto 0);
      VGA_B          : in    std_logic_vector(3 downto 0);
      HEX0           : out   std_logic_vector(7 downto 0);
      HEX1           : out   std_logic_vector(7 downto 0);
      HEX2           : out   std_logic_vector(7 downto 0);
      HEX3           : out   std_logic_vector(7 downto 0);
      DRAM_BA        : in    std_logic_vector(1 downto 0);
      DRAM_DQ        : in    std_logic_vector(15 downto 0);
      DRAM_ADDR      : in    std_logic_vector(12 downto 0)
      );

end ps2_controller_de0;

architecture structure of ps2_controller_de0 is

  signal rst                : std_logic;
  signal kb_rx_done_tick    : std_logic;
  signal kb_parity_err_tick : std_logic;
  signal kb_data_out        : std_logic_vector(7 downto 0);
  signal kb_data_in         : std_logic_vector(7 downto 0);
  signal kb_tx_start_tick   : std_logic;
  signal kb_tx_done_tick    : std_logic;
  signal kb_tx_nack_tick    : std_logic;
  signal kb_bussy_flag      : std_logic;

  signal seg71_in : std_logic_vector(3 downto 0);
  signal seg72_in : std_logic_vector(3 downto 0);
  signal seg73_in : std_logic_vector(3 downto 0);
  signal seg74_in : std_logic_vector(3 downto 0);

  signal set_leds : std_logic;
  signal kb_leds  : std_logic_vector(2 downto 0);
  signal kb_leds_t  : std_logic_vector(2 downto 0);

  signal rx_data_reg  : std_logic_vector(7 downto 0);
  signal rx_ack_r_reg : std_logic_vector(7 downto 0);
  
begin
  kb_ps2_contr : entity work.ps2_controller
    generic map (
      CLK_FREQ => 50000000)
    port map (
      clk_i                => CLOCK_50,
      rst_i                => rst,
      ps2_clk_io           => PS2_KBCLK,
      ps2_data_io          => PS2_KBDAT,
      rx_en_i              => '1',
      rx_done_tick_o       => kb_rx_done_tick,
      rx_parity_err_tick_o => kb_parity_err_tick,
      rx_data_o            => kb_data_out,
      tx_start_tick_i      => kb_tx_start_tick,
      tx_data_i            => kb_data_in,
      tx_done_tick_o       => kb_tx_done_tick,
      tx_nack_tick_o       => kb_tx_nack_tick,
      bussy_flag_o         => kb_bussy_flag);

  reset_control_1 : entity work.reset_control
    port map (
      clk_i => CLOCK_50,
      rst_o => rst);

  seg7_decoder_1 : entity work.seg7_decoder
    port map (
      data_i => seg71_in,
      data_o => HEX0(6 downto 0));

  seg7_decoder_2 : entity work.seg7_decoder
    port map (
      data_i => seg72_in,
      data_o => HEX1(6 downto 0));
		
  seg7_decoder_3 : entity work.seg7_decoder
    port map (
      data_i => seg73_in,
      data_o => HEX2(6 downto 0));

  seg7_decoder_4 : entity work.seg7_decoder
    port map (
      data_i => seg74_in,
      data_o => HEX3(6 downto 0));

  ps2_kb_led_controller_1 : entity work.ps2_kb_led_controller
    port map (
      clk_i           => CLOCK_50,
      rst_i           => rst,
      set_leds_i      => set_leds,
      leds_i          => kb_leds,
      tx_start_tick_o => kb_tx_start_tick,
      tx_data_o       => kb_data_in,
      tx_done_tick_i  => kb_tx_done_tick,
      tx_nack_tick_i  => kb_tx_nack_tick,
      bussy_flag_i    => kb_bussy_flag);

  kb_knight_rider_leds : entity work.knight_rider_leds
    generic map (
      CLK_FREQ => 50000000,
      PERIOD   => 500,
      N        => 3,
      O        => 1)
    port map (
      clk_i              => CLOCK_50,
      rst_i              => rst,
      leds_out_o         => kb_leds_t,
      leds_update_tick_o => set_leds);
		
   sys_knight_rider_leds : entity work.knight_rider_leds
    generic map (
      CLK_FREQ => 50000000,
      PERIOD   => 500,
      N        => 10,
      O        => 4)
    port map (
      clk_i              => CLOCK_50,
      rst_i              => rst,
      leds_out_o         => LEDG);

  rx_store_proc : process (CLOCK_50, rst) is
  begin  -- process rx_store_proc
    if rst = '1' then                   -- asynchronous reset (active high)
      rx_data_reg <= x"00";
		rx_ack_r_reg <= x"00";
    elsif CLOCK_50'event and CLOCK_50 = '1' then  -- rising clock edge
      if kb_rx_done_tick = '1' then
			if(kb_data_out = x"FA") then
				rx_ack_r_reg <= kb_data_out;
			else
				rx_data_reg <= kb_data_out;
			end if;
      end if;
    end if;
  end process rx_store_proc;

  seg71_in <= rx_data_reg(3 downto 0);
  seg72_in <= rx_data_reg(7 downto 4);
  seg73_in <= rx_ack_r_reg(3 downto 0);
  seg74_in <= rx_ack_r_reg(7 downto 4);
  
  kb_leds <= kb_leds_t(1 downto 0) & kb_leds_t(2);
end;
