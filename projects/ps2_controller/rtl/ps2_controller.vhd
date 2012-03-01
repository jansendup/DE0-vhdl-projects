library ieee;
use ieee.std_logic_1164.all;

entity ps2_controller is
  generic (
    CLK_FREQ : integer);
  port(clk_i, rst_i            : in    std_logic;
       ps2_clk_io, ps2_data_io : inout std_logic;

       rx_en_i              : in  std_logic;
       rx_done_tick_o       : out std_logic;
       rx_parity_err_tick_o : out std_logic;
       rx_data_o            : out std_logic_vector(7 downto 0);

       tx_start_tick_i : in  std_logic;
       tx_data_i       : in  std_logic_vector(7 downto 0);
       tx_done_tick_o  : out std_logic;

       tx_nack_tick_o      : out std_logic;
       bussy_flag_o        : out std_logic

       );
end ps2_controller;

architecture structure of ps2_controller is

  constant ONES : std_logic_vector(7 downto 0) := (others => '1');

  constant CYCLES_PER_10_MICRO_SECONDS : integer := CLK_FREQ/100000;
  constant MAX_TIMER_TIME              : integer := 10;  -- Max time timer needs to store. (Multiples of 10us)
  constant MAX_TIMER_COUNT             : integer := CYCLES_PER_10_MICRO_SECONDS * MAX_TIMER_TIME;

  signal f_ps2_clk  : std_logic;
  signal f_ps2_data : std_logic;

  signal buf_tx_nRx_sel  : std_logic;
  signal buf_shift_nLoad : std_logic;
  signal buf_shift_en    : std_logic;
  signal buf_data_in     : std_logic_vector(8 downto 0);
  signal buf_data_out    : std_logic_vector(8 downto 0);

  signal bc_cnt    : integer range 0 to 9;
  signal bc_cnt_en : std_logic;
  signal bc_reload : std_logic;

  signal tm_reload : std_logic;
  signal tm_cnt    : integer range 0 to MAX_TIMER_COUNT;

  signal rx_done_tick : std_logic;
  signal rx_parity    : std_logic;

  signal tx_parity     : std_logic;
  signal tx_parity_bit : std_logic;
  signal tx_load_data  : std_logic_vector(8 downto 0);

begin

  ps2_clk_filter : entity work.schmitt_trigger_filter
    generic map(N => 3)
    port map(clk_i => clk_i, rst_i => rst_i,
             sig_i => ps2_clk_io, fsig_o => f_ps2_clk);

  ps2_data_filter : entity work.schmitt_trigger_filter
    generic map(N => 3)
    port map(clk_i => clk_i, rst_i => rst_i,
             sig_i => ps2_data_io, fsig_o => f_ps2_data);

  buf_shift_reg : entity work.shift_reg
    generic map(N         => 9,
                RESET_VAL => '0' & ONES)
    port map(clk_i         => clk_i,
             rst_i         => rst_i,
             shift_nLoad_i => buf_shift_nLoad,
             shift_en_i    => buf_shift_en,
             serial_i      => f_ps2_data,
             data_i        => buf_data_in,
             data_o        => buf_data_out
             );

  bits_counter : entity work.counter
    generic map (
      max_cnt => 9,
      rst_val => 0)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      cnt_en_i   => bc_cnt_en,
      load_i     => bc_reload,
      load_cnt_i => 0,
      cnt_o      => bc_cnt);

  com_timer : entity work.counter
    generic map (
      max_cnt => MAX_TIMER_COUNT+1,
      rst_val => 0)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      cnt_en_i   => '1',
      load_i     => tm_reload,
      load_cnt_i => 0,
      cnt_o      => tm_cnt);

  rx_parity_generator : entity work.parity_generator
    generic map (
      N => 9)
    port map (
      din_i    => buf_data_out,
      parity_o => rx_parity);

  tx_parity_generator : entity work.parity_generator
    generic map (
      N => 8)
    port map (
      din_i    => tx_data_i(7 downto 0),
      parity_o => tx_parity);

  ps2_controller_fsm_1 : entity work.ps2_controller_fsm
    generic map (
      MAX_TIMER_COUNT             => MAX_TIMER_COUNT,
      CYCLES_PER_10_MICRO_SECONDS => CYCLES_PER_10_MICRO_SECONDS
      )
    port map (
      clk_i               => clk_i,
      rst_i               => rst_i,
      ps2_clk_io          => ps2_clk_io,
      ps2_data_io         => ps2_data_io,
      f_ps2_clk_i         => f_ps2_clk,
      f_ps2_data_i        => f_ps2_data,
      rx_en_i             => rx_en_i,
      rx_done_tick_o      => rx_done_tick,
      tx_start_tick_i     => tx_start_tick_i,
      tx_done_tick_o      => tx_done_tick_o,
      tx_nack_tick_o      => tx_nack_tick_o,
      bussy_flag_o        => bussy_flag_o,
      buf_tx_nRx_sel_o    => buf_tx_nRx_sel,
      buf_shift_nLoad_o   => buf_shift_nLoad,
      buf_shift_en_o      => buf_shift_en,
      buf_serial_out_i    => buf_data_out(0),
      bc_cnt_i            => bc_cnt,
      bc_cnt_en_o         => bc_cnt_en,
      bc_reload_o         => bc_reload,
      tm_reload_o         => tm_reload,
      tm_cnt_i            => tm_cnt);

  tx_parity_bit <= not tx_parity;
  tx_load_data  <= tx_parity_bit & tx_data_i;

  with buf_tx_nRx_sel select
    buf_data_in <=
    ('0'&ONES)   when '0',
    tx_load_data when others;

  rx_data_o            <= buf_data_out(7 downto 0);
  rx_parity_err_tick_o <= (not rx_parity) and rx_done_tick;
  rx_done_tick_o       <= rx_done_tick;

end structure;
