library ieee;
use ieee.std_logic_1164.all;
use work.primatives.schmitt_trigger_filter;
use work.primatives_pkg.shift_reg;

entity ps2_controller is
    port( clk_i, reset_i :in std_logic;
          ps2_clk_io, ps2_data_io: inout std_logic;
          rx_en_i: in std_logic;
          rx_buf_full_o, rx_parity_err_o: out std_logic;
          rx_buf_o: out std_logic_vector(7 downto 0)
          );
end ps2_controller;

architecture behaviour of ps2_controller is

type state is (IDLE_S,RX_START_S,RX_DATA_S,RX_STOP_S);
constant ONES : std_logic_vector(9 downto 0) := (others=>'1');

signal f_ps2_clk  : std_logic;
signal f_ps2_data : std_logic;

signal l_pre_ps2_clk : std_logic;
signal l_ps2_clk_falling : std_logic;

signal l_next_state : state;
signal l_state_reg  : state := IDLE_S;

signal l_rx_buf_full_reg : std_logic;

signal l_shift_nLoad : std_logic;
signal l_shift_en : std_logic;
signal r_serial_o : std_logic;
signal r_data : std_logic_vector(10 downto 0);


signal r_start_bit  : std_logic;
signal r_data_bits  : std_logic_vector(7 downto 0);
signal r_parity_bit : std_logic;
signal r_stop_bit   : std_logic;

begin

ps2_clk_filter: schmitt_trigger_filter
    generic map(N => 4)
    port map(clk_i => clk_i, reset_i => reset_i,
             sig_i => ps2_clk_io, fsig_o => f_ps2_clk);
             
ps2_data_filter: schmitt_trigger_filter
    generic map(N => 4)
    port map(clk_i => clk_i, reset_i => reset_i,
             sig_i => ps2_data_io, fsig_o => f_ps2_data);
             
rx_shift_reg: shift_reg
    generic map(N => 11,
                RESET_VAL => '0' & ONES)
    port map(clk_i => clk_i, reset_i => '0',
             shift_nLoad_i => l_shift_nLoad,
             shift_en_i => l_shift_en,
             serial_i => f_ps2_data,
             serial_o => r_serial_o,
             data_i => '0'&ONES,
             data_o => r_data
             );

transition_proc:
process(clk_i, reset_i)
begin
    if(reset_i = '1') then
        l_state_reg <= IDLE_S;
        l_pre_ps2_clk <= '0';
    elsif(clk_i'event and clk_i = '1') then
        l_pre_ps2_clk <= f_ps2_clk;
        l_state_reg <= l_next_state;
    end if;
end process;

rx_buffer_full_detection_proc:
process(clk_i, reset_i)
begin
    if(reset_i = '1') then
        l_rx_buf_full_reg <= '0';
    elsif(clk_i'event and clk_i = '1') then
        case l_state_reg is
        when RX_START_S =>
            l_rx_buf_full_reg <= '0';
        when RX_STOP_S =>
            l_rx_buf_full_reg <= r_stop_bit;
        when others =>
        end case;
    end if;
end process;

next_state_logic_proc:
process(l_state_reg, l_ps2_clk_falling, f_ps2_data, r_start_bit, rx_en_i)
begin
    
    case(l_state_reg) is
    when IDLE_S =>
        if(l_ps2_clk_falling = '1' AND f_ps2_data = '0' AND rx_en_i = '1') then
            l_next_state <= RX_START_S;
        else
            l_next_state <= IDLE_S;
        end if;
    when RX_START_S =>
        l_next_state <= RX_DATA_S;
    when RX_DATA_S =>
        if(r_start_bit = '0') then -- If the start bit if shifted to the start...
            l_next_state <= RX_STOP_S;
        else
            l_next_state <= RX_DATA_S;
        end if;
    when RX_STOP_S =>
        l_next_state <= IDLE_S;
    end case;
end process;

-- PS2 Clock Edge detection
l_ps2_clk_falling <= l_pre_ps2_clk AND (NOT f_ps2_clk);

-- RX Shift register control logic
l_shift_nLoad <= '0' when l_state_reg = RX_START_S else '1';
l_shift_en <= '1' when l_state_reg = RX_DATA_S AND l_ps2_clk_falling = '1' else '0';

-- RX Shift register data signal mappings
r_start_bit  <= r_data(0);
r_data_bits  <= r_data(8 downto 1);
r_parity_bit <= r_data(9);
r_stop_bit   <= r_data(10);

-- Status & data output logic
rx_buf_full_o <= l_rx_buf_full_reg;
rx_parity_err_o <= NOT(r_data_bits(0) XOR r_data_bits(1) XOR r_data_bits(2) XOR r_data_bits(3) XOR r_data_bits(4) XOR r_data_bits(5) XOR r_data_bits(6) XOR r_data_bits(7) XOR r_parity_bit);
rx_buf_o <= r_data_bits;

ps2_clk_io <= 'Z';
ps2_data_io <= 'Z';
end behaviour;