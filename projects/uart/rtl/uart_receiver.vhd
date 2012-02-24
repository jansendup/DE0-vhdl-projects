library ieee;
use ieee.std_logic_1164.all;
use work.filters_pkg.schmitt_trigger_filter;

entity uart_receiver is
  generic (
    N : integer := 8);  -- maximum data + parity bits to be receive
  port (
    clk_i          : in  std_logic;
    rst_i          : in  std_logic;
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

  signal f_rx         : std_logic;              -- Glitch filtered rx signal
  signal l_sample_cnt : integer range 0 to 15;  -- Used to know when to sample
                                                -- next bit.
  
begin  -- behaviour

  rx_filter : schmitt_trigger_filter
    generic map (
      N         => 2,
      RESET_VAL => '0')
    port map (
      clk_i  => clk_i,
      rst_i  => rst_i,
      sig_i  => rx_i,
      fsig_o => f_rx);

  -- purpose: Clocks in next state
  -- type   : sequential
  -- inputs : clk_i, rst_i, l_next_state
  -- outputs: l_state_reg
  state_reg_proc : process (clk_i, rst_i) is
  begin  -- process state_reg_proc
    if reset_i = '0' then                   -- asynchronous reset (active low)
      l_state_reg <= IDLE_S;
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      l_state_reg <= l_next_state;
    end if;
  end process state_reg_proc;

  -- purpose: Samples the rx signal.
  -- type   : sequential
  -- inputs : clk_i, rst_i, f_rx
  -- outputs: l_rx_pre_sample
  sample_rx_proc : process (clk_i, rst_i) is
  begin  -- process sample_rx_proc
    if rst_i = '1' then                     -- asynchronous reset (active high)

    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      case l_state_reg is
        when START_S =>
          if sample_tick_i = '1' then
            l_sample_cnt <= l_sample_cnt + 1;
            if l_sample_cnt >= 7 then
              l_
            end if;
          end if;
        when others => null;
      end case;
      if sample_tick_i = '1' then
      
      end if;
    end if;
  end process sample_rx_proc;
  
  -- purpose: Logic for next state
  -- type   : combinational
  -- inputs : sample_tick_i
  -- outputs: l_next_state
  next_state_proc : process (sample_tick_i, f_rx) is
  begin  -- process next_state_proc
    case l_state_reg is
      when IDLE_S =>
        if sample_tick_i = '1' and f_rx = '0' then
          l_next_state <= START_S;
        else
          l_next_state <= IDLE_S;
        end if;
      when others => null;
    end case;
  end process next_state_proc;

end behaviour;
