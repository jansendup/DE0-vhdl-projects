-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

library ieee;
use ieee.std_logic_1164.all;
library altera;
use altera.altera_syn_attributes.all;

entity uart_de0 is
	port
	(
		FL_BYTE_N : in std_logic;
		FL_CE_N : in std_logic;
		FL_OE_N : in std_logic;
		FL_RST_N : in std_logic;
		FL_RY : in std_logic;
		FL_WE_N : in std_logic;
		FL_WP_N : in std_logic;
		FL_DQ15_AM1 : in std_logic;
		GPIO_CLKIN_N0 : in std_logic;
		GPIO_CLKIN_P0 : in std_logic;
		GPIO_CLKOUT_N0 : in std_logic;
		GPIO_CLKOUT_P0 : in std_logic;
		GPIO_CLKIN_P1 : in std_logic;
		GPIO_CLKIN_N1 : in std_logic;
		GPIO_CLKOUT_P1 : in std_logic;
		GPIO_CLKOUT_N1 : in std_logic;
		PS2_KBCLK : in std_logic;
		PS2_KBDAT : in std_logic;
		PS2_MSCLK : in std_logic;
		PS2_MSDAT : in std_logic;
		UART_RXD : in std_logic;
		UART_TXD : in std_logic;
		UART_RTS : in std_logic;
		UART_CTS : in std_logic;
		SD_CLK : in std_logic;
		SD_CMD : in std_logic;
		SD_DAT0 : in std_logic;
		SD_DAT3 : in std_logic;
		SD_WP_N : in std_logic;
		LCD_RW : in std_logic;
		LCD_RS : in std_logic;
		LCD_EN : in std_logic;
		LCD_BLON : in std_logic;
		VGA_HS : in std_logic;
		VGA_VS : in std_logic;
		CLOCK_50 : in std_logic;
		DRAM_CAS_N : in std_logic;
		DRAM_CS_N : in std_logic;
		DRAM_CLK : in std_logic;
		DRAM_CKE : in std_logic;
		DRAM_LDQM : in std_logic;
		DRAM_UDQM : in std_logic;
		DRAM_RAS_N : in std_logic;
		DRAM_WE_N : in std_logic;
		CLOCK_50_2 : in std_logic;
		LEDG : in std_logic_vector(9 downto 0);
		SW : in std_logic_vector(9 downto 0);
		KEY : in std_logic_vector(2 downto 0);
		FL_ADDR : in std_logic_vector(21 downto 0);
		FL_DQ : in std_logic_vector(14 downto 0);
		GPIO_0 : in std_logic_vector(31 downto 0);
		GPIO_1 : in std_logic_vector(31 downto 0);
		LCD_DATA : in std_logic_vector(7 downto 0);
		VGA_G : in std_logic_vector(3 downto 0);
		VGA_R : in std_logic_vector(3 downto 0);
		VGA_B : in std_logic_vector(3 downto 0);
		HEX0 : in std_logic_vector(7 downto 0);
		HEX1 : in std_logic_vector(7 downto 0);
		HEX2 : in std_logic_vector(7 downto 0);
		HEX3 : in std_logic_vector(7 downto 0);
		DRAM_BA : in std_logic_vector(1 downto 0);
		DRAM_DQ : in std_logic_vector(15 downto 0);
		DRAM_ADDR : in std_logic_vector(12 downto 0)
	);

end uart_de0;

architecture ppl_type of uart_de0 is

begin

end;
