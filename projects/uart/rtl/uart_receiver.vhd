library ieee;
use ieee.std_logic_1164.all;
use work.filters_pkg.schmitt_trigger_filter;

entity uart_receiver is
  generic (
    N : integer := 8);  -- maximum data + parity bits to be receive
  port (
    clk_i          : in  std_logic;
    reset_i        : in  std_logic;
    rx_i           : in  std_logic;
    sample_tick_i  : in  std_logic;     -- High when receiver should sample rx
    samples_cnt_i  : in  integer range 0 to N;  -- Number of data + parity bits
                                                -- to be received
    data_o         : out std_logic_vector(N downto 0);
    rx_done_tick_o : out std_logic);

end uart_receiver;

architecture behaviour of uart_receiver is

  type STATE is (IDLE_S, START_S, RX_S, STOP_S);

  signal l_state_reg  : STATE;
  signal l_next_state : STATE;

  signal l_rx_bits_cnt : integer range 0 to N;

  signal f_rx : std_logic;              -- Glitch filtered rx signal
  
begin  -- behaviour

  rx_filter : schmitt_trigger_filter
    generic map (
      N         => 2,
      RESET_VAL => '0')
    port map (
      clk_i   => clk_i,
      reset_i => reset_i,
      sig_i   => rx_i,
      fsig_o  => f_rx);

  begin  -- process state_reg_proc
    if reset_i = '0' then                   -- asynchronous reset (active low)
      l_state_reg <= IDLE_S;
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      l_state_reg <= l_next_state;
    end if;
  end process state_reg_proc;

end behaviour;
