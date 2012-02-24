-------------------------------------------------------------------------------
-- Title      : Testbench for design "counter"
-- Project    : Primative components
-------------------------------------------------------------------------------
-- File       : counter_tb.vhd
-- Author     : Jansen  <jansen@jansen-M1022E>
-- Company    : 
-- Created    : 2012-02-23
-- Last update: 2012-02-24
-- Platform   : 
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2012 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2012-02-23  1.0      jansen  Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity counter_tb is

end entity counter_tb;

-------------------------------------------------------------------------------

architecture stimulus of counter_tb is

  -- component generics
  constant MAX_CNT : integer := 20;
  constant PERIOD  : time    := 20 ns;

  -- component ports
  signal clk      : std_logic := '1';
  signal rst      : std_logic;
  signal cnt_en   : std_logic;
  signal load     : std_logic;
  signal load_cnt : integer range 0 to max_cnt;
  signal cnt      : integer range 0 to max_cnt;

  -- clock
  signal done : boolean := FALSE;

begin  -- architecture stimulus

  -- component instantiation
  DUT : entity work.counter
    generic map (
      max_cnt => MAX_CNT)
    port map (
      clk_i      => clk,
      rst_i      => rst,
      cnt_en_i   => cnt_en,
      load_i     => load,
      load_cnt_i => load_cnt,
      cnt_o      => cnt);

  -- clock generation
  clk_gen_proc : process
    variable clktemp : std_logic := '1';
  begin  -- process clk_gen_proc
    while done = FALSE loop
      wait for PERIOD/2;
      clktemp := not clktemp;
      clk     <= clktemp;
    end loop;
    wait;
  end process clk_gen_proc;

  -- waveform generation
  wave_gen_proc : process
  begin
    rst      <= '1';
    cnt_en   <= '-';
    load     <= '-';
    load_cnt <= 0;
    wait for PERIOD;
    rst      <= '0';
    load     <= '1';
    load_cnt <= 3;
    wait for PERIOD;
    cnt_en   <= '1';
    load     <= '0';
    wait for 4*PERIOD;
    assert cnt = 6 report "Counter value not as expected." severity FAILURE;
    load     <= '1';
    load_cnt <= 16;
    wait for PERIOD;
    load     <= '0';
    wait for 2*PERIOD;
    assert cnt = 17 report "Counter value not as expected." severity FAILURE;
    done     <= TRUE;
    wait;
  end process wave_gen_proc;

  

end architecture stimulus;
