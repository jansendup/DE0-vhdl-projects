-------------------------------------------------------------------------------
-- Title      : Testbench for design "ps2_controller"
-- Project    : PS/2 controller on Altera DE0
-------------------------------------------------------------------------------
-- File       : ps2_controller_tb.vhd
-- Author     : Jansen  <jansen@jansen-M1022E>
-- Company    : 
-- Created    : 2012-02-29
-- Last update: 2012-02-29
-- Platform   : 
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2012 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2012-02-29  1.0      jansen  Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity ps2_controller_tb is

end entity ps2_controller_tb;

-------------------------------------------------------------------------------

architecture stimulus of ps2_controller_tb is

  constant PERIOD     : time := 20 NS;
  constant PS2_PERIOD : time := 67 US;

  -- component ports
  signal clk, rst           : std_logic;
  signal ps2_clk, ps2_data  : std_logic;
  signal rx_en              : std_logic;
  signal rx_done_tick       : std_logic;
  signal rx_parity_err_tick : std_logic;
  signal rx_data            : std_logic_vector(7 downto 0);
  signal tx_start_tick      : std_logic;
  signal tx_data            : std_logic_vector(7 downto 0);
  signal tx_done_tick       : std_logic;
  signal tx_nack_tick       : std_logic;
  signal bussy_flag         : std_logic;

  signal done : boolean := FALSE;

  type   state_t is (IDLE, SEND, RECEIVE);
  signal ps2_state        : state_t                      := IDLE;
  signal ps2_send_data    : std_logic_vector(8 downto 0) := (others => '0');
  signal ps2_receive_data : std_logic_vector(8 downto 0) := (others => '0');
  signal send_done        : boolean                      := TRUE;
  signal receive_done     : boolean                      := TRUE;
  signal ps2_ack_bit      : std_logic                    := '0';

begin  -- architecture stimulus

  -- component instantiation
  DUT : entity work.ps2_controller
    generic map (
      CLK_FREQ => 50000000)
    port map (
      clk_i                => clk,
      rst_i                => rst,
      ps2_clk_io           => ps2_clk,
      ps2_data_io          => ps2_data,
      rx_en_i              => rx_en,
      rx_done_tick_o       => rx_done_tick,
      rx_parity_err_tick_o => rx_parity_err_tick,
      rx_data_o            => rx_data,
      tx_start_tick_i      => tx_start_tick,
      tx_data_i            => tx_data,
      tx_done_tick_o       => tx_done_tick,
      tx_nack_tick_o       => tx_nack_tick,
      bussy_flag_o         => bussy_flag);

  clk_gen_proc : process is
    variable clk_var : std_logic := '1';
  begin  -- process clk_gen_proc
    while done = FALSE loop
      clk     <= clk_var;
      clk_var := not clk_var;
      wait for PERIOD/2;
    end loop;
    wait;
  end process clk_gen_proc;

  ps2_gen_proc : process is
  begin  -- process clk_gen_proc
    ps2_clk  <= '1';
    ps2_data <= '1';
    while done = FALSE loop
      case ps2_state is
        when IDLE =>

        when SEND =>
          send_done <= FALSE;
          -- Generate state condition
          ps2_clk   <= '0';
          ps2_data  <= '0';
          wait for PS2_PERIOD/2;
          -- Send data
          for i in 0 to 8 loop
            ps2_clk  <= '1';
            ps2_data <= ps2_send_data(i);
            wait for PS2_PERIOD/2;
            ps2_clk  <= '0';
            wait for PS2_PERIOD/2;
          end loop;  -- i
          -- Generate stop condition.
          ps2_clk   <= '1';
          ps2_data  <= '1';
          wait for PS2_PERIOD/2;
          ps2_clk   <= '0';
          wait for PS2_PERIOD/2;
          ps2_clk   <= '1';
          wait for PS2_PERIOD/2;
          send_done <= TRUE;
        when RECEIVE =>
          receive_done <= FALSE;
          ps2_clk      <= 'Z';
          ps2_data     <= 'Z';
          wait for 100 US;
          wait until ps2_data = '0';
          ps2_clk      <= '1';
          wait for PS2_PERIOD/2;
          ps2_clk      <= '0';
          wait for PS2_PERIOD/2;

          -- Receive data
          for i in 0 to 8 loop
            ps2_clk             <= '1';
            ps2_receive_data(i) <= ps2_data;
            wait for PS2_PERIOD/2;
            ps2_clk             <= '0';
            wait for PS2_PERIOD/2;
          end loop;  -- i

          -- Read stop bit.
          ps2_clk  <= '1';
          assert ps2_data = 'Z' report "Transmitter did not generate stop bit." severity ERROR;
          -- ACK bit.
          ps2_data <= ps2_ack_bit;
          wait for PS2_PERIOD/2;
          ps2_clk  <= '0';
          wait for PS2_PERIOD/2;
          ps2_clk  <= '1';
          ps2_data <= '1';

          wait for PS2_PERIOD/2;
          receive_done <= TRUE;
          
      end case;
      wait for 2*PERIOD;
    end loop;
    wait;
  end process ps2_gen_proc;

  -- waveform generation
  wave_gen_proc : process
  begin
    rst           <= '1';
    rx_en         <= '1';
    tx_start_tick <= '0';
    ps2_state     <= IDLE;
    wait for PERIOD;
    rst           <= '0';
    wait for PERIOD;

    ps2_send_data <= "101010101";
    ps2_state     <= SEND;
    wait until rx_done_tick = '1' and clk'event and clk = '0';
    assert rx_data = ps2_send_data(7 downto 0) report "Received data did not match data sent." severity ERROR;
    assert rx_parity_err_tick = '0' report "False parity error tick." severity ERROR;
    wait until send_done = TRUE;

    ps2_send_data <= "001110111";       -- parity err.
    ps2_state     <= SEND;
    wait until rx_done_tick = '1' and clk'event and clk = '0';
    assert rx_data = ps2_send_data(7 downto 0) report "Received data did not match data sent." severity ERROR;
    assert rx_parity_err_tick = '1' report "Did not detect parity error." severity ERROR;
    ps2_state     <= IDLE;
    wait until send_done = TRUE;

    wait until clk = '1';               -- Sync with clock.

    ps2_state     <= RECEIVE;
    tx_start_tick <= '1';
    tx_data       <= "10101010";
    ps2_ack_bit   <= '0';
    wait for PERIOD;
    tx_start_tick <= '0';
    wait until (tx_done_tick = '1' or tx_nack_tick = '1') and clk'event and clk = '0';
    if tx_nack_tick = '1' then
      assert tx_nack_tick = '0' report "False nack tick." severity ERROR;
      wait until tx_done_tick = '1' and clk'event and clk = '0';
    end if;
    assert tx_data = ps2_receive_data(7 downto 0) report "Received data not equal to sent data." severity ERROR;
    assert ps2_receive_data(8) = '1' report "Received incorrect parity bit." severity ERROR;
    
    ps2_state     <= IDLE;
    wait until receive_done = TRUE;


    wait until clk = '1';               -- Sync with clock.

    ps2_state     <= RECEIVE;
    tx_start_tick <= '1';
    tx_data       <= "10010001";
    ps2_ack_bit   <= '1';
    wait for PERIOD;
    tx_start_tick <= '0';
     wait until (tx_done_tick = '1' or tx_nack_tick = '1') and clk'event and clk = '0';
    if tx_nack_tick = '1' then
      assert tx_nack_tick = '1' report "Did not detect nack." severity ERROR;
      wait until tx_done_tick = '1' and clk'event and clk = '0';
    end if;
    assert tx_data = ps2_receive_data(7 downto 0) report "Received data not equal to sent data." severity ERROR;
    assert ps2_receive_data(8) = '0' report "Received incorrect parity bit." severity ERROR;
    
    ps2_state     <= IDLE;
    wait until receive_done = TRUE;

    done <= TRUE;
    wait;
  end process wave_gen_proc;

  

end architecture stimulus;
