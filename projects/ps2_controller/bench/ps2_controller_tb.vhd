entity ps2_controller_tb is
  port();
end ps2_controller_tb;

architecture test of ps2_controller_tb is

component ps2_controller is
    port( clk_i, reset_i :in std_logic;
          ps2_clk_io, ps2_data_io: inout std_logic;
          rx_en_i: in std_logic;
          rx_buf_full_o, rx_parity_err_o: out std_logic;
          rx_buf_o: out std_logic_vector(7 downto 0)
          );
end component;
  
begin  -- test

  uut: ps2_constroller
    port map (
      clk_i           => clk,
      reset_i         => reset,
      ps2_clk_io      => ps2_clk,
      ps2_data_io     => ps2_data,
      rx_en_i         => rx_en,
      rx_buf_full_o   => rx_buf_full,
      rx_parity_err_o => rx_parity_err,
      rx_buf_o        => rx_buf);

end test;
