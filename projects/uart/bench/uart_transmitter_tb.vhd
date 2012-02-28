-------------------------------------------------------------------------------
-- Title      : Testbench for design "uart_transmitter"
-- Project    : Uart module on Altera DE0
-------------------------------------------------------------------------------
-- File       : uart_transmitter_tb.vhd
-- Author     : Jansen  <jansen@jansen-M1022E>
-- Company    : 
-- Created    : 2012-02-27
-- Last update: 2012-02-28
-- Platform   : 
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2012 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2012-02-27  1.0      jansen  Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity uart_transmitter_tb is

end entity uart_transmitter_tb;

-------------------------------------------------------------------------------

architecture stimulus of uart_transmitter_tb is

  constant SIG_CNT : integer := 3;
  constant PERIOD  : time    := 20 NS;

  type   signals is array (0 to SIG_CNT - 1) of std_logic_vector(7 downto 0);
  signal sigs : signals;

  -- component ports
  signal clk           : std_logic := '1';
  signal rst           : std_logic;
  signal sample_tick   : std_logic;
  signal data_in       : std_logic_vector(7 downto 0);
  signal tx_start      : std_logic := '0';
  signal tx_done_tick  : std_logic;
  signal tx_idle       : std_logic;
  signal tx            : std_logic;
  signal par_en        : std_logic;
  signal par_odd_nEven : std_logic;
  signal stop_bits_num : std_logic_vector(1 downto 0);

  signal done : boolean := FALSE;

begin  -- architecture stimulus

  sigs(0) <= x"4F";
  sigs(1) <= x"F3";
  sigs(2) <= x"88";

  -- component instantiation
  DUT : entity work.uart_transmitter
    port map (
      clk_i           => clk,
      rst_i           => rst,
      sample_tick_i   => sample_tick,
      data_i          => data_in,
      tx_start_i      => tx_start,
      tx_done_tick_o  => tx_done_tick,
      tx_idle_o       => tx_idle,
      tx_o            => tx,
      par_en_i        => par_en,
      par_odd_nEven_i => par_odd_nEven,
      stop_bits_num_i => stop_bits_num);

  clk_proc : process is
    variable sample_counter : integer;
  begin  -- process clk_proc
    while done = FALSE loop
      clk <= not clk;
      wait for PERIOD/2;
    end loop;
    wait;
  end process clk_proc;

  smple_proc : process(clk) is
    variable sample_counter : integer := 0;
  begin  -- process clk_proc
    if clk'event and clk = '1' then
      sample_tick    <= '0';
      sample_counter := sample_counter + 1;
      if sample_counter >= 81 then
        sample_tick    <= '1';
        sample_counter := 0;
      end if;
    end if;
  end process smple_proc;

  -- waveform generation
  wave_gen_proc : process
  begin
    -- insert signal assignments here
    rst           <= '1';
    par_odd_nEven <= '1';
    stop_bits_num <= "10";
    wait for PERIOD;
    rst           <= '0';
    wait;
  end process wave_gen_proc;

  send_proc : process(clk) is
    variable send_index : integer := 0;
  begin  -- process clk_proc
    if clk'event and clk = '1' then
      if tx_idle = '1' and tx_start = '0' then
        send_index    := send_index + 1;
        if send_index <= SIG_CNT then
          case send_index is
            when 0 =>
              par_en <= '0';
            when 1 =>
              par_en <= '1';
            when 2 =>
              par_en <= '0';
            when others =>
              par_en <= '1';
          end case;
          data_in  <= sigs(send_index-1);
          tx_start <= '1';
        else
          done <= TRUE;
        end if;
      end if;
      if tx_idle = '0' then
        tx_start <= '0';
      end if;
    end if;
  end process send_proc;

end architecture stimulus;
