library ieee;
use ieee.std_logic_1164.all;

entity ps2_kb_led_controller is
  
  port (
    clk_i : in std_logic;
    rst_i : in std_logic;

    set_leds_i : in std_logic;
    leds_i     : in std_logic_vector(2 downto 0);

    tx_start_tick_o : out std_logic;
    tx_data_o       : out std_logic_vector(7 downto 0);
    tx_done_tick_i  : in  std_logic;

    tx_nack_tick_i : in std_logic;
    bussy_flag_i   : in std_logic
    );

end entity ps2_kb_led_controller;

architecture behaviour of ps2_kb_led_controller is

  constant SET_LEDS_COMMAND : std_logic_vector(7 downto 0) := x"ED";

  type state_t is (IDLE_S, BUSSY_WAIT_S, WRITE_CMD_S, WAIT_CMD_S, WRITE_S, WAIT_WRITE_S);

  signal state      : state_t;
  signal state_next : state_t;

  signal leds_reg : std_logic_vector(2 downto 0);
  
begin  -- architecture behavior

  state_proc : process (clk_i, rst_i) is
  begin  -- process state_proc
    if rst_i = '1' then                     -- asynchronous reset (active high)
      state <= IDLE_S;
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      state <= state_next;
    end if;
  end process state_proc;

  leds_reg_proc : process (clk_i, rst_i) is
  begin  -- process leds_reg_proc
    if rst_i = '1' then                     -- asynchronous reset (active high)
      leds_reg <= "000";
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      if state = IDLE_S and set_leds_i = '1' then
        leds_reg <= leds_i;
      end if;
    end if;
  end process leds_reg_proc;

  next_state_proc : process (bussy_flag_i, set_leds_i, state, tx_done_tick_i,
                             tx_nack_tick_i) is
  begin  -- process next_state_proc
    case state is
      when IDLE_S =>
        if set_leds_i = '1' then
          if bussy_flag_i = '1' then
            state_next <= BUSSY_WAIT_S;
          else
            state_next <= WRITE_CMD_S;
          end if;
        else
          state_next <= IDLE_S;
        end if;
      when BUSSY_WAIT_S =>
        if bussy_flag_i = '0' then
          state_next <= WRITE_CMD_S;
        else
          state_next <= BUSSY_WAIT_S;
        end if;
      when WRITE_CMD_S =>
        state_next <= WAIT_CMD_S;
      when WAIT_CMD_S =>
        if tx_done_tick_i = '1' then
          state_next <= WRITE_S;
        elsif tx_nack_tick_i = '1' then
          state_next <= BUSSY_WAIT_S;
        else
          state_next <= WAIT_CMD_S;
        end if;
      when WRITE_S =>
        state_next <= WAIT_WRITE_S;
      when WAIT_WRITE_S =>
        if tx_done_tick_i = '1' then
          state_next <= IDLE_S;
        elsif tx_nack_tick_i = '1' then
          state_next <= IDLE_S;
        else
          state_next <= WAIT_WRITE_S;
        end if;
        
    end case;
  end process next_state_proc;

  with state select
    tx_start_tick_o <=
    '1' when WRITE_CMD_S,
    '1' when WRITE_S,
    '0' when others;

	 with state select
	 tx_data_o <= 
	 "00000"&leds_reg when WRITE_CMD_S,
	 SET_LEDS_COMMAND when others;

end architecture behaviour;
