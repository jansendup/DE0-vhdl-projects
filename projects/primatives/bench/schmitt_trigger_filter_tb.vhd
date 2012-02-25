-------------------------------------------------------------------------------
-- Title      : Testbench for design "schmitt_trigger_filter"
-- Project    : Primatives component library.
-------------------------------------------------------------------------------
-- File       : schmitt_trigger_filter_tb.vhd
-- Author     : Jansen  <jansen@jansen-M1022E>
-- Company    : 
-- Created    : 2012-02-24
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
-- 2012-02-24  1.0      jansen  Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity schmitt_trigger_filter_tb is

end entity schmitt_trigger_filter_tb;

-------------------------------------------------------------------------------

architecture stimulus of schmitt_trigger_filter_tb is

  constant PERIOD     : time                                := 20 NS;
  constant sig_length : integer                             := 16;
  constant raw_sig    : std_logic_vector(0 to sig_length-1) := "1001100101010101";

  -- component generics
  constant N         : integer   := 4;
  constant RESET_VAL : std_logic := '0';

  -- component ports
  signal clk, rst : std_logic;
  signal sig      : std_logic;
  signal fsig     : std_logic;

  signal done : boolean := FALSE;

begin  -- architecture stimulus

  -- component instantiation
  DUT : entity work.schmitt_trigger_filter
    generic map (
      N         => N,
      RESET_VAL => RESET_VAL)
    port map (
      clk_i  => clk,
      rst_i  => rst,
      sig_i  => sig,
      fsig_o => fsig);

  -- clock generation
  clk_gen_proc : process
    variable clktemp : std_logic := '1';
  begin  -- process clk_gen_proc
    while done = FALSE loop
      clk     <= clktemp;
      clktemp := not clktemp;
      wait for PERIOD/2;
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

  sig_gen_proc : process
    constant SIG_PERIOD : time      := PERIOD * 25/3;
    variable sig_index  : integer   := 0;
  begin
    while sig_index < sig_length loop
      sig       <= raw_sig(sig_index);
      sig_index := sig_index + 1;
      wait for SIG_PERIOD;
    end loop;
    done <= TRUE;
  end process sig_gen_proc;

end architecture stimulus;
