-------------------------------------------------------------------------------
-- Title      : Testbench for design "shift_reg"
-- Project    : Primatives component library.
-------------------------------------------------------------------------------
-- File       : shift_reg_tb.vhd
-- Author     : Jansen  <jansen@jansen-M1022E>
-- Company    : 
-- Created    : 2012-02-24
-- Last update: 2012-02-26
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

entity shift_reg_tb is

end entity shift_reg_tb;

architecture stimulus of shift_reg_tb is

  -- component generics
  constant N         : integer                        := 8;
  constant RESET_VAL : std_logic_vector(N-1 downto 0) := (others => '0');
  constant PERIOD    : time                           := 20 ns;

  -- component ports
  signal clk, rst    : std_logic;
  signal shift_nLoad : std_logic;
  signal shift_en    : std_logic;
  signal serial_in   : std_logic;
  signal data_in     : std_logic_vector(N - 1 downto 0);
  signal data_out    : std_logic_vector(N - 1 downto 0);

  signal done : boolean := FALSE;

begin  -- architecture stimulus

  -- component instantiation
  DUT : entity work.shift_reg
    generic map (
      N         => N,
      RESET_VAL => RESET_VAL)
    port map (
      clk_i         => clk,
      rst_i         => rst,
      shift_nLoad_i => shift_nLoad,
      shift_en_i    => shift_en,
      serial_i      => serial_in,
      data_i        => data_in,
      data_o        => data_out);

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
    -- insert signal assignments here
    done <= TRUE;
    wait;
  end process wave_gen_proc;

  

end architecture stimulus;
