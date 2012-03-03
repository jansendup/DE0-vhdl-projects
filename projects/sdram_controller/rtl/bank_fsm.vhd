library ieee;
use ieee.std_logic_1164.all;
entity bank_fsm is
  generic (
    ROW_WIDTH : natural);
  port (
    clk_i         : in std_logic;
    rst_i         : in std_logic;
    cmd_en_i      : in std_logic;
    read_nWrite_i : in std_logic;
    row_i         : in std_logic_vector(ROW_WIDTH-1 downto 0);

    activate_tick_i  : in std_logic;
    precharge_tick_i : in std_logic;

    may_activate_i  : in std_logic;
    may_read_i      : in std_logic;
    may_write_i     : in std_logic;
    may_precharge_i : in std_logic;

    req_activation_o : out std_logic;
    req_read_o       : out std_logic;
    req_write_o      : out std_logic;
    req_precharge_o  : out std_logic);
end entity bank_fsm;

architecture behaviour of bank_fsm is

  type state_t is (PRECHARGED_S, ACTIVE_S);

  signal state      : state_t;
  signal state_next : state_t;

  signal active_row                  : std_logic_vector(ROW_WIDTH-1 downto 0);
  signal row_match                   : std_logic;
  signal active_cmd_en_and_row_match : std_logic;

  signal req_activation : std_logic;
  signal req_read       : std_logic;
  signal req_write      : std_logic;
  signal req_precharge  : std_logic;
  
begin  -- architecture behaviour

  state_proc : process (clk_i, rst_i) is
  begin  -- process state_proc
    if rst_i = '1' then                     -- asynchronous reset (active high)
      state <= PRECHARGED_S;
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      state <= state_next;
    end if;
  end process state_proc;

  next_state_proc : process (activate_tick_i, precharge_tick_i, state) is
  begin  -- process next_state_proc
    case state is
      when ACTIVE_S =>
        if precharge_tick_i = '1' then
          state_next <= PRECHARGED_S;
        else
          state_next <= ACTIVE_S;
        end if;
      when PRECHARGED_S =>
        if activate_tick_i = '1' then
          state_next <= ACTIVE_S;
        else
          state_next <= PRECHARGED_S;
        end if;
    end case;
  end process next_state_proc;

  active_row_proc : process (clk_i, rst_i) is
  begin  -- process active_row_proc
    if rst_i = '1' then                     -- asynchronous reset (active high)
      active_row = (others => '0');
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      if activate_tick_i = '1' then
        active_row <= row_i;
      end if;
    end if;
  end process active_row_proc;

  row_match                   <= '1' when row_i = active_row                                    else '0';
  active_cmd_en_and_row_match <= '1' when state = ACTIVE_S and row_match = '1' and cmd_en = '1' else '0';

  req_read  <= active_cmd_en_and_row_match and may_read and read_nWrite;
  req_write <= active_cmd_en_and_row_match and may_write and (not read_nWrite);

  req_precharge  <= '1' when state = ACTIVE_S and may_precharge_i = '1' and row_match = '0' and cmd_en = '1' else '0';
  req_activation <= '1' when state = PRECHARGED_S and may_activate_i = '1' and cmd_en = '1'                  else '0';
  

end architecture behaviour;
