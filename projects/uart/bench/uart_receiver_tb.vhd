-------------------------------------------------------------------------------
-- Title      : Testbench for design "uart_receiver"
-- Project    : Uart module on Altera DE0
-------------------------------------------------------------------------------
-- File       : uart_receiver_tb.vhd
-- Author     : Jansen  <jansen@jansen-M1022E>
-- Company    : 
-- Created    : 2012-02-25
-- Last update: 2012-02-25
-- Platform   : 
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2012 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2012-02-25  1.0      jansen  Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity uart_receiver_tb is

end entity uart_receiver_tb;

-------------------------------------------------------------------------------

architecture stimulus of uart_receiver_tb is

  -- component generics
  constant N : integer := 8;

  -- Constants
  constant PERIOD    : time    := 20 NS;
  constant CLK_DIV   : integer := 434;
  constant SIG_COUNT : integer := 3;

  type   sig_array is array(0 to SIG_COUNT-1) of std_logic_vector(0 to N+2);
  signal raw_sigs : sig_array;
  signal sig_cnt  : integer := 0;

  -- component ports

  signal clk          : std_logic;
  signal rst          : std_logic;
  signal rx           : std_logic;
  signal sample_tick  : std_logic;
  signal data         : std_logic_vector(N-1 downto 0);
  signal rx_done_tick : std_logic;

  signal done : boolean := FALSE;

begin  -- architecture stimulus

  raw_sigs(0) <= "10101010101";
  raw_sigs(1) <= "10010101010";
  raw_sigs(2) <= "10111100001";

  -- component instantiation
  DUT : entity work.uart_receiver
    generic map (
      N => N)
    port map (
      clk_i          => clk,
      rst_i          => rst,
      rx_i           => rx,
      sample_tick_i  => sample_tick,
      data_o         => data,
      rx_done_tick_o => rx_done_tick,
      trans_length_i => N);

  -- clock generation
  clk_gen_proc : process
    variable clktemp     : std_logic := '1';
    variable clk_counter : integer   := 0;
  begin  -- process clk_gen_proc
    sample_tick <= '0';
    while done = FALSE loop
      wait for PERIOD/2;
      clktemp := not clktemp;
      clk     <= clktemp;

      if clk = '0' then
        sample_tick <= '0';
      end if;
      clk_counter := clk_counter + 1;
      if clk_counter >= CLK_DIV*2 then
        clk_counter := 0;
        sample_tick <= '1';
      end if;
      
    end loop;
    wait;
  end process clk_gen_proc;

  -- waveform generation
  wave_gen_proc : process
  begin
    rst <= '1';
    wait for PERIOD;
    rst <= '0';
    wait;
  end process wave_gen_proc;

  -- Rx input generation
  sig_gen_proc : process
    constant SIG_PERIOD     : time    := PERIOD*CLK_DIV*16;
    constant SIG_START_TIME : time    := PERIOD*CLK_DIV*6/7;
    variable sig_index      : integer := 0;
    variable sig_cnt_var    : integer := 0;
  begin
    rx      <= '1';
    sig_cnt <= sig_cnt_var;
    wait for SIG_START_TIME;
    while sig_cnt_var < SIG_COUNT loop
      sig_index := 0;
      while sig_index < N+2 loop
        rx        <= raw_sigs(sig_cnt_var)(sig_index);
        sig_index := sig_index + 1;
        wait for SIG_PERIOD;
      end loop;
      sig_cnt_var := sig_cnt_var + 1;
      sig_cnt     <= sig_cnt_var;
    end loop;
    done <= TRUE;
    wait;
  end process sig_gen_proc;

  -- Receive output check.
  rx_out_check_proc : process
    variable reverse : std_logic_vector(data'low to data'high);
  begin
    while done = FALSE loop
      
      wait until rx_done_tick = '1';
      for i in data'low to data'high loop
        reverse(i) := data(i);
      end loop;
      
      assert reverse = raw_sigs(sig_cnt-1)(2 to N+1)
        report "Sent data was not received correctly."
        severity FAILURE;
      
    end loop;
    wait;
  end process;

end architecture stimulus;
