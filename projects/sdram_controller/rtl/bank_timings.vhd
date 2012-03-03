library ieee;
use ieee.std_logic_1164.all;

entity bank_timings is
  
  generic (
    tRAS_MAX : natural;                 -- ACTIVE-to-PRECHARG
    tRAS_MIN : natural;
    tRC      : natural;                 -- ACTIVE-to-ACTIVE
    tRCD     : natural;                 -- ACTIVE-to-READ or WRITE
    tCL      : natural;
    tRDL     : natural;
    tRP      : natural
    );

  port (
    clk_i            : in std_logic;
    rst_i            : in std_logic;
    activate_tick_i  : in std_logic;
    read_tick_i      : in std_logic;
    write_tick_i     : in std_logic;
    precharge_tick_i : in std_logic;

    may_read_o      : out std_logic;
    may_write_o     : out std_logic;
    may_activate_o  : out std_logic;
    may_precharge_o : out std_logic;

    precharge_done_o      : out std_logic;
    read_data_available_o : out std_logic;
    active_too_long_o     : out std_logic
    );

end entity bank_timings;

architecture structure of bank_timings is

  constant CL_ZEROS : std_logic_vector(tCL-1 downto 0) := (others => '0');

  signal rcd_done : std_logic;
  signal cl_out   : std_logic_vector(tCL-1 downto 0);
  signal cl_empty : std_logic;
  signal rc_done  : std_logic;
  signal rdl_done : std_logic;

  signal precharge_done : std_logic;

  signal ras_cnt_en : std_logic;
  signal ras_load   : std_logic;
  signal ras_cnt    : integer range 0 to tRAS_MAX-1;

  signal active_too_long    : std_logic;
  signal active_long_enough : std_logic;
  
begin  -- architecture structure

  -- Read/Write Operations
  rcd_ostm : entity work.one_shot_timer
    generic map (
      N => tRCD)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      sync_rst_i => activate_tick_i,
      done_o     => rcd_done);

  cl_sreg : entity work.shift_reg
    generic map (
      N         => tCL,
      RESET_VAL => CL_ZEROS)
    port map (
      clk_i         => clk_i,
      rst_i         => rst_i,
      shift_nLoad_i => '1',
      shift_en_i    => '1',
      serial_i      => read_tick_i,
      data_i        => CL_ZEROS,
      data_o        => cl_out);

  cl_empty              <= '1' when cl_out = CL_ZEROS else '0';
  may_read_o            <= rcd_done;
  may_write_o           <= rcd_done and cl_empty;
  read_data_available_o <= cl_out(0);

  -- Bank precharge inteval timings
  rdl_ostm : entity work.one_shot_timer
    generic map (
      N => tRDL)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      sync_rst_i => write_tick_i,
      done_o     => rdl_done);

  -- Bank activate interval timings
  rc_ostm : entity work.one_shot_timer
    generic map (
      N => tRC)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      sync_rst_i => activate_tick_i,
      done_o     => rc_done);

  precharge_ostm : entity work.one_shot_timer
    generic map (
      N => tRP)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      sync_rst_i => precharge_tick_i,
      done_o     => precharge_done);

  may_activate_o <= precharge_done and rc_done;

  ras_counter : entity work.counter
    generic map (
      max_cnt => tRAS_MAX-1,
      rst_val => 0)
    port map (
      clk_i      => clk_i,
      rst_i      => rst_i,
      cnt_en_i   => ras_cnt_en,
      load_i     => activate_tick_i,
      load_cnt_i => 0,
      cnt_o      => ras_cnt);

  active_long_enough <= '1' when ras_cnt >= tRAS_MIN     else '0';
  active_too_long    <= '1' when ras_cnt >= (tRAS_MAX-1) else '0';
  ras_cnt_en         <= not active_too_long;

  may_precharge_o <= active_long_enough and rdl_done;

  precharge_done_o      <= precharge_done;
  read_data_available_o <= read_data_available;
  active_too_long_o     <= active_too_long;
  
end architecture structure;
