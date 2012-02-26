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

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 11.0 Build 157 04/27/2011 SJ Web Edition"

-- DATE "02/26/2012 19:28:51"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uart_de0 IS
    PORT (
	UART_TXD : OUT std_logic;
	LEDG : OUT std_logic_vector(9 DOWNTO 0);
	FL_BYTE_N : IN std_logic;
	FL_CE_N : IN std_logic;
	FL_OE_N : IN std_logic;
	FL_RST_N : IN std_logic;
	FL_RY : IN std_logic;
	FL_WE_N : IN std_logic;
	FL_WP_N : IN std_logic;
	FL_DQ15_AM1 : IN std_logic;
	GPIO_CLKIN_N0 : IN std_logic;
	GPIO_CLKIN_P0 : IN std_logic;
	GPIO_CLKOUT_N0 : IN std_logic;
	GPIO_CLKOUT_P0 : IN std_logic;
	GPIO_CLKIN_P1 : IN std_logic;
	GPIO_CLKIN_N1 : IN std_logic;
	GPIO_CLKOUT_P1 : IN std_logic;
	GPIO_CLKOUT_N1 : IN std_logic;
	PS2_KBCLK : IN std_logic;
	PS2_KBDAT : IN std_logic;
	PS2_MSCLK : IN std_logic;
	PS2_MSDAT : IN std_logic;
	UART_RXD : IN std_logic;
	UART_RTS : IN std_logic;
	UART_CTS : IN std_logic;
	SD_CLK : IN std_logic;
	SD_CMD : IN std_logic;
	SD_DAT0 : IN std_logic;
	SD_DAT3 : IN std_logic;
	SD_WP_N : IN std_logic;
	LCD_RW : IN std_logic;
	LCD_RS : IN std_logic;
	LCD_EN : IN std_logic;
	LCD_BLON : IN std_logic;
	VGA_HS : IN std_logic;
	VGA_VS : IN std_logic;
	CLOCK_50 : IN std_logic;
	DRAM_CAS_N : IN std_logic;
	DRAM_CS_N : IN std_logic;
	DRAM_CLK : IN std_logic;
	DRAM_CKE : IN std_logic;
	DRAM_LDQM : IN std_logic;
	DRAM_UDQM : IN std_logic;
	DRAM_RAS_N : IN std_logic;
	DRAM_WE_N : IN std_logic;
	CLOCK_50_2 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	FL_ADDR : IN std_logic_vector(21 DOWNTO 0);
	FL_DQ : IN std_logic_vector(14 DOWNTO 0);
	GPIO_0 : IN std_logic_vector(31 DOWNTO 0);
	GPIO_1 : IN std_logic_vector(31 DOWNTO 0);
	LCD_DATA : IN std_logic_vector(7 DOWNTO 0);
	VGA_G : IN std_logic_vector(3 DOWNTO 0);
	VGA_R : IN std_logic_vector(3 DOWNTO 0);
	VGA_B : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : IN std_logic_vector(7 DOWNTO 0);
	HEX1 : IN std_logic_vector(7 DOWNTO 0);
	HEX2 : IN std_logic_vector(7 DOWNTO 0);
	HEX3 : IN std_logic_vector(7 DOWNTO 0);
	DRAM_BA : IN std_logic_vector(1 DOWNTO 0);
	DRAM_DQ : IN std_logic_vector(15 DOWNTO 0);
	DRAM_ADDR : IN std_logic_vector(12 DOWNTO 0)
	);
END uart_de0;

-- Design Ports Information
-- FL_BYTE_N	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_CE_N	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_OE_N	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_RST_N	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_WE_N	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_WP_N	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ15_AM1	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_CLKIN_N0	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_CLKIN_P0	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_CLKOUT_N0	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_CLKOUT_P0	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_CLKIN_P1	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_CLKIN_N1	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_CLKOUT_P1	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_CLKOUT_N1	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_KBCLK	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_KBDAT	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_MSCLK	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_MSDAT	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_TXD	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_RTS	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_CTS	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_CLK	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_CMD	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_DAT0	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_DAT3	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_EN	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_BLON	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CAS_N	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CS_N	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CLK	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CKE	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_LDQM	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_UDQM	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_RAS_N	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_WE_N	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50_2	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[1]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[3]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[4]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[7]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[8]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[9]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[10]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[11]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[12]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[13]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[14]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[15]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[16]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[17]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[18]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[19]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[20]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[21]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[4]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[5]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[6]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[7]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[8]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[10]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[11]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[12]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[13]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[14]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[5]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[9]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[10]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[11]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[12]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[13]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[14]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[15]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[16]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[17]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[18]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[19]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[20]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[21]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[22]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[23]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[24]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[25]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[26]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[27]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[28]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[29]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[30]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[31]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[8]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[9]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[10]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[11]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[12]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[13]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[14]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[15]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[16]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[17]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[18]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[19]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[20]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[21]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[22]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[23]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[24]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[25]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[26]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[27]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[28]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[29]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[30]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[31]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[3]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[4]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[5]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[6]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[7]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[6]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[7]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[8]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[9]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[11]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[14]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[15]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[8]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[9]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[10]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart_de0 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_UART_TXD : std_logic;
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_FL_BYTE_N : std_logic;
SIGNAL ww_FL_CE_N : std_logic;
SIGNAL ww_FL_OE_N : std_logic;
SIGNAL ww_FL_RST_N : std_logic;
SIGNAL ww_FL_RY : std_logic;
SIGNAL ww_FL_WE_N : std_logic;
SIGNAL ww_FL_WP_N : std_logic;
SIGNAL ww_FL_DQ15_AM1 : std_logic;
SIGNAL ww_GPIO_CLKIN_N0 : std_logic;
SIGNAL ww_GPIO_CLKIN_P0 : std_logic;
SIGNAL ww_GPIO_CLKOUT_N0 : std_logic;
SIGNAL ww_GPIO_CLKOUT_P0 : std_logic;
SIGNAL ww_GPIO_CLKIN_P1 : std_logic;
SIGNAL ww_GPIO_CLKIN_N1 : std_logic;
SIGNAL ww_GPIO_CLKOUT_P1 : std_logic;
SIGNAL ww_GPIO_CLKOUT_N1 : std_logic;
SIGNAL ww_PS2_KBCLK : std_logic;
SIGNAL ww_PS2_KBDAT : std_logic;
SIGNAL ww_PS2_MSCLK : std_logic;
SIGNAL ww_PS2_MSDAT : std_logic;
SIGNAL ww_UART_RXD : std_logic;
SIGNAL ww_UART_RTS : std_logic;
SIGNAL ww_UART_CTS : std_logic;
SIGNAL ww_SD_CLK : std_logic;
SIGNAL ww_SD_CMD : std_logic;
SIGNAL ww_SD_DAT0 : std_logic;
SIGNAL ww_SD_DAT3 : std_logic;
SIGNAL ww_SD_WP_N : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_DRAM_CAS_N : std_logic;
SIGNAL ww_DRAM_CS_N : std_logic;
SIGNAL ww_DRAM_CLK : std_logic;
SIGNAL ww_DRAM_CKE : std_logic;
SIGNAL ww_DRAM_LDQM : std_logic;
SIGNAL ww_DRAM_UDQM : std_logic;
SIGNAL ww_DRAM_RAS_N : std_logic;
SIGNAL ww_DRAM_WE_N : std_logic;
SIGNAL ww_CLOCK_50_2 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_FL_ADDR : std_logic_vector(21 DOWNTO 0);
SIGNAL ww_FL_DQ : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_GPIO_0 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_GPIO_1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DRAM_BA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DRAM_DQ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DRAM_ADDR : std_logic_vector(12 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[6]~21\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[7]~22_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|sample_counter|l_cnt[3]~13_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[1]~26_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[2]~28_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[9]~42_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[11]~46_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[15]~54_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[18]~60_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[21]~66_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~1_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|parity_err_tick_o~1_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|parity_err_tick_o~3_combout\ : std_logic;
SIGNAL \error_indicator_1|LessThan0~4_combout\ : std_logic;
SIGNAL \error_indicator_1|LessThan0~5_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~5_combout\ : std_logic;
SIGNAL \FL_BYTE_N~input_o\ : std_logic;
SIGNAL \FL_CE_N~input_o\ : std_logic;
SIGNAL \FL_OE_N~input_o\ : std_logic;
SIGNAL \FL_RST_N~input_o\ : std_logic;
SIGNAL \FL_RY~input_o\ : std_logic;
SIGNAL \FL_WE_N~input_o\ : std_logic;
SIGNAL \FL_WP_N~input_o\ : std_logic;
SIGNAL \FL_DQ15_AM1~input_o\ : std_logic;
SIGNAL \GPIO_CLKIN_N0~input_o\ : std_logic;
SIGNAL \GPIO_CLKIN_P0~input_o\ : std_logic;
SIGNAL \GPIO_CLKOUT_N0~input_o\ : std_logic;
SIGNAL \GPIO_CLKOUT_P0~input_o\ : std_logic;
SIGNAL \GPIO_CLKIN_P1~input_o\ : std_logic;
SIGNAL \GPIO_CLKIN_N1~input_o\ : std_logic;
SIGNAL \GPIO_CLKOUT_P1~input_o\ : std_logic;
SIGNAL \GPIO_CLKOUT_N1~input_o\ : std_logic;
SIGNAL \PS2_KBCLK~input_o\ : std_logic;
SIGNAL \PS2_KBDAT~input_o\ : std_logic;
SIGNAL \PS2_MSCLK~input_o\ : std_logic;
SIGNAL \PS2_MSDAT~input_o\ : std_logic;
SIGNAL \UART_RTS~input_o\ : std_logic;
SIGNAL \UART_CTS~input_o\ : std_logic;
SIGNAL \SD_CLK~input_o\ : std_logic;
SIGNAL \SD_CMD~input_o\ : std_logic;
SIGNAL \SD_DAT0~input_o\ : std_logic;
SIGNAL \SD_DAT3~input_o\ : std_logic;
SIGNAL \SD_WP_N~input_o\ : std_logic;
SIGNAL \LCD_RW~input_o\ : std_logic;
SIGNAL \LCD_RS~input_o\ : std_logic;
SIGNAL \LCD_EN~input_o\ : std_logic;
SIGNAL \LCD_BLON~input_o\ : std_logic;
SIGNAL \VGA_HS~input_o\ : std_logic;
SIGNAL \VGA_VS~input_o\ : std_logic;
SIGNAL \DRAM_CAS_N~input_o\ : std_logic;
SIGNAL \DRAM_CS_N~input_o\ : std_logic;
SIGNAL \DRAM_CLK~input_o\ : std_logic;
SIGNAL \DRAM_CKE~input_o\ : std_logic;
SIGNAL \DRAM_LDQM~input_o\ : std_logic;
SIGNAL \DRAM_UDQM~input_o\ : std_logic;
SIGNAL \DRAM_RAS_N~input_o\ : std_logic;
SIGNAL \DRAM_WE_N~input_o\ : std_logic;
SIGNAL \CLOCK_50_2~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \FL_ADDR[0]~input_o\ : std_logic;
SIGNAL \FL_ADDR[1]~input_o\ : std_logic;
SIGNAL \FL_ADDR[2]~input_o\ : std_logic;
SIGNAL \FL_ADDR[3]~input_o\ : std_logic;
SIGNAL \FL_ADDR[4]~input_o\ : std_logic;
SIGNAL \FL_ADDR[5]~input_o\ : std_logic;
SIGNAL \FL_ADDR[6]~input_o\ : std_logic;
SIGNAL \FL_ADDR[7]~input_o\ : std_logic;
SIGNAL \FL_ADDR[8]~input_o\ : std_logic;
SIGNAL \FL_ADDR[9]~input_o\ : std_logic;
SIGNAL \FL_ADDR[10]~input_o\ : std_logic;
SIGNAL \FL_ADDR[11]~input_o\ : std_logic;
SIGNAL \FL_ADDR[12]~input_o\ : std_logic;
SIGNAL \FL_ADDR[13]~input_o\ : std_logic;
SIGNAL \FL_ADDR[14]~input_o\ : std_logic;
SIGNAL \FL_ADDR[15]~input_o\ : std_logic;
SIGNAL \FL_ADDR[16]~input_o\ : std_logic;
SIGNAL \FL_ADDR[17]~input_o\ : std_logic;
SIGNAL \FL_ADDR[18]~input_o\ : std_logic;
SIGNAL \FL_ADDR[19]~input_o\ : std_logic;
SIGNAL \FL_ADDR[20]~input_o\ : std_logic;
SIGNAL \FL_ADDR[21]~input_o\ : std_logic;
SIGNAL \FL_DQ[0]~input_o\ : std_logic;
SIGNAL \FL_DQ[1]~input_o\ : std_logic;
SIGNAL \FL_DQ[2]~input_o\ : std_logic;
SIGNAL \FL_DQ[3]~input_o\ : std_logic;
SIGNAL \FL_DQ[4]~input_o\ : std_logic;
SIGNAL \FL_DQ[5]~input_o\ : std_logic;
SIGNAL \FL_DQ[6]~input_o\ : std_logic;
SIGNAL \FL_DQ[7]~input_o\ : std_logic;
SIGNAL \FL_DQ[8]~input_o\ : std_logic;
SIGNAL \FL_DQ[9]~input_o\ : std_logic;
SIGNAL \FL_DQ[10]~input_o\ : std_logic;
SIGNAL \FL_DQ[11]~input_o\ : std_logic;
SIGNAL \FL_DQ[12]~input_o\ : std_logic;
SIGNAL \FL_DQ[13]~input_o\ : std_logic;
SIGNAL \FL_DQ[14]~input_o\ : std_logic;
SIGNAL \GPIO_0[0]~input_o\ : std_logic;
SIGNAL \GPIO_0[1]~input_o\ : std_logic;
SIGNAL \GPIO_0[2]~input_o\ : std_logic;
SIGNAL \GPIO_0[3]~input_o\ : std_logic;
SIGNAL \GPIO_0[4]~input_o\ : std_logic;
SIGNAL \GPIO_0[5]~input_o\ : std_logic;
SIGNAL \GPIO_0[6]~input_o\ : std_logic;
SIGNAL \GPIO_0[7]~input_o\ : std_logic;
SIGNAL \GPIO_0[8]~input_o\ : std_logic;
SIGNAL \GPIO_0[9]~input_o\ : std_logic;
SIGNAL \GPIO_0[10]~input_o\ : std_logic;
SIGNAL \GPIO_0[11]~input_o\ : std_logic;
SIGNAL \GPIO_0[12]~input_o\ : std_logic;
SIGNAL \GPIO_0[13]~input_o\ : std_logic;
SIGNAL \GPIO_0[14]~input_o\ : std_logic;
SIGNAL \GPIO_0[15]~input_o\ : std_logic;
SIGNAL \GPIO_0[16]~input_o\ : std_logic;
SIGNAL \GPIO_0[17]~input_o\ : std_logic;
SIGNAL \GPIO_0[18]~input_o\ : std_logic;
SIGNAL \GPIO_0[19]~input_o\ : std_logic;
SIGNAL \GPIO_0[20]~input_o\ : std_logic;
SIGNAL \GPIO_0[21]~input_o\ : std_logic;
SIGNAL \GPIO_0[22]~input_o\ : std_logic;
SIGNAL \GPIO_0[23]~input_o\ : std_logic;
SIGNAL \GPIO_0[24]~input_o\ : std_logic;
SIGNAL \GPIO_0[25]~input_o\ : std_logic;
SIGNAL \GPIO_0[26]~input_o\ : std_logic;
SIGNAL \GPIO_0[27]~input_o\ : std_logic;
SIGNAL \GPIO_0[28]~input_o\ : std_logic;
SIGNAL \GPIO_0[29]~input_o\ : std_logic;
SIGNAL \GPIO_0[30]~input_o\ : std_logic;
SIGNAL \GPIO_0[31]~input_o\ : std_logic;
SIGNAL \GPIO_1[0]~input_o\ : std_logic;
SIGNAL \GPIO_1[1]~input_o\ : std_logic;
SIGNAL \GPIO_1[2]~input_o\ : std_logic;
SIGNAL \GPIO_1[3]~input_o\ : std_logic;
SIGNAL \GPIO_1[4]~input_o\ : std_logic;
SIGNAL \GPIO_1[5]~input_o\ : std_logic;
SIGNAL \GPIO_1[6]~input_o\ : std_logic;
SIGNAL \GPIO_1[7]~input_o\ : std_logic;
SIGNAL \GPIO_1[8]~input_o\ : std_logic;
SIGNAL \GPIO_1[9]~input_o\ : std_logic;
SIGNAL \GPIO_1[10]~input_o\ : std_logic;
SIGNAL \GPIO_1[11]~input_o\ : std_logic;
SIGNAL \GPIO_1[12]~input_o\ : std_logic;
SIGNAL \GPIO_1[13]~input_o\ : std_logic;
SIGNAL \GPIO_1[14]~input_o\ : std_logic;
SIGNAL \GPIO_1[15]~input_o\ : std_logic;
SIGNAL \GPIO_1[16]~input_o\ : std_logic;
SIGNAL \GPIO_1[17]~input_o\ : std_logic;
SIGNAL \GPIO_1[18]~input_o\ : std_logic;
SIGNAL \GPIO_1[19]~input_o\ : std_logic;
SIGNAL \GPIO_1[20]~input_o\ : std_logic;
SIGNAL \GPIO_1[21]~input_o\ : std_logic;
SIGNAL \GPIO_1[22]~input_o\ : std_logic;
SIGNAL \GPIO_1[23]~input_o\ : std_logic;
SIGNAL \GPIO_1[24]~input_o\ : std_logic;
SIGNAL \GPIO_1[25]~input_o\ : std_logic;
SIGNAL \GPIO_1[26]~input_o\ : std_logic;
SIGNAL \GPIO_1[27]~input_o\ : std_logic;
SIGNAL \GPIO_1[28]~input_o\ : std_logic;
SIGNAL \GPIO_1[29]~input_o\ : std_logic;
SIGNAL \GPIO_1[30]~input_o\ : std_logic;
SIGNAL \GPIO_1[31]~input_o\ : std_logic;
SIGNAL \LCD_DATA[0]~input_o\ : std_logic;
SIGNAL \LCD_DATA[1]~input_o\ : std_logic;
SIGNAL \LCD_DATA[2]~input_o\ : std_logic;
SIGNAL \LCD_DATA[3]~input_o\ : std_logic;
SIGNAL \LCD_DATA[4]~input_o\ : std_logic;
SIGNAL \LCD_DATA[5]~input_o\ : std_logic;
SIGNAL \LCD_DATA[6]~input_o\ : std_logic;
SIGNAL \LCD_DATA[7]~input_o\ : std_logic;
SIGNAL \VGA_G[0]~input_o\ : std_logic;
SIGNAL \VGA_G[1]~input_o\ : std_logic;
SIGNAL \VGA_G[2]~input_o\ : std_logic;
SIGNAL \VGA_G[3]~input_o\ : std_logic;
SIGNAL \VGA_R[0]~input_o\ : std_logic;
SIGNAL \VGA_R[1]~input_o\ : std_logic;
SIGNAL \VGA_R[2]~input_o\ : std_logic;
SIGNAL \VGA_R[3]~input_o\ : std_logic;
SIGNAL \VGA_B[0]~input_o\ : std_logic;
SIGNAL \VGA_B[1]~input_o\ : std_logic;
SIGNAL \VGA_B[2]~input_o\ : std_logic;
SIGNAL \VGA_B[3]~input_o\ : std_logic;
SIGNAL \HEX0[0]~input_o\ : std_logic;
SIGNAL \HEX0[1]~input_o\ : std_logic;
SIGNAL \HEX0[2]~input_o\ : std_logic;
SIGNAL \HEX0[3]~input_o\ : std_logic;
SIGNAL \HEX0[4]~input_o\ : std_logic;
SIGNAL \HEX0[5]~input_o\ : std_logic;
SIGNAL \HEX0[6]~input_o\ : std_logic;
SIGNAL \HEX0[7]~input_o\ : std_logic;
SIGNAL \HEX1[0]~input_o\ : std_logic;
SIGNAL \HEX1[1]~input_o\ : std_logic;
SIGNAL \HEX1[2]~input_o\ : std_logic;
SIGNAL \HEX1[3]~input_o\ : std_logic;
SIGNAL \HEX1[4]~input_o\ : std_logic;
SIGNAL \HEX1[5]~input_o\ : std_logic;
SIGNAL \HEX1[6]~input_o\ : std_logic;
SIGNAL \HEX1[7]~input_o\ : std_logic;
SIGNAL \HEX2[0]~input_o\ : std_logic;
SIGNAL \HEX2[1]~input_o\ : std_logic;
SIGNAL \HEX2[2]~input_o\ : std_logic;
SIGNAL \HEX2[3]~input_o\ : std_logic;
SIGNAL \HEX2[4]~input_o\ : std_logic;
SIGNAL \HEX2[5]~input_o\ : std_logic;
SIGNAL \HEX2[6]~input_o\ : std_logic;
SIGNAL \HEX2[7]~input_o\ : std_logic;
SIGNAL \HEX3[0]~input_o\ : std_logic;
SIGNAL \HEX3[1]~input_o\ : std_logic;
SIGNAL \HEX3[2]~input_o\ : std_logic;
SIGNAL \HEX3[3]~input_o\ : std_logic;
SIGNAL \HEX3[4]~input_o\ : std_logic;
SIGNAL \HEX3[5]~input_o\ : std_logic;
SIGNAL \HEX3[6]~input_o\ : std_logic;
SIGNAL \HEX3[7]~input_o\ : std_logic;
SIGNAL \DRAM_BA[0]~input_o\ : std_logic;
SIGNAL \DRAM_BA[1]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \DRAM_ADDR[0]~input_o\ : std_logic;
SIGNAL \DRAM_ADDR[1]~input_o\ : std_logic;
SIGNAL \DRAM_ADDR[2]~input_o\ : std_logic;
SIGNAL \DRAM_ADDR[3]~input_o\ : std_logic;
SIGNAL \DRAM_ADDR[4]~input_o\ : std_logic;
SIGNAL \DRAM_ADDR[5]~input_o\ : std_logic;
SIGNAL \DRAM_ADDR[6]~input_o\ : std_logic;
SIGNAL \DRAM_ADDR[7]~input_o\ : std_logic;
SIGNAL \DRAM_ADDR[8]~input_o\ : std_logic;
SIGNAL \DRAM_ADDR[9]~input_o\ : std_logic;
SIGNAL \DRAM_ADDR[10]~input_o\ : std_logic;
SIGNAL \DRAM_ADDR[11]~input_o\ : std_logic;
SIGNAL \DRAM_ADDR[12]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|rx_filter|l_sreg[1]~feeder_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|sample_counter|l_cnt[0]~7_combout\ : std_logic;
SIGNAL \reset_control_1|count[0]~6_combout\ : std_logic;
SIGNAL \reset_control_1|count[1]~8\ : std_logic;
SIGNAL \reset_control_1|count[2]~9_combout\ : std_logic;
SIGNAL \reset_control_1|count[2]~10\ : std_logic;
SIGNAL \reset_control_1|count[3]~11_combout\ : std_logic;
SIGNAL \reset_control_1|count[3]~12\ : std_logic;
SIGNAL \reset_control_1|count[4]~13_combout\ : std_logic;
SIGNAL \reset_control_1|count[4]~14\ : std_logic;
SIGNAL \reset_control_1|count[5]~15_combout\ : std_logic;
SIGNAL \reset_control_1|count[5]~16\ : std_logic;
SIGNAL \reset_control_1|count[6]~17_combout\ : std_logic;
SIGNAL \reset_control_1|count[1]~7_combout\ : std_logic;
SIGNAL \reset_control_1|LessThan0~0_combout\ : std_logic;
SIGNAL \reset_control_1|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|sample_counter|l_cnt[1]~10\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|sample_counter|l_cnt[2]~11_combout\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[0]~8_combout\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[2]~13\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[3]~15\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[4]~17\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[5]~18_combout\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[4]~16_combout\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[5]~19\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[6]~20_combout\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|Equal0~1_combout\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|Equal0~2_combout\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[0]~9\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[1]~11\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[2]~12_combout\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[1]~10_combout\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[3]~14_combout\ : std_logic;
SIGNAL \uart_1|baud_rate_generator_1|Equal0~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|sample_counter|l_cnt[4]~17_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~4_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~2_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.DATA_S~q\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~1_combout\ : std_logic;
SIGNAL \UART_RXD~input_o\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|rx_filter|l_fsig_reg_next~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~2_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~3_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|sample_counter|l_cnt[0]~8\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|sample_counter|l_cnt[1]~9_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|sample_counter|l_cnt[2]~12\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|sample_counter|l_cnt[3]~14\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|sample_counter|l_cnt[4]~15_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~2_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector3~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.STOP_S~q\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~3_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~4_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.IDLE_S~q\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_idle_start_trans~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector1~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg~2_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg~1_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|p_shift_reg|reg~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg~7_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg~8_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg~6_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg~5_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg~4_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg~3_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[0]~24_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \err_ind_rst~combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[0]~25\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[1]~27\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[2]~29\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[3]~30_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[3]~31\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[4]~32_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[4]~33\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[5]~34_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[5]~35\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[6]~36_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[6]~37\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[7]~39\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[8]~40_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[8]~41\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[9]~43\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[10]~44_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[10]~45\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[11]~47\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[12]~48_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[12]~49\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[13]~50_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[13]~51\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[14]~52_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[14]~53\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[15]~55\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[16]~56_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[16]~57\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[17]~58_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[17]~59\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[18]~61\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[19]~62_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[19]~63\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[20]~64_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[20]~65\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[21]~67\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[22]~68_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[22]~69\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[23]~70_combout\ : std_logic;
SIGNAL \error_indicator_1|LessThan0~0_combout\ : std_logic;
SIGNAL \error_indicator_1|LessThan0~1_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter[7]~38_combout\ : std_logic;
SIGNAL \error_indicator_1|LessThan0~2_combout\ : std_logic;
SIGNAL \error_indicator_1|LessThan0~3_combout\ : std_logic;
SIGNAL \error_indicator_1|LessThan0~6_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash~0_combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|parity_err_tick_o~0_combout\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \uart_1|uart_receiver_1|parity_err_tick_o~2_combout\ : std_logic;
SIGNAL \error_indicator_1|l_parity_err~0_combout\ : std_logic;
SIGNAL \error_indicator_1|l_parity_err~q\ : std_logic;
SIGNAL \error_indicator_1|parity_err_led_o~combout\ : std_logic;
SIGNAL \error_indicator_1|l_flash_counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \reset_control_1|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_1|uart_receiver_1|sample_counter|l_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_1|uart_receiver_1|r_shift_reg|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_1|uart_receiver_1|p_shift_reg|reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \uart_1|uart_receiver_1|rx_filter|l_sreg\ : std_logic_vector(0 TO 1);
SIGNAL \reset_control_1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_CLOCK_50~inputclkctrl_outclk\ : std_logic;

BEGIN

UART_TXD <= ww_UART_TXD;
LEDG <= ww_LEDG;
ww_FL_BYTE_N <= FL_BYTE_N;
ww_FL_CE_N <= FL_CE_N;
ww_FL_OE_N <= FL_OE_N;
ww_FL_RST_N <= FL_RST_N;
ww_FL_RY <= FL_RY;
ww_FL_WE_N <= FL_WE_N;
ww_FL_WP_N <= FL_WP_N;
ww_FL_DQ15_AM1 <= FL_DQ15_AM1;
ww_GPIO_CLKIN_N0 <= GPIO_CLKIN_N0;
ww_GPIO_CLKIN_P0 <= GPIO_CLKIN_P0;
ww_GPIO_CLKOUT_N0 <= GPIO_CLKOUT_N0;
ww_GPIO_CLKOUT_P0 <= GPIO_CLKOUT_P0;
ww_GPIO_CLKIN_P1 <= GPIO_CLKIN_P1;
ww_GPIO_CLKIN_N1 <= GPIO_CLKIN_N1;
ww_GPIO_CLKOUT_P1 <= GPIO_CLKOUT_P1;
ww_GPIO_CLKOUT_N1 <= GPIO_CLKOUT_N1;
ww_PS2_KBCLK <= PS2_KBCLK;
ww_PS2_KBDAT <= PS2_KBDAT;
ww_PS2_MSCLK <= PS2_MSCLK;
ww_PS2_MSDAT <= PS2_MSDAT;
ww_UART_RXD <= UART_RXD;
ww_UART_RTS <= UART_RTS;
ww_UART_CTS <= UART_CTS;
ww_SD_CLK <= SD_CLK;
ww_SD_CMD <= SD_CMD;
ww_SD_DAT0 <= SD_DAT0;
ww_SD_DAT3 <= SD_DAT3;
ww_SD_WP_N <= SD_WP_N;
ww_LCD_RW <= LCD_RW;
ww_LCD_RS <= LCD_RS;
ww_LCD_EN <= LCD_EN;
ww_LCD_BLON <= LCD_BLON;
ww_VGA_HS <= VGA_HS;
ww_VGA_VS <= VGA_VS;
ww_CLOCK_50 <= CLOCK_50;
ww_DRAM_CAS_N <= DRAM_CAS_N;
ww_DRAM_CS_N <= DRAM_CS_N;
ww_DRAM_CLK <= DRAM_CLK;
ww_DRAM_CKE <= DRAM_CKE;
ww_DRAM_LDQM <= DRAM_LDQM;
ww_DRAM_UDQM <= DRAM_UDQM;
ww_DRAM_RAS_N <= DRAM_RAS_N;
ww_DRAM_WE_N <= DRAM_WE_N;
ww_CLOCK_50_2 <= CLOCK_50_2;
ww_SW <= SW;
ww_KEY <= KEY;
ww_FL_ADDR <= FL_ADDR;
ww_FL_DQ <= FL_DQ;
ww_GPIO_0 <= GPIO_0;
ww_GPIO_1 <= GPIO_1;
ww_LCD_DATA <= LCD_DATA;
ww_VGA_G <= VGA_G;
ww_VGA_R <= VGA_R;
ww_VGA_B <= VGA_B;
ww_HEX0 <= HEX0;
ww_HEX1 <= HEX1;
ww_HEX2 <= HEX2;
ww_HEX3 <= HEX3;
ww_DRAM_BA <= DRAM_BA;
ww_DRAM_DQ <= DRAM_DQ;
ww_DRAM_ADDR <= DRAM_ADDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\reset_control_1|ALT_INV_LessThan0~1_combout\ <= NOT \reset_control_1|LessThan0~1_combout\;
\ALT_INV_CLOCK_50~inputclkctrl_outclk\ <= NOT \CLOCK_50~inputclkctrl_outclk\;

-- Location: FF_X1_Y22_N19
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[7]~22_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(7));

-- Location: FF_X2_Y21_N23
\uart_1|uart_receiver_1|sample_counter|l_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|sample_counter|l_cnt[3]~13_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~3_combout\,
	ena => \uart_1|uart_receiver_1|sample_counter|l_cnt[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|sample_counter|l_cnt\(3));

-- Location: FF_X2_Y23_N31
\error_indicator_1|l_flash_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[11]~46_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(11));

-- Location: FF_X2_Y23_N27
\error_indicator_1|l_flash_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[9]~42_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(9));

-- Location: FF_X2_Y22_N7
\error_indicator_1|l_flash_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[15]~54_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(15));

-- Location: FF_X2_Y22_N13
\error_indicator_1|l_flash_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[18]~60_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(18));

-- Location: FF_X2_Y22_N19
\error_indicator_1|l_flash_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[21]~66_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(21));

-- Location: LCCOMB_X1_Y22_N16
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[6]~20_combout\ = (\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(6) & (\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[5]~19\ $ (GND))) # (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(6) & 
-- (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[5]~19\ & VCC))
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[6]~21\ = CARRY((\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(6) & !\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(6),
	datad => VCC,
	cin => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[5]~19\,
	combout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[6]~20_combout\,
	cout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[6]~21\);

-- Location: LCCOMB_X1_Y22_N18
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[7]~22_combout\ = \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[6]~21\ $ (\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(7),
	cin => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[6]~21\,
	combout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[7]~22_combout\);

-- Location: LCCOMB_X2_Y21_N22
\uart_1|uart_receiver_1|sample_counter|l_cnt[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|sample_counter|l_cnt[3]~13_combout\ = (\uart_1|uart_receiver_1|sample_counter|l_cnt\(3) & (!\uart_1|uart_receiver_1|sample_counter|l_cnt[2]~12\)) # (!\uart_1|uart_receiver_1|sample_counter|l_cnt\(3) & 
-- ((\uart_1|uart_receiver_1|sample_counter|l_cnt[2]~12\) # (GND)))
-- \uart_1|uart_receiver_1|sample_counter|l_cnt[3]~14\ = CARRY((!\uart_1|uart_receiver_1|sample_counter|l_cnt[2]~12\) # (!\uart_1|uart_receiver_1|sample_counter|l_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|sample_counter|l_cnt\(3),
	datad => VCC,
	cin => \uart_1|uart_receiver_1|sample_counter|l_cnt[2]~12\,
	combout => \uart_1|uart_receiver_1|sample_counter|l_cnt[3]~13_combout\,
	cout => \uart_1|uart_receiver_1|sample_counter|l_cnt[3]~14\);

-- Location: FF_X2_Y23_N13
\error_indicator_1|l_flash_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[2]~28_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(2));

-- Location: FF_X2_Y23_N11
\error_indicator_1|l_flash_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[1]~26_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(1));

-- Location: LCCOMB_X2_Y23_N10
\error_indicator_1|l_flash_counter[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[1]~26_combout\ = (\error_indicator_1|l_flash_counter\(1) & (!\error_indicator_1|l_flash_counter[0]~25\)) # (!\error_indicator_1|l_flash_counter\(1) & ((\error_indicator_1|l_flash_counter[0]~25\) # (GND)))
-- \error_indicator_1|l_flash_counter[1]~27\ = CARRY((!\error_indicator_1|l_flash_counter[0]~25\) # (!\error_indicator_1|l_flash_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(1),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[0]~25\,
	combout => \error_indicator_1|l_flash_counter[1]~26_combout\,
	cout => \error_indicator_1|l_flash_counter[1]~27\);

-- Location: LCCOMB_X2_Y23_N12
\error_indicator_1|l_flash_counter[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[2]~28_combout\ = (\error_indicator_1|l_flash_counter\(2) & (\error_indicator_1|l_flash_counter[1]~27\ $ (GND))) # (!\error_indicator_1|l_flash_counter\(2) & (!\error_indicator_1|l_flash_counter[1]~27\ & VCC))
-- \error_indicator_1|l_flash_counter[2]~29\ = CARRY((\error_indicator_1|l_flash_counter\(2) & !\error_indicator_1|l_flash_counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(2),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[1]~27\,
	combout => \error_indicator_1|l_flash_counter[2]~28_combout\,
	cout => \error_indicator_1|l_flash_counter[2]~29\);

-- Location: LCCOMB_X2_Y23_N26
\error_indicator_1|l_flash_counter[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[9]~42_combout\ = (\error_indicator_1|l_flash_counter\(9) & (!\error_indicator_1|l_flash_counter[8]~41\)) # (!\error_indicator_1|l_flash_counter\(9) & ((\error_indicator_1|l_flash_counter[8]~41\) # (GND)))
-- \error_indicator_1|l_flash_counter[9]~43\ = CARRY((!\error_indicator_1|l_flash_counter[8]~41\) # (!\error_indicator_1|l_flash_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(9),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[8]~41\,
	combout => \error_indicator_1|l_flash_counter[9]~42_combout\,
	cout => \error_indicator_1|l_flash_counter[9]~43\);

-- Location: LCCOMB_X2_Y23_N30
\error_indicator_1|l_flash_counter[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[11]~46_combout\ = (\error_indicator_1|l_flash_counter\(11) & (!\error_indicator_1|l_flash_counter[10]~45\)) # (!\error_indicator_1|l_flash_counter\(11) & ((\error_indicator_1|l_flash_counter[10]~45\) # (GND)))
-- \error_indicator_1|l_flash_counter[11]~47\ = CARRY((!\error_indicator_1|l_flash_counter[10]~45\) # (!\error_indicator_1|l_flash_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(11),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[10]~45\,
	combout => \error_indicator_1|l_flash_counter[11]~46_combout\,
	cout => \error_indicator_1|l_flash_counter[11]~47\);

-- Location: LCCOMB_X2_Y22_N6
\error_indicator_1|l_flash_counter[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[15]~54_combout\ = (\error_indicator_1|l_flash_counter\(15) & (!\error_indicator_1|l_flash_counter[14]~53\)) # (!\error_indicator_1|l_flash_counter\(15) & ((\error_indicator_1|l_flash_counter[14]~53\) # (GND)))
-- \error_indicator_1|l_flash_counter[15]~55\ = CARRY((!\error_indicator_1|l_flash_counter[14]~53\) # (!\error_indicator_1|l_flash_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(15),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[14]~53\,
	combout => \error_indicator_1|l_flash_counter[15]~54_combout\,
	cout => \error_indicator_1|l_flash_counter[15]~55\);

-- Location: LCCOMB_X2_Y22_N12
\error_indicator_1|l_flash_counter[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[18]~60_combout\ = (\error_indicator_1|l_flash_counter\(18) & (\error_indicator_1|l_flash_counter[17]~59\ $ (GND))) # (!\error_indicator_1|l_flash_counter\(18) & (!\error_indicator_1|l_flash_counter[17]~59\ & VCC))
-- \error_indicator_1|l_flash_counter[18]~61\ = CARRY((\error_indicator_1|l_flash_counter\(18) & !\error_indicator_1|l_flash_counter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(18),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[17]~59\,
	combout => \error_indicator_1|l_flash_counter[18]~60_combout\,
	cout => \error_indicator_1|l_flash_counter[18]~61\);

-- Location: LCCOMB_X2_Y22_N18
\error_indicator_1|l_flash_counter[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[21]~66_combout\ = (\error_indicator_1|l_flash_counter\(21) & (!\error_indicator_1|l_flash_counter[20]~65\)) # (!\error_indicator_1|l_flash_counter\(21) & ((\error_indicator_1|l_flash_counter[20]~65\) # (GND)))
-- \error_indicator_1|l_flash_counter[21]~67\ = CARRY((!\error_indicator_1|l_flash_counter[20]~65\) # (!\error_indicator_1|l_flash_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(21),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[20]~65\,
	combout => \error_indicator_1|l_flash_counter[21]~66_combout\,
	cout => \error_indicator_1|l_flash_counter[21]~67\);

-- Location: FF_X1_Y23_N31
\uart_1|uart_receiver_1|r_shift_reg|reg[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~3_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X2_Y21_N26
\uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~0_combout\ = (!\uart_1|uart_receiver_1|sample_counter|l_cnt\(2) & (!\uart_1|uart_receiver_1|sample_counter|l_cnt\(3) & ((!\uart_1|uart_receiver_1|sample_counter|l_cnt\(0)) # 
-- (!\uart_1|uart_receiver_1|sample_counter|l_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|sample_counter|l_cnt\(2),
	datab => \uart_1|uart_receiver_1|sample_counter|l_cnt\(1),
	datac => \uart_1|uart_receiver_1|sample_counter|l_cnt\(3),
	datad => \uart_1|uart_receiver_1|sample_counter|l_cnt\(0),
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y21_N10
\uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~1_combout\ = (\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~0_combout\) # (!\uart_1|uart_receiver_1|sample_counter|l_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \uart_1|uart_receiver_1|sample_counter|l_cnt\(4),
	datad => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~0_combout\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y23_N10
\uart_1|uart_receiver_1|parity_err_tick_o~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|parity_err_tick_o~1_combout\ = \uart_1|uart_receiver_1|r_shift_reg|reg[2]~_Duplicate_1_q\ $ (\uart_1|uart_receiver_1|r_shift_reg|reg[4]~_Duplicate_1_q\ $ (\uart_1|uart_receiver_1|r_shift_reg|reg[3]~_Duplicate_1_q\ $ 
-- (\uart_1|uart_receiver_1|r_shift_reg|reg[5]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|r_shift_reg|reg[2]~_Duplicate_1_q\,
	datab => \uart_1|uart_receiver_1|r_shift_reg|reg[4]~_Duplicate_1_q\,
	datac => \uart_1|uart_receiver_1|r_shift_reg|reg[3]~_Duplicate_1_q\,
	datad => \uart_1|uart_receiver_1|r_shift_reg|reg[5]~_Duplicate_1_q\,
	combout => \uart_1|uart_receiver_1|parity_err_tick_o~1_combout\);

-- Location: LCCOMB_X1_Y23_N22
\uart_1|uart_receiver_1|parity_err_tick_o~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|parity_err_tick_o~3_combout\ = (\SW[3]~input_o\ & \uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => \uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\,
	combout => \uart_1|uart_receiver_1|parity_err_tick_o~3_combout\);

-- Location: LCCOMB_X3_Y22_N0
\error_indicator_1|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|LessThan0~4_combout\ = (((!\error_indicator_1|l_flash_counter\(16) & !\error_indicator_1|l_flash_counter\(15))) # (!\error_indicator_1|l_flash_counter\(17))) # (!\error_indicator_1|l_flash_counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(16),
	datab => \error_indicator_1|l_flash_counter\(15),
	datac => \error_indicator_1|l_flash_counter\(18),
	datad => \error_indicator_1|l_flash_counter\(17),
	combout => \error_indicator_1|LessThan0~4_combout\);

-- Location: LCCOMB_X3_Y22_N2
\error_indicator_1|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|LessThan0~5_combout\ = (((\error_indicator_1|LessThan0~4_combout\) # (!\error_indicator_1|l_flash_counter\(20))) # (!\error_indicator_1|l_flash_counter\(21))) # (!\error_indicator_1|l_flash_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(19),
	datab => \error_indicator_1|l_flash_counter\(21),
	datac => \error_indicator_1|l_flash_counter\(20),
	datad => \error_indicator_1|LessThan0~4_combout\,
	combout => \error_indicator_1|LessThan0~5_combout\);

-- Location: FF_X2_Y21_N13
\uart_1|uart_receiver_1|rx_filter|l_sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|rx_filter|l_sreg[1]~feeder_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|rx_filter|l_sreg\(1));

-- Location: LCCOMB_X1_Y21_N30
\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~5_combout\ = (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~1_combout\ & (\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~2_combout\ & (\uart_1|baud_rate_generator_1|Equal0~1_combout\ & 
-- \uart_1|baud_rate_generator_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~1_combout\,
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~2_combout\,
	datac => \uart_1|baud_rate_generator_1|Equal0~1_combout\,
	datad => \uart_1|baud_rate_generator_1|Equal0~0_combout\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~5_combout\);

-- Location: IOIBUF_X0_Y23_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X2_Y21_N12
\uart_1|uart_receiver_1|rx_filter|l_sreg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|rx_filter|l_sreg[1]~feeder_combout\ = \uart_1|uart_receiver_1|rx_filter|l_sreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_1|uart_receiver_1|rx_filter|l_sreg\(0),
	combout => \uart_1|uart_receiver_1|rx_filter|l_sreg[1]~feeder_combout\);

-- Location: IOOBUF_X41_Y8_N2
\UART_TXD~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UART_TXD);

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_1|uart_receiver_1|r_shift_reg|reg\(0),
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X0_Y20_N2
\LEDG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_1|uart_receiver_1|r_shift_reg|reg\(1),
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X0_Y21_N23
\LEDG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_1|uart_receiver_1|r_shift_reg|reg\(2),
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X0_Y21_N16
\LEDG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_1|uart_receiver_1|r_shift_reg|reg\(3),
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X0_Y24_N23
\LEDG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_1|uart_receiver_1|r_shift_reg|reg\(4),
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X0_Y24_N16
\LEDG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_1|uart_receiver_1|r_shift_reg|reg\(5),
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X0_Y26_N23
\LEDG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_1|uart_receiver_1|r_shift_reg|reg\(6),
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X0_Y26_N16
\LEDG[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_1|uart_receiver_1|r_shift_reg|reg\(7),
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X0_Y27_N9
\LEDG[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(8));

-- Location: IOOBUF_X0_Y27_N16
\LEDG[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error_indicator_1|parity_err_led_o~combout\,
	devoe => ww_devoe,
	o => ww_LEDG(9));

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y21_N16
\uart_1|uart_receiver_1|sample_counter|l_cnt[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|sample_counter|l_cnt[0]~7_combout\ = \uart_1|uart_receiver_1|sample_counter|l_cnt\(0) $ (VCC)
-- \uart_1|uart_receiver_1|sample_counter|l_cnt[0]~8\ = CARRY(\uart_1|uart_receiver_1|sample_counter|l_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|uart_receiver_1|sample_counter|l_cnt\(0),
	datad => VCC,
	combout => \uart_1|uart_receiver_1|sample_counter|l_cnt[0]~7_combout\,
	cout => \uart_1|uart_receiver_1|sample_counter|l_cnt[0]~8\);

-- Location: LCCOMB_X3_Y21_N0
\reset_control_1|count[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|count[0]~6_combout\ = \reset_control_1|LessThan0~1_combout\ $ (\reset_control_1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_control_1|LessThan0~1_combout\,
	datac => \reset_control_1|count\(0),
	combout => \reset_control_1|count[0]~6_combout\);

-- Location: FF_X3_Y21_N1
\reset_control_1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_control_1|count[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_control_1|count\(0));

-- Location: LCCOMB_X3_Y21_N14
\reset_control_1|count[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|count[1]~7_combout\ = (\reset_control_1|count\(1) & (\reset_control_1|count\(0) $ (VCC))) # (!\reset_control_1|count\(1) & (\reset_control_1|count\(0) & VCC))
-- \reset_control_1|count[1]~8\ = CARRY((\reset_control_1|count\(1) & \reset_control_1|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_control_1|count\(1),
	datab => \reset_control_1|count\(0),
	datad => VCC,
	combout => \reset_control_1|count[1]~7_combout\,
	cout => \reset_control_1|count[1]~8\);

-- Location: LCCOMB_X3_Y21_N16
\reset_control_1|count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|count[2]~9_combout\ = (\reset_control_1|count\(2) & (!\reset_control_1|count[1]~8\)) # (!\reset_control_1|count\(2) & ((\reset_control_1|count[1]~8\) # (GND)))
-- \reset_control_1|count[2]~10\ = CARRY((!\reset_control_1|count[1]~8\) # (!\reset_control_1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reset_control_1|count\(2),
	datad => VCC,
	cin => \reset_control_1|count[1]~8\,
	combout => \reset_control_1|count[2]~9_combout\,
	cout => \reset_control_1|count[2]~10\);

-- Location: FF_X3_Y21_N17
\reset_control_1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_control_1|count[2]~9_combout\,
	ena => \reset_control_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_control_1|count\(2));

-- Location: LCCOMB_X3_Y21_N18
\reset_control_1|count[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|count[3]~11_combout\ = (\reset_control_1|count\(3) & (\reset_control_1|count[2]~10\ $ (GND))) # (!\reset_control_1|count\(3) & (!\reset_control_1|count[2]~10\ & VCC))
-- \reset_control_1|count[3]~12\ = CARRY((\reset_control_1|count\(3) & !\reset_control_1|count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reset_control_1|count\(3),
	datad => VCC,
	cin => \reset_control_1|count[2]~10\,
	combout => \reset_control_1|count[3]~11_combout\,
	cout => \reset_control_1|count[3]~12\);

-- Location: FF_X3_Y21_N19
\reset_control_1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_control_1|count[3]~11_combout\,
	ena => \reset_control_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_control_1|count\(3));

-- Location: LCCOMB_X3_Y21_N20
\reset_control_1|count[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|count[4]~13_combout\ = (\reset_control_1|count\(4) & (!\reset_control_1|count[3]~12\)) # (!\reset_control_1|count\(4) & ((\reset_control_1|count[3]~12\) # (GND)))
-- \reset_control_1|count[4]~14\ = CARRY((!\reset_control_1|count[3]~12\) # (!\reset_control_1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reset_control_1|count\(4),
	datad => VCC,
	cin => \reset_control_1|count[3]~12\,
	combout => \reset_control_1|count[4]~13_combout\,
	cout => \reset_control_1|count[4]~14\);

-- Location: FF_X3_Y21_N21
\reset_control_1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_control_1|count[4]~13_combout\,
	ena => \reset_control_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_control_1|count\(4));

-- Location: LCCOMB_X3_Y21_N22
\reset_control_1|count[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|count[5]~15_combout\ = (\reset_control_1|count\(5) & (\reset_control_1|count[4]~14\ $ (GND))) # (!\reset_control_1|count\(5) & (!\reset_control_1|count[4]~14\ & VCC))
-- \reset_control_1|count[5]~16\ = CARRY((\reset_control_1|count\(5) & !\reset_control_1|count[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reset_control_1|count\(5),
	datad => VCC,
	cin => \reset_control_1|count[4]~14\,
	combout => \reset_control_1|count[5]~15_combout\,
	cout => \reset_control_1|count[5]~16\);

-- Location: FF_X3_Y21_N23
\reset_control_1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_control_1|count[5]~15_combout\,
	ena => \reset_control_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_control_1|count\(5));

-- Location: LCCOMB_X3_Y21_N24
\reset_control_1|count[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|count[6]~17_combout\ = \reset_control_1|count\(6) $ (\reset_control_1|count[5]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reset_control_1|count\(6),
	cin => \reset_control_1|count[5]~16\,
	combout => \reset_control_1|count[6]~17_combout\);

-- Location: FF_X3_Y21_N25
\reset_control_1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_control_1|count[6]~17_combout\,
	ena => \reset_control_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_control_1|count\(6));

-- Location: FF_X3_Y21_N15
\reset_control_1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_control_1|count[1]~7_combout\,
	ena => \reset_control_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_control_1|count\(1));

-- Location: LCCOMB_X2_Y21_N10
\reset_control_1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|LessThan0~0_combout\ = (((!\reset_control_1|count\(2)) # (!\reset_control_1|count\(1))) # (!\reset_control_1|count\(0))) # (!\reset_control_1|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_control_1|count\(3),
	datab => \reset_control_1|count\(0),
	datac => \reset_control_1|count\(1),
	datad => \reset_control_1|count\(2),
	combout => \reset_control_1|LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y21_N28
\reset_control_1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|LessThan0~1_combout\ = (((\reset_control_1|LessThan0~0_combout\) # (!\reset_control_1|count\(6))) # (!\reset_control_1|count\(5))) # (!\reset_control_1|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_control_1|count\(4),
	datab => \reset_control_1|count\(5),
	datac => \reset_control_1|count\(6),
	datad => \reset_control_1|LessThan0~0_combout\,
	combout => \reset_control_1|LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y21_N18
\uart_1|uart_receiver_1|sample_counter|l_cnt[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|sample_counter|l_cnt[1]~9_combout\ = (\uart_1|uart_receiver_1|sample_counter|l_cnt\(1) & (!\uart_1|uart_receiver_1|sample_counter|l_cnt[0]~8\)) # (!\uart_1|uart_receiver_1|sample_counter|l_cnt\(1) & 
-- ((\uart_1|uart_receiver_1|sample_counter|l_cnt[0]~8\) # (GND)))
-- \uart_1|uart_receiver_1|sample_counter|l_cnt[1]~10\ = CARRY((!\uart_1|uart_receiver_1|sample_counter|l_cnt[0]~8\) # (!\uart_1|uart_receiver_1|sample_counter|l_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|uart_receiver_1|sample_counter|l_cnt\(1),
	datad => VCC,
	cin => \uart_1|uart_receiver_1|sample_counter|l_cnt[0]~8\,
	combout => \uart_1|uart_receiver_1|sample_counter|l_cnt[1]~9_combout\,
	cout => \uart_1|uart_receiver_1|sample_counter|l_cnt[1]~10\);

-- Location: LCCOMB_X2_Y21_N20
\uart_1|uart_receiver_1|sample_counter|l_cnt[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|sample_counter|l_cnt[2]~11_combout\ = (\uart_1|uart_receiver_1|sample_counter|l_cnt\(2) & (\uart_1|uart_receiver_1|sample_counter|l_cnt[1]~10\ $ (GND))) # (!\uart_1|uart_receiver_1|sample_counter|l_cnt\(2) & 
-- (!\uart_1|uart_receiver_1|sample_counter|l_cnt[1]~10\ & VCC))
-- \uart_1|uart_receiver_1|sample_counter|l_cnt[2]~12\ = CARRY((\uart_1|uart_receiver_1|sample_counter|l_cnt\(2) & !\uart_1|uart_receiver_1|sample_counter|l_cnt[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|uart_receiver_1|sample_counter|l_cnt\(2),
	datad => VCC,
	cin => \uart_1|uart_receiver_1|sample_counter|l_cnt[1]~10\,
	combout => \uart_1|uart_receiver_1|sample_counter|l_cnt[2]~11_combout\,
	cout => \uart_1|uart_receiver_1|sample_counter|l_cnt[2]~12\);

-- Location: LCCOMB_X1_Y22_N4
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[0]~8_combout\ = \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(0) $ (VCC)
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[0]~9\ = CARRY(\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(0),
	datad => VCC,
	combout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[0]~8_combout\,
	cout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[0]~9\);

-- Location: LCCOMB_X1_Y22_N8
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[2]~12_combout\ = (\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(2) & (\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[1]~11\ $ (GND))) # (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(2) & 
-- (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[1]~11\ & VCC))
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[2]~13\ = CARRY((\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(2) & !\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(2),
	datad => VCC,
	cin => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[1]~11\,
	combout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[2]~12_combout\,
	cout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[2]~13\);

-- Location: LCCOMB_X1_Y22_N10
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[3]~14_combout\ = (\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(3) & (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[2]~13\)) # (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(3) & 
-- ((\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[2]~13\) # (GND)))
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[3]~15\ = CARRY((!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[2]~13\) # (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(3),
	datad => VCC,
	cin => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[2]~13\,
	combout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[3]~14_combout\,
	cout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[3]~15\);

-- Location: LCCOMB_X1_Y22_N12
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[4]~16_combout\ = (\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(4) & (\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[3]~15\ $ (GND))) # (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(4) & 
-- (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[3]~15\ & VCC))
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[4]~17\ = CARRY((\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(4) & !\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(4),
	datad => VCC,
	cin => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[3]~15\,
	combout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[4]~16_combout\,
	cout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[4]~17\);

-- Location: LCCOMB_X1_Y22_N14
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[5]~18_combout\ = (\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(5) & (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[4]~17\)) # (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(5) & 
-- ((\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[4]~17\) # (GND)))
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[5]~19\ = CARRY((!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[4]~17\) # (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(5),
	datad => VCC,
	cin => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[4]~17\,
	combout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[5]~18_combout\,
	cout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[5]~19\);

-- Location: FF_X1_Y22_N15
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[5]~18_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(5));

-- Location: FF_X1_Y22_N13
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[4]~16_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(4));

-- Location: FF_X1_Y22_N17
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[6]~20_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(6));

-- Location: LCCOMB_X1_Y21_N4
\uart_1|baud_rate_generator_1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|baud_rate_generator_1|Equal0~1_combout\ = (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(7) & (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(5) & (\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(4) & 
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(7),
	datab => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(5),
	datac => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(4),
	datad => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(6),
	combout => \uart_1|baud_rate_generator_1|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y21_N0
\uart_1|baud_rate_generator_1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|baud_rate_generator_1|Equal0~2_combout\ = (\uart_1|baud_rate_generator_1|Equal0~1_combout\ & \uart_1|baud_rate_generator_1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_1|baud_rate_generator_1|Equal0~1_combout\,
	datad => \uart_1|baud_rate_generator_1|Equal0~0_combout\,
	combout => \uart_1|baud_rate_generator_1|Equal0~2_combout\);

-- Location: FF_X1_Y22_N5
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[0]~8_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(0));

-- Location: LCCOMB_X1_Y22_N6
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[1]~10_combout\ = (\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(1) & (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[0]~9\)) # (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(1) & 
-- ((\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[0]~9\) # (GND)))
-- \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[1]~11\ = CARRY((!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[0]~9\) # (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(1),
	datad => VCC,
	cin => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[0]~9\,
	combout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[1]~10_combout\,
	cout => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[1]~11\);

-- Location: FF_X1_Y22_N9
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[2]~12_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(2));

-- Location: FF_X1_Y22_N7
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[1]~10_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(1));

-- Location: FF_X1_Y22_N11
\uart_1|baud_rate_generator_1|cycles_counter|l_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt[3]~14_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(3));

-- Location: LCCOMB_X1_Y21_N2
\uart_1|baud_rate_generator_1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|baud_rate_generator_1|Equal0~0_combout\ = (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(0) & (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(2) & (!\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(1) & 
-- !\uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(0),
	datab => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(2),
	datac => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(1),
	datad => \uart_1|baud_rate_generator_1|cycles_counter|l_cnt\(3),
	combout => \uart_1|baud_rate_generator_1|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y21_N6
\uart_1|uart_receiver_1|sample_counter|l_cnt[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|sample_counter|l_cnt[4]~17_combout\ = (\uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~3_combout\) # ((\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.IDLE_S~q\ & (\uart_1|baud_rate_generator_1|Equal0~0_combout\ & 
-- \uart_1|baud_rate_generator_1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.IDLE_S~q\,
	datab => \uart_1|baud_rate_generator_1|Equal0~0_combout\,
	datac => \uart_1|baud_rate_generator_1|Equal0~1_combout\,
	datad => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~3_combout\,
	combout => \uart_1|uart_receiver_1|sample_counter|l_cnt[4]~17_combout\);

-- Location: FF_X2_Y21_N21
\uart_1|uart_receiver_1|sample_counter|l_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|sample_counter|l_cnt[2]~11_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~3_combout\,
	ena => \uart_1|uart_receiver_1|sample_counter|l_cnt[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|sample_counter|l_cnt\(2));

-- Location: LCCOMB_X2_Y21_N14
\uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan1~0_combout\ = (\uart_1|uart_receiver_1|sample_counter|l_cnt\(3) & (\uart_1|uart_receiver_1|sample_counter|l_cnt\(1) & (\uart_1|uart_receiver_1|sample_counter|l_cnt\(2) & 
-- \uart_1|uart_receiver_1|sample_counter|l_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|sample_counter|l_cnt\(3),
	datab => \uart_1|uart_receiver_1|sample_counter|l_cnt\(1),
	datac => \uart_1|uart_receiver_1|sample_counter|l_cnt\(2),
	datad => \uart_1|uart_receiver_1|sample_counter|l_cnt\(0),
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y21_N12
\uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\ = (\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.DATA_S~q\ & (\uart_1|baud_rate_generator_1|Equal0~2_combout\ & ((\uart_1|uart_receiver_1|sample_counter|l_cnt\(4)) # 
-- (\uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|sample_counter|l_cnt\(4),
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan1~0_combout\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.DATA_S~q\,
	datad => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\);

-- Location: LCCOMB_X1_Y23_N24
\uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\ = (\uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\) # ((\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\ & 
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\,
	datad => \uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\);

-- Location: FF_X1_Y23_N17
\uart_1|uart_receiver_1|r_shift_reg|reg[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y21_N20
\uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~4_combout\ = (\uart_1|uart_receiver_1|r_shift_reg|reg[0]~_Duplicate_1_q\ & ((\uart_1|uart_receiver_1|sample_counter|l_cnt\(4)) # (\uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|sample_counter|l_cnt\(4),
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan1~0_combout\,
	datac => \uart_1|uart_receiver_1|r_shift_reg|reg[0]~_Duplicate_1_q\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~4_combout\);

-- Location: LCCOMB_X1_Y21_N26
\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~2_combout\ = (\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1_combout\) # ((\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.DATA_S~q\ & ((!\uart_1|baud_rate_generator_1|Equal0~2_combout\) # 
-- (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1_combout\,
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~4_combout\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.DATA_S~q\,
	datad => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~2_combout\);

-- Location: FF_X1_Y21_N27
\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.DATA_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~2_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.DATA_S~q\);

-- Location: LCCOMB_X1_Y21_N18
\uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~1_combout\ = (\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.DATA_S~q\ & (\uart_1|uart_receiver_1|r_shift_reg|reg[0]~_Duplicate_1_q\ & ((\uart_1|uart_receiver_1|sample_counter|l_cnt\(4)) # 
-- (\uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|sample_counter|l_cnt\(4),
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan1~0_combout\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.DATA_S~q\,
	datad => \uart_1|uart_receiver_1|r_shift_reg|reg[0]~_Duplicate_1_q\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~1_combout\);

-- Location: IOIBUF_X41_Y8_N8
\UART_RXD~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RXD,
	o => \UART_RXD~input_o\);

-- Location: FF_X41_Y8_N10
\uart_1|uart_receiver_1|rx_filter|l_sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \UART_RXD~input_o\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|rx_filter|l_sreg\(0));

-- Location: LCCOMB_X2_Y21_N8
\uart_1|uart_receiver_1|rx_filter|l_fsig_reg_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|rx_filter|l_fsig_reg_next~0_combout\ = (\uart_1|uart_receiver_1|rx_filter|l_sreg\(1) & ((\uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\) # (\uart_1|uart_receiver_1|rx_filter|l_sreg\(0)))) # 
-- (!\uart_1|uart_receiver_1|rx_filter|l_sreg\(1) & (\uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\ & \uart_1|uart_receiver_1|rx_filter|l_sreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|rx_filter|l_sreg\(1),
	datac => \uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\,
	datad => \uart_1|uart_receiver_1|rx_filter|l_sreg\(0),
	combout => \uart_1|uart_receiver_1|rx_filter|l_fsig_reg_next~0_combout\);

-- Location: FF_X2_Y21_N9
\uart_1|uart_receiver_1|rx_filter|l_fsig_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|rx_filter|l_fsig_reg_next~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\);

-- Location: LCCOMB_X2_Y21_N30
\uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~2_combout\ = (\uart_1|baud_rate_generator_1|Equal0~2_combout\ & ((\uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~1_combout\) # ((!\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.IDLE_S~q\ & 
-- !\uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.IDLE_S~q\,
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~1_combout\,
	datac => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	datad => \uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~2_combout\);

-- Location: LCCOMB_X2_Y21_N2
\uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~3_combout\ = (\uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~2_combout\) # ((\uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\) # 
-- ((\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\ & \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\,
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~2_combout\,
	datad => \uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~3_combout\);

-- Location: FF_X2_Y21_N17
\uart_1|uart_receiver_1|sample_counter|l_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|sample_counter|l_cnt[0]~7_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~3_combout\,
	ena => \uart_1|uart_receiver_1|sample_counter|l_cnt[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|sample_counter|l_cnt\(0));

-- Location: FF_X2_Y21_N19
\uart_1|uart_receiver_1|sample_counter|l_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|sample_counter|l_cnt[1]~9_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~3_combout\,
	ena => \uart_1|uart_receiver_1|sample_counter|l_cnt[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|sample_counter|l_cnt\(1));

-- Location: LCCOMB_X2_Y21_N0
\uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan0~0_combout\ = (!\uart_1|uart_receiver_1|sample_counter|l_cnt\(3) & (((!\uart_1|uart_receiver_1|sample_counter|l_cnt\(0)) # (!\uart_1|uart_receiver_1|sample_counter|l_cnt\(2))) # 
-- (!\uart_1|uart_receiver_1|sample_counter|l_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|sample_counter|l_cnt\(3),
	datab => \uart_1|uart_receiver_1|sample_counter|l_cnt\(1),
	datac => \uart_1|uart_receiver_1|sample_counter|l_cnt\(2),
	datad => \uart_1|uart_receiver_1|sample_counter|l_cnt\(0),
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y21_N22
\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\ = (\uart_1|baud_rate_generator_1|Equal0~1_combout\ & (\uart_1|baud_rate_generator_1|Equal0~0_combout\ & ((\uart_1|uart_receiver_1|sample_counter|l_cnt\(4)) # 
-- (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|sample_counter|l_cnt\(4),
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan0~0_combout\,
	datac => \uart_1|baud_rate_generator_1|Equal0~1_combout\,
	datad => \uart_1|baud_rate_generator_1|Equal0~0_combout\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\);

-- Location: LCCOMB_X2_Y21_N24
\uart_1|uart_receiver_1|sample_counter|l_cnt[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|sample_counter|l_cnt[4]~15_combout\ = \uart_1|uart_receiver_1|sample_counter|l_cnt[3]~14\ $ (!\uart_1|uart_receiver_1|sample_counter|l_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_1|uart_receiver_1|sample_counter|l_cnt\(4),
	cin => \uart_1|uart_receiver_1|sample_counter|l_cnt[3]~14\,
	combout => \uart_1|uart_receiver_1|sample_counter|l_cnt[4]~15_combout\);

-- Location: FF_X2_Y21_N25
\uart_1|uart_receiver_1|sample_counter|l_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|sample_counter|l_cnt[4]~15_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~3_combout\,
	ena => \uart_1|uart_receiver_1|sample_counter|l_cnt[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|sample_counter|l_cnt\(4));

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X1_Y21_N24
\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~2_combout\ = (\uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan1~0_combout\ & (((\uart_1|uart_receiver_1|sample_counter|l_cnt\(4)) # (!\SW[1]~input_o\)))) # 
-- (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan1~0_combout\ & (!\SW[1]~input_o\ & ((\SW[0]~input_o\) # (\uart_1|uart_receiver_1|sample_counter|l_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan1~0_combout\,
	datac => \uart_1|uart_receiver_1|sample_counter|l_cnt\(4),
	datad => \SW[1]~input_o\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~2_combout\);

-- Location: LCCOMB_X1_Y21_N6
\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector3~0_combout\ = (\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~5_combout\ & (\uart_1|uart_receiver_1|r_shift_reg|reg[0]~_Duplicate_1_q\ & 
-- ((\uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\)))) # (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~5_combout\ & ((\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.STOP_S~q\) # 
-- ((\uart_1|uart_receiver_1|r_shift_reg|reg[0]~_Duplicate_1_q\ & \uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~5_combout\,
	datab => \uart_1|uart_receiver_1|r_shift_reg|reg[0]~_Duplicate_1_q\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.STOP_S~q\,
	datad => \uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector3~0_combout\);

-- Location: FF_X1_Y21_N7
\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.STOP_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector3~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.STOP_S~q\);

-- Location: LCCOMB_X1_Y21_N28
\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~3_combout\ = (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~1_combout\ & (\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~2_combout\ & 
-- (\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.STOP_S~q\ & \uart_1|baud_rate_generator_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Mux0~1_combout\,
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~2_combout\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.STOP_S~q\,
	datad => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~3_combout\);

-- Location: LCCOMB_X1_Y21_N14
\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~4_combout\ = (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~3_combout\ & ((\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.IDLE_S~q\) # ((!\uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\ & 
-- \uart_1|baud_rate_generator_1|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\,
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~3_combout\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.IDLE_S~q\,
	datad => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~4_combout\);

-- Location: FF_X1_Y21_N15
\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.IDLE_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~4_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.IDLE_S~q\);

-- Location: LCCOMB_X1_Y21_N16
\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_idle_start_trans~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_idle_start_trans~0_combout\ = (!\uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\ & (\uart_1|baud_rate_generator_1|Equal0~1_combout\ & (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.IDLE_S~q\ & 
-- \uart_1|baud_rate_generator_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\,
	datab => \uart_1|baud_rate_generator_1|Equal0~1_combout\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.IDLE_S~q\,
	datad => \uart_1|baud_rate_generator_1|Equal0~0_combout\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_idle_start_trans~0_combout\);

-- Location: LCCOMB_X1_Y21_N8
\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector1~0_combout\ = (\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_idle_start_trans~0_combout\) # ((!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\ & 
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\,
	datad => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_idle_start_trans~0_combout\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector1~0_combout\);

-- Location: FF_X1_Y21_N9
\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector1~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\);

-- Location: LCCOMB_X1_Y23_N16
\uart_1|uart_receiver_1|r_shift_reg|reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|r_shift_reg|reg~0_combout\ = (\uart_1|uart_receiver_1|r_shift_reg|reg[1]~_Duplicate_1_q\ & ((!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\) # (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|r_shift_reg|reg[1]~_Duplicate_1_q\,
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\,
	combout => \uart_1|uart_receiver_1|r_shift_reg|reg~0_combout\);

-- Location: DDIOOUTCELL_X0_Y20_N11
\uart_1|uart_receiver_1|r_shift_reg|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg\(0));

-- Location: LCCOMB_X1_Y23_N12
\uart_1|uart_receiver_1|r_shift_reg|reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|r_shift_reg|reg~2_combout\ = (\uart_1|uart_receiver_1|r_shift_reg|reg[3]~_Duplicate_1_q\ & ((!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\) # (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|r_shift_reg|reg[3]~_Duplicate_1_q\,
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\,
	combout => \uart_1|uart_receiver_1|r_shift_reg|reg~2_combout\);

-- Location: FF_X1_Y23_N13
\uart_1|uart_receiver_1|r_shift_reg|reg[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~2_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y23_N26
\uart_1|uart_receiver_1|r_shift_reg|reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|r_shift_reg|reg~1_combout\ = (\uart_1|uart_receiver_1|r_shift_reg|reg[2]~_Duplicate_1_q\ & ((!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\) # (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\,
	datad => \uart_1|uart_receiver_1|r_shift_reg|reg[2]~_Duplicate_1_q\,
	combout => \uart_1|uart_receiver_1|r_shift_reg|reg~1_combout\);

-- Location: DDIOOUTCELL_X0_Y20_N4
\uart_1|uart_receiver_1|r_shift_reg|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~1_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg\(1));

-- Location: DDIOOUTCELL_X0_Y21_N25
\uart_1|uart_receiver_1|r_shift_reg|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~2_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg\(2));

-- Location: LCCOMB_X1_Y23_N2
\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1_combout\ = (\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\ & (\uart_1|baud_rate_generator_1|Equal0~2_combout\ & ((\uart_1|uart_receiver_1|sample_counter|l_cnt\(4)) # 
-- (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|uart_receiver_fsm_1|LessThan0~0_combout\,
	datab => \uart_1|uart_receiver_1|sample_counter|l_cnt\(4),
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\,
	datad => \uart_1|baud_rate_generator_1|Equal0~2_combout\,
	combout => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1_combout\);

-- Location: LCCOMB_X1_Y23_N4
\uart_1|uart_receiver_1|p_shift_reg|reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|p_shift_reg|reg~0_combout\ = (\uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\ & (((!\uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\)))) # (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\ & 
-- (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1_combout\ & (\uart_1|uart_receiver_1|p_shift_reg|reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\,
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1_combout\,
	datac => \uart_1|uart_receiver_1|p_shift_reg|reg\(0),
	datad => \uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\,
	combout => \uart_1|uart_receiver_1|p_shift_reg|reg~0_combout\);

-- Location: FF_X1_Y23_N5
\uart_1|uart_receiver_1|p_shift_reg|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|p_shift_reg|reg~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|p_shift_reg|reg\(0));

-- Location: LCCOMB_X1_Y23_N6
\uart_1|uart_receiver_1|r_shift_reg|reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|r_shift_reg|reg~7_combout\ = (\SW[3]~input_o\ & ((\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1_combout\) # ((!\uart_1|uart_receiver_1|p_shift_reg|reg\(0))))) # (!\SW[3]~input_o\ & 
-- (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1_combout\ & ((\uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1_combout\,
	datac => \uart_1|uart_receiver_1|p_shift_reg|reg\(0),
	datad => \uart_1|uart_receiver_1|rx_filter|l_fsig_reg~q\,
	combout => \uart_1|uart_receiver_1|r_shift_reg|reg~7_combout\);

-- Location: LCCOMB_X1_Y23_N14
\uart_1|uart_receiver_1|r_shift_reg|reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|r_shift_reg|reg~8_combout\ = (\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1_combout\ & (((!\uart_1|uart_receiver_1|r_shift_reg|reg~7_combout\)))) # (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1_combout\ & 
-- ((\uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\ & ((\uart_1|uart_receiver_1|r_shift_reg|reg~7_combout\))) # (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\ & 
-- (\uart_1|uart_receiver_1|r_shift_reg|reg[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|uart_receiver_fsm_1|r_shift_en_o~0_combout\,
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~1_combout\,
	datac => \uart_1|uart_receiver_1|r_shift_reg|reg[7]~_Duplicate_1_q\,
	datad => \uart_1|uart_receiver_1|r_shift_reg|reg~7_combout\,
	combout => \uart_1|uart_receiver_1|r_shift_reg|reg~8_combout\);

-- Location: FF_X1_Y23_N15
\uart_1|uart_receiver_1|r_shift_reg|reg[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~8_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y23_N20
\uart_1|uart_receiver_1|r_shift_reg|reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|r_shift_reg|reg~6_combout\ = (\uart_1|uart_receiver_1|r_shift_reg|reg[7]~_Duplicate_1_q\ & ((!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\) # (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\,
	datad => \uart_1|uart_receiver_1|r_shift_reg|reg[7]~_Duplicate_1_q\,
	combout => \uart_1|uart_receiver_1|r_shift_reg|reg~6_combout\);

-- Location: FF_X1_Y23_N21
\uart_1|uart_receiver_1|r_shift_reg|reg[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~6_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y23_N18
\uart_1|uart_receiver_1|r_shift_reg|reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|r_shift_reg|reg~5_combout\ = (\uart_1|uart_receiver_1|r_shift_reg|reg[6]~_Duplicate_1_q\ & ((!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\) # (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\,
	datad => \uart_1|uart_receiver_1|r_shift_reg|reg[6]~_Duplicate_1_q\,
	combout => \uart_1|uart_receiver_1|r_shift_reg|reg~5_combout\);

-- Location: FF_X1_Y23_N19
\uart_1|uart_receiver_1|r_shift_reg|reg[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~5_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y23_N0
\uart_1|uart_receiver_1|r_shift_reg|reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|r_shift_reg|reg~4_combout\ = (\uart_1|uart_receiver_1|r_shift_reg|reg[5]~_Duplicate_1_q\ & ((!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\) # (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\,
	datad => \uart_1|uart_receiver_1|r_shift_reg|reg[5]~_Duplicate_1_q\,
	combout => \uart_1|uart_receiver_1|r_shift_reg|reg~4_combout\);

-- Location: FF_X1_Y23_N1
\uart_1|uart_receiver_1|r_shift_reg|reg[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~4_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y23_N30
\uart_1|uart_receiver_1|r_shift_reg|reg~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|r_shift_reg|reg~3_combout\ = (\uart_1|uart_receiver_1|r_shift_reg|reg[4]~_Duplicate_1_q\ & ((!\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\) # (!\uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|l_state.START_S~q\,
	datac => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector2~0_combout\,
	datad => \uart_1|uart_receiver_1|r_shift_reg|reg[4]~_Duplicate_1_q\,
	combout => \uart_1|uart_receiver_1|r_shift_reg|reg~3_combout\);

-- Location: DDIOOUTCELL_X0_Y21_N18
\uart_1|uart_receiver_1|r_shift_reg|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~3_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg\(3));

-- Location: DDIOOUTCELL_X0_Y24_N25
\uart_1|uart_receiver_1|r_shift_reg|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~4_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg\(4));

-- Location: DDIOOUTCELL_X0_Y24_N18
\uart_1|uart_receiver_1|r_shift_reg|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~5_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg\(5));

-- Location: DDIOOUTCELL_X0_Y26_N25
\uart_1|uart_receiver_1|r_shift_reg|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~6_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg\(6));

-- Location: DDIOOUTCELL_X0_Y26_N18
\uart_1|uart_receiver_1|r_shift_reg|reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~8_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg\(7));

-- Location: LCCOMB_X2_Y23_N8
\error_indicator_1|l_flash_counter[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[0]~24_combout\ = \error_indicator_1|l_flash_counter\(0) $ (VCC)
-- \error_indicator_1|l_flash_counter[0]~25\ = CARRY(\error_indicator_1|l_flash_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(0),
	datad => VCC,
	combout => \error_indicator_1|l_flash_counter[0]~24_combout\,
	cout => \error_indicator_1|l_flash_counter[0]~25\);

-- Location: IOIBUF_X0_Y21_N8
\KEY[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X2_Y21_N4
err_ind_rst : cycloneiii_lcell_comb
-- Equation(s):
-- \err_ind_rst~combout\ = (\KEY[0]~input_o\ & !\reset_control_1|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \reset_control_1|LessThan0~1_combout\,
	combout => \err_ind_rst~combout\);

-- Location: FF_X2_Y23_N9
\error_indicator_1|l_flash_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[0]~24_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(0));

-- Location: LCCOMB_X2_Y23_N14
\error_indicator_1|l_flash_counter[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[3]~30_combout\ = (\error_indicator_1|l_flash_counter\(3) & (!\error_indicator_1|l_flash_counter[2]~29\)) # (!\error_indicator_1|l_flash_counter\(3) & ((\error_indicator_1|l_flash_counter[2]~29\) # (GND)))
-- \error_indicator_1|l_flash_counter[3]~31\ = CARRY((!\error_indicator_1|l_flash_counter[2]~29\) # (!\error_indicator_1|l_flash_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(3),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[2]~29\,
	combout => \error_indicator_1|l_flash_counter[3]~30_combout\,
	cout => \error_indicator_1|l_flash_counter[3]~31\);

-- Location: FF_X2_Y23_N15
\error_indicator_1|l_flash_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[3]~30_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(3));

-- Location: LCCOMB_X2_Y23_N16
\error_indicator_1|l_flash_counter[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[4]~32_combout\ = (\error_indicator_1|l_flash_counter\(4) & (\error_indicator_1|l_flash_counter[3]~31\ $ (GND))) # (!\error_indicator_1|l_flash_counter\(4) & (!\error_indicator_1|l_flash_counter[3]~31\ & VCC))
-- \error_indicator_1|l_flash_counter[4]~33\ = CARRY((\error_indicator_1|l_flash_counter\(4) & !\error_indicator_1|l_flash_counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(4),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[3]~31\,
	combout => \error_indicator_1|l_flash_counter[4]~32_combout\,
	cout => \error_indicator_1|l_flash_counter[4]~33\);

-- Location: FF_X2_Y23_N17
\error_indicator_1|l_flash_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[4]~32_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(4));

-- Location: LCCOMB_X2_Y23_N18
\error_indicator_1|l_flash_counter[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[5]~34_combout\ = (\error_indicator_1|l_flash_counter\(5) & (!\error_indicator_1|l_flash_counter[4]~33\)) # (!\error_indicator_1|l_flash_counter\(5) & ((\error_indicator_1|l_flash_counter[4]~33\) # (GND)))
-- \error_indicator_1|l_flash_counter[5]~35\ = CARRY((!\error_indicator_1|l_flash_counter[4]~33\) # (!\error_indicator_1|l_flash_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(5),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[4]~33\,
	combout => \error_indicator_1|l_flash_counter[5]~34_combout\,
	cout => \error_indicator_1|l_flash_counter[5]~35\);

-- Location: FF_X2_Y23_N19
\error_indicator_1|l_flash_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[5]~34_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(5));

-- Location: LCCOMB_X2_Y23_N20
\error_indicator_1|l_flash_counter[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[6]~36_combout\ = (\error_indicator_1|l_flash_counter\(6) & (\error_indicator_1|l_flash_counter[5]~35\ $ (GND))) # (!\error_indicator_1|l_flash_counter\(6) & (!\error_indicator_1|l_flash_counter[5]~35\ & VCC))
-- \error_indicator_1|l_flash_counter[6]~37\ = CARRY((\error_indicator_1|l_flash_counter\(6) & !\error_indicator_1|l_flash_counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(6),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[5]~35\,
	combout => \error_indicator_1|l_flash_counter[6]~36_combout\,
	cout => \error_indicator_1|l_flash_counter[6]~37\);

-- Location: FF_X2_Y23_N21
\error_indicator_1|l_flash_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[6]~36_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(6));

-- Location: LCCOMB_X2_Y23_N22
\error_indicator_1|l_flash_counter[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[7]~38_combout\ = (\error_indicator_1|l_flash_counter\(7) & (!\error_indicator_1|l_flash_counter[6]~37\)) # (!\error_indicator_1|l_flash_counter\(7) & ((\error_indicator_1|l_flash_counter[6]~37\) # (GND)))
-- \error_indicator_1|l_flash_counter[7]~39\ = CARRY((!\error_indicator_1|l_flash_counter[6]~37\) # (!\error_indicator_1|l_flash_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(7),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[6]~37\,
	combout => \error_indicator_1|l_flash_counter[7]~38_combout\,
	cout => \error_indicator_1|l_flash_counter[7]~39\);

-- Location: LCCOMB_X2_Y23_N24
\error_indicator_1|l_flash_counter[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[8]~40_combout\ = (\error_indicator_1|l_flash_counter\(8) & (\error_indicator_1|l_flash_counter[7]~39\ $ (GND))) # (!\error_indicator_1|l_flash_counter\(8) & (!\error_indicator_1|l_flash_counter[7]~39\ & VCC))
-- \error_indicator_1|l_flash_counter[8]~41\ = CARRY((\error_indicator_1|l_flash_counter\(8) & !\error_indicator_1|l_flash_counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(8),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[7]~39\,
	combout => \error_indicator_1|l_flash_counter[8]~40_combout\,
	cout => \error_indicator_1|l_flash_counter[8]~41\);

-- Location: FF_X2_Y23_N25
\error_indicator_1|l_flash_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[8]~40_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(8));

-- Location: LCCOMB_X2_Y23_N28
\error_indicator_1|l_flash_counter[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[10]~44_combout\ = (\error_indicator_1|l_flash_counter\(10) & (\error_indicator_1|l_flash_counter[9]~43\ $ (GND))) # (!\error_indicator_1|l_flash_counter\(10) & (!\error_indicator_1|l_flash_counter[9]~43\ & VCC))
-- \error_indicator_1|l_flash_counter[10]~45\ = CARRY((\error_indicator_1|l_flash_counter\(10) & !\error_indicator_1|l_flash_counter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(10),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[9]~43\,
	combout => \error_indicator_1|l_flash_counter[10]~44_combout\,
	cout => \error_indicator_1|l_flash_counter[10]~45\);

-- Location: FF_X2_Y23_N29
\error_indicator_1|l_flash_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[10]~44_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(10));

-- Location: LCCOMB_X2_Y22_N0
\error_indicator_1|l_flash_counter[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[12]~48_combout\ = (\error_indicator_1|l_flash_counter\(12) & (\error_indicator_1|l_flash_counter[11]~47\ $ (GND))) # (!\error_indicator_1|l_flash_counter\(12) & (!\error_indicator_1|l_flash_counter[11]~47\ & VCC))
-- \error_indicator_1|l_flash_counter[12]~49\ = CARRY((\error_indicator_1|l_flash_counter\(12) & !\error_indicator_1|l_flash_counter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(12),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[11]~47\,
	combout => \error_indicator_1|l_flash_counter[12]~48_combout\,
	cout => \error_indicator_1|l_flash_counter[12]~49\);

-- Location: FF_X2_Y22_N1
\error_indicator_1|l_flash_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[12]~48_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(12));

-- Location: LCCOMB_X2_Y22_N2
\error_indicator_1|l_flash_counter[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[13]~50_combout\ = (\error_indicator_1|l_flash_counter\(13) & (!\error_indicator_1|l_flash_counter[12]~49\)) # (!\error_indicator_1|l_flash_counter\(13) & ((\error_indicator_1|l_flash_counter[12]~49\) # (GND)))
-- \error_indicator_1|l_flash_counter[13]~51\ = CARRY((!\error_indicator_1|l_flash_counter[12]~49\) # (!\error_indicator_1|l_flash_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(13),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[12]~49\,
	combout => \error_indicator_1|l_flash_counter[13]~50_combout\,
	cout => \error_indicator_1|l_flash_counter[13]~51\);

-- Location: FF_X2_Y22_N3
\error_indicator_1|l_flash_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[13]~50_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(13));

-- Location: LCCOMB_X2_Y22_N4
\error_indicator_1|l_flash_counter[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[14]~52_combout\ = (\error_indicator_1|l_flash_counter\(14) & (\error_indicator_1|l_flash_counter[13]~51\ $ (GND))) # (!\error_indicator_1|l_flash_counter\(14) & (!\error_indicator_1|l_flash_counter[13]~51\ & VCC))
-- \error_indicator_1|l_flash_counter[14]~53\ = CARRY((\error_indicator_1|l_flash_counter\(14) & !\error_indicator_1|l_flash_counter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(14),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[13]~51\,
	combout => \error_indicator_1|l_flash_counter[14]~52_combout\,
	cout => \error_indicator_1|l_flash_counter[14]~53\);

-- Location: FF_X2_Y22_N5
\error_indicator_1|l_flash_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[14]~52_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(14));

-- Location: LCCOMB_X2_Y22_N8
\error_indicator_1|l_flash_counter[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[16]~56_combout\ = (\error_indicator_1|l_flash_counter\(16) & (\error_indicator_1|l_flash_counter[15]~55\ $ (GND))) # (!\error_indicator_1|l_flash_counter\(16) & (!\error_indicator_1|l_flash_counter[15]~55\ & VCC))
-- \error_indicator_1|l_flash_counter[16]~57\ = CARRY((\error_indicator_1|l_flash_counter\(16) & !\error_indicator_1|l_flash_counter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(16),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[15]~55\,
	combout => \error_indicator_1|l_flash_counter[16]~56_combout\,
	cout => \error_indicator_1|l_flash_counter[16]~57\);

-- Location: FF_X2_Y22_N9
\error_indicator_1|l_flash_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[16]~56_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(16));

-- Location: LCCOMB_X2_Y22_N10
\error_indicator_1|l_flash_counter[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[17]~58_combout\ = (\error_indicator_1|l_flash_counter\(17) & (!\error_indicator_1|l_flash_counter[16]~57\)) # (!\error_indicator_1|l_flash_counter\(17) & ((\error_indicator_1|l_flash_counter[16]~57\) # (GND)))
-- \error_indicator_1|l_flash_counter[17]~59\ = CARRY((!\error_indicator_1|l_flash_counter[16]~57\) # (!\error_indicator_1|l_flash_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(17),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[16]~57\,
	combout => \error_indicator_1|l_flash_counter[17]~58_combout\,
	cout => \error_indicator_1|l_flash_counter[17]~59\);

-- Location: FF_X2_Y22_N11
\error_indicator_1|l_flash_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[17]~58_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(17));

-- Location: LCCOMB_X2_Y22_N14
\error_indicator_1|l_flash_counter[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[19]~62_combout\ = (\error_indicator_1|l_flash_counter\(19) & (!\error_indicator_1|l_flash_counter[18]~61\)) # (!\error_indicator_1|l_flash_counter\(19) & ((\error_indicator_1|l_flash_counter[18]~61\) # (GND)))
-- \error_indicator_1|l_flash_counter[19]~63\ = CARRY((!\error_indicator_1|l_flash_counter[18]~61\) # (!\error_indicator_1|l_flash_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(19),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[18]~61\,
	combout => \error_indicator_1|l_flash_counter[19]~62_combout\,
	cout => \error_indicator_1|l_flash_counter[19]~63\);

-- Location: FF_X2_Y22_N15
\error_indicator_1|l_flash_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[19]~62_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(19));

-- Location: LCCOMB_X2_Y22_N16
\error_indicator_1|l_flash_counter[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[20]~64_combout\ = (\error_indicator_1|l_flash_counter\(20) & (\error_indicator_1|l_flash_counter[19]~63\ $ (GND))) # (!\error_indicator_1|l_flash_counter\(20) & (!\error_indicator_1|l_flash_counter[19]~63\ & VCC))
-- \error_indicator_1|l_flash_counter[20]~65\ = CARRY((\error_indicator_1|l_flash_counter\(20) & !\error_indicator_1|l_flash_counter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(20),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[19]~63\,
	combout => \error_indicator_1|l_flash_counter[20]~64_combout\,
	cout => \error_indicator_1|l_flash_counter[20]~65\);

-- Location: FF_X2_Y22_N17
\error_indicator_1|l_flash_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[20]~64_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(20));

-- Location: LCCOMB_X2_Y22_N20
\error_indicator_1|l_flash_counter[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[22]~68_combout\ = (\error_indicator_1|l_flash_counter\(22) & (\error_indicator_1|l_flash_counter[21]~67\ $ (GND))) # (!\error_indicator_1|l_flash_counter\(22) & (!\error_indicator_1|l_flash_counter[21]~67\ & VCC))
-- \error_indicator_1|l_flash_counter[22]~69\ = CARRY((\error_indicator_1|l_flash_counter\(22) & !\error_indicator_1|l_flash_counter[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(22),
	datad => VCC,
	cin => \error_indicator_1|l_flash_counter[21]~67\,
	combout => \error_indicator_1|l_flash_counter[22]~68_combout\,
	cout => \error_indicator_1|l_flash_counter[22]~69\);

-- Location: FF_X2_Y22_N21
\error_indicator_1|l_flash_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[22]~68_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(22));

-- Location: LCCOMB_X2_Y22_N22
\error_indicator_1|l_flash_counter[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash_counter[23]~70_combout\ = \error_indicator_1|l_flash_counter\(23) $ (\error_indicator_1|l_flash_counter[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(23),
	cin => \error_indicator_1|l_flash_counter[22]~69\,
	combout => \error_indicator_1|l_flash_counter[23]~70_combout\);

-- Location: FF_X2_Y22_N23
\error_indicator_1|l_flash_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[23]~70_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(23));

-- Location: LCCOMB_X2_Y22_N24
\error_indicator_1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|LessThan0~0_combout\ = (!\error_indicator_1|l_flash_counter\(16) & (!\error_indicator_1|l_flash_counter\(14) & !\error_indicator_1|l_flash_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash_counter\(16),
	datac => \error_indicator_1|l_flash_counter\(14),
	datad => \error_indicator_1|l_flash_counter\(22),
	combout => \error_indicator_1|LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y22_N26
\error_indicator_1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|LessThan0~1_combout\ = (((!\error_indicator_1|l_flash_counter\(10)) # (!\error_indicator_1|l_flash_counter\(13))) # (!\error_indicator_1|l_flash_counter\(12))) # (!\error_indicator_1|l_flash_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(11),
	datab => \error_indicator_1|l_flash_counter\(12),
	datac => \error_indicator_1|l_flash_counter\(13),
	datad => \error_indicator_1|l_flash_counter\(10),
	combout => \error_indicator_1|LessThan0~1_combout\);

-- Location: FF_X2_Y23_N23
\error_indicator_1|l_flash_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash_counter[7]~38_combout\,
	sclr => \error_indicator_1|LessThan0~6_combout\,
	ena => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash_counter\(7));

-- Location: LCCOMB_X2_Y23_N6
\error_indicator_1|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|LessThan0~2_combout\ = (!\error_indicator_1|l_flash_counter\(5) & (!\error_indicator_1|l_flash_counter\(6) & (!\error_indicator_1|l_flash_counter\(7) & !\error_indicator_1|l_flash_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(5),
	datab => \error_indicator_1|l_flash_counter\(6),
	datac => \error_indicator_1|l_flash_counter\(7),
	datad => \error_indicator_1|l_flash_counter\(8),
	combout => \error_indicator_1|LessThan0~2_combout\);

-- Location: LCCOMB_X2_Y22_N28
\error_indicator_1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|LessThan0~3_combout\ = (\error_indicator_1|LessThan0~0_combout\ & ((\error_indicator_1|LessThan0~1_combout\) # ((!\error_indicator_1|l_flash_counter\(9) & \error_indicator_1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|l_flash_counter\(9),
	datab => \error_indicator_1|LessThan0~0_combout\,
	datac => \error_indicator_1|LessThan0~1_combout\,
	datad => \error_indicator_1|LessThan0~2_combout\,
	combout => \error_indicator_1|LessThan0~3_combout\);

-- Location: LCCOMB_X2_Y22_N30
\error_indicator_1|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|LessThan0~6_combout\ = (\error_indicator_1|l_flash_counter\(23) & (!\error_indicator_1|LessThan0~3_combout\ & ((\error_indicator_1|l_flash_counter\(22)) # (!\error_indicator_1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_indicator_1|LessThan0~5_combout\,
	datab => \error_indicator_1|l_flash_counter\(22),
	datac => \error_indicator_1|l_flash_counter\(23),
	datad => \error_indicator_1|LessThan0~3_combout\,
	combout => \error_indicator_1|LessThan0~6_combout\);

-- Location: LCCOMB_X2_Y23_N2
\error_indicator_1|l_flash~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_flash~0_combout\ = \error_indicator_1|l_flash~q\ $ (\error_indicator_1|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \error_indicator_1|l_flash~q\,
	datad => \error_indicator_1|LessThan0~6_combout\,
	combout => \error_indicator_1|l_flash~0_combout\);

-- Location: FF_X2_Y23_N3
\error_indicator_1|l_flash\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_flash~0_combout\,
	clrn => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_flash~q\);

-- Location: IOIBUF_X0_Y25_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X1_Y23_N8
\uart_1|uart_receiver_1|parity_err_tick_o~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|parity_err_tick_o~0_combout\ = \uart_1|uart_receiver_1|r_shift_reg|reg[7]~_Duplicate_1_q\ $ (\uart_1|uart_receiver_1|r_shift_reg|reg[6]~_Duplicate_1_q\ $ (\uart_1|uart_receiver_1|p_shift_reg|reg\(0) $ (!\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|r_shift_reg|reg[7]~_Duplicate_1_q\,
	datab => \uart_1|uart_receiver_1|r_shift_reg|reg[6]~_Duplicate_1_q\,
	datac => \uart_1|uart_receiver_1|p_shift_reg|reg\(0),
	datad => \SW[2]~input_o\,
	combout => \uart_1|uart_receiver_1|parity_err_tick_o~0_combout\);

-- Location: FF_X1_Y23_N27
\uart_1|uart_receiver_1|r_shift_reg|reg[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uart_1|uart_receiver_1|r_shift_reg|reg~1_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \uart_1|uart_receiver_1|uart_receiver_fsm_1|sc_load_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_1|uart_receiver_1|r_shift_reg|reg[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y23_N28
\uart_1|uart_receiver_1|parity_err_tick_o~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_1|uart_receiver_1|parity_err_tick_o~2_combout\ = \uart_1|uart_receiver_1|parity_err_tick_o~1_combout\ $ (\uart_1|uart_receiver_1|parity_err_tick_o~0_combout\ $ (\uart_1|uart_receiver_1|r_shift_reg|reg[1]~_Duplicate_1_q\ $ 
-- (\uart_1|uart_receiver_1|r_shift_reg|reg[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|parity_err_tick_o~1_combout\,
	datab => \uart_1|uart_receiver_1|parity_err_tick_o~0_combout\,
	datac => \uart_1|uart_receiver_1|r_shift_reg|reg[1]~_Duplicate_1_q\,
	datad => \uart_1|uart_receiver_1|r_shift_reg|reg[0]~_Duplicate_1_q\,
	combout => \uart_1|uart_receiver_1|parity_err_tick_o~2_combout\);

-- Location: LCCOMB_X2_Y23_N0
\error_indicator_1|l_parity_err~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|l_parity_err~0_combout\ = (\error_indicator_1|l_parity_err~q\) # ((\uart_1|uart_receiver_1|parity_err_tick_o~3_combout\ & (\uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~3_combout\ & 
-- \uart_1|uart_receiver_1|parity_err_tick_o~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_1|uart_receiver_1|parity_err_tick_o~3_combout\,
	datab => \uart_1|uart_receiver_1|uart_receiver_fsm_1|Selector0~3_combout\,
	datac => \error_indicator_1|l_parity_err~q\,
	datad => \uart_1|uart_receiver_1|parity_err_tick_o~2_combout\,
	combout => \error_indicator_1|l_parity_err~0_combout\);

-- Location: FF_X2_Y23_N1
\error_indicator_1|l_parity_err\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \error_indicator_1|l_parity_err~0_combout\,
	clrn => \err_ind_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_indicator_1|l_parity_err~q\);

-- Location: LCCOMB_X2_Y23_N4
\error_indicator_1|parity_err_led_o\ : cycloneiii_lcell_comb
-- Equation(s):
-- \error_indicator_1|parity_err_led_o~combout\ = (!\error_indicator_1|l_flash~q\ & \error_indicator_1|l_parity_err~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \error_indicator_1|l_flash~q\,
	datad => \error_indicator_1|l_parity_err~q\,
	combout => \error_indicator_1|parity_err_led_o~combout\);

-- Location: IOIBUF_X0_Y5_N15
\FL_BYTE_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_BYTE_N,
	o => \FL_BYTE_N~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\FL_CE_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_CE_N,
	o => \FL_CE_N~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\FL_OE_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_OE_N,
	o => \FL_OE_N~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\FL_RST_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_RST_N,
	o => \FL_RST_N~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\FL_RY~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_RY,
	o => \FL_RY~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\FL_WE_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_WE_N,
	o => \FL_WE_N~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\FL_WP_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_WP_N,
	o => \FL_WP_N~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\FL_DQ15_AM1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ15_AM1,
	o => \FL_DQ15_AM1~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\GPIO_CLKIN_N0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_CLKIN_N0,
	o => \GPIO_CLKIN_N0~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\GPIO_CLKIN_P0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_CLKIN_P0,
	o => \GPIO_CLKIN_P0~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\GPIO_CLKOUT_N0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_CLKOUT_N0,
	o => \GPIO_CLKOUT_N0~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\GPIO_CLKOUT_P0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_CLKOUT_P0,
	o => \GPIO_CLKOUT_P0~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\GPIO_CLKIN_P1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_CLKIN_P1,
	o => \GPIO_CLKIN_P1~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\GPIO_CLKIN_N1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_CLKIN_N1,
	o => \GPIO_CLKIN_N1~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\GPIO_CLKOUT_P1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_CLKOUT_P1,
	o => \GPIO_CLKOUT_P1~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\GPIO_CLKOUT_N1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_CLKOUT_N1,
	o => \GPIO_CLKOUT_N1~input_o\);

-- Location: IOIBUF_X41_Y11_N1
\PS2_KBCLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_KBCLK,
	o => \PS2_KBCLK~input_o\);

-- Location: IOIBUF_X41_Y12_N22
\PS2_KBDAT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_KBDAT,
	o => \PS2_KBDAT~input_o\);

-- Location: IOIBUF_X41_Y10_N8
\PS2_MSCLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_MSCLK,
	o => \PS2_MSCLK~input_o\);

-- Location: IOIBUF_X41_Y10_N15
\PS2_MSDAT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_MSDAT,
	o => \PS2_MSDAT~input_o\);

-- Location: IOIBUF_X41_Y7_N1
\UART_RTS~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RTS,
	o => \UART_RTS~input_o\);

-- Location: IOIBUF_X41_Y8_N22
\UART_CTS~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_CTS,
	o => \UART_CTS~input_o\);

-- Location: IOIBUF_X41_Y4_N8
\SD_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SD_CLK,
	o => \SD_CLK~input_o\);

-- Location: IOIBUF_X41_Y3_N1
\SD_CMD~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SD_CMD,
	o => \SD_CMD~input_o\);

-- Location: IOIBUF_X41_Y2_N22
\SD_DAT0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SD_DAT0,
	o => \SD_DAT0~input_o\);

-- Location: IOIBUF_X41_Y5_N1
\SD_DAT3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SD_DAT3,
	o => \SD_DAT3~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\SD_WP_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SD_WP_N,
	o => \SD_WP_N~input_o\);

-- Location: IOIBUF_X41_Y23_N15
\LCD_RW~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_RW,
	o => \LCD_RW~input_o\);

-- Location: IOIBUF_X41_Y22_N22
\LCD_RS~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_RS,
	o => \LCD_RS~input_o\);

-- Location: IOIBUF_X41_Y23_N8
\LCD_EN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_EN,
	o => \LCD_EN~input_o\);

-- Location: IOIBUF_X41_Y22_N15
\LCD_BLON~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_BLON,
	o => \LCD_BLON~input_o\);

-- Location: IOIBUF_X41_Y18_N15
\VGA_HS~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_HS,
	o => \VGA_HS~input_o\);

-- Location: IOIBUF_X41_Y18_N22
\VGA_VS~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_VS,
	o => \VGA_VS~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\DRAM_CAS_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_CAS_N,
	o => \DRAM_CAS_N~input_o\);

-- Location: IOIBUF_X1_Y29_N15
\DRAM_CS_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_CS_N,
	o => \DRAM_CS_N~input_o\);

-- Location: IOIBUF_X1_Y29_N29
\DRAM_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_CLK,
	o => \DRAM_CLK~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\DRAM_CKE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_CKE,
	o => \DRAM_CKE~input_o\);

-- Location: IOIBUF_X3_Y29_N22
\DRAM_LDQM~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_LDQM,
	o => \DRAM_LDQM~input_o\);

-- Location: IOIBUF_X14_Y29_N29
\DRAM_UDQM~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_UDQM,
	o => \DRAM_UDQM~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\DRAM_RAS_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_RAS_N,
	o => \DRAM_RAS_N~input_o\);

-- Location: IOIBUF_X3_Y29_N15
\DRAM_WE_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_WE_N,
	o => \DRAM_WE_N~input_o\);

-- Location: IOIBUF_X19_Y29_N8
\CLOCK_50_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_2,
	o => \CLOCK_50_2~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\SW[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\SW[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\KEY[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\FL_ADDR[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(0),
	o => \FL_ADDR[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\FL_ADDR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(1),
	o => \FL_ADDR[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\FL_ADDR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(2),
	o => \FL_ADDR[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\FL_ADDR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(3),
	o => \FL_ADDR[3]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\FL_ADDR[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(4),
	o => \FL_ADDR[4]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\FL_ADDR[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(5),
	o => \FL_ADDR[5]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\FL_ADDR[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(6),
	o => \FL_ADDR[6]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\FL_ADDR[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(7),
	o => \FL_ADDR[7]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\FL_ADDR[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(8),
	o => \FL_ADDR[8]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\FL_ADDR[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(9),
	o => \FL_ADDR[9]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\FL_ADDR[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(10),
	o => \FL_ADDR[10]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\FL_ADDR[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(11),
	o => \FL_ADDR[11]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\FL_ADDR[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(12),
	o => \FL_ADDR[12]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\FL_ADDR[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(13),
	o => \FL_ADDR[13]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\FL_ADDR[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(14),
	o => \FL_ADDR[14]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\FL_ADDR[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(15),
	o => \FL_ADDR[15]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\FL_ADDR[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(16),
	o => \FL_ADDR[16]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\FL_ADDR[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(17),
	o => \FL_ADDR[17]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\FL_ADDR[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(18),
	o => \FL_ADDR[18]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\FL_ADDR[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(19),
	o => \FL_ADDR[19]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\FL_ADDR[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(20),
	o => \FL_ADDR[20]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\FL_ADDR[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_ADDR(21),
	o => \FL_ADDR[21]~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\FL_DQ[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(0),
	o => \FL_DQ[0]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\FL_DQ[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(1),
	o => \FL_DQ[1]~input_o\);

-- Location: IOIBUF_X0_Y2_N22
\FL_DQ[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(2),
	o => \FL_DQ[2]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\FL_DQ[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(3),
	o => \FL_DQ[3]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\FL_DQ[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(4),
	o => \FL_DQ[4]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\FL_DQ[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(5),
	o => \FL_DQ[5]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\FL_DQ[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(6),
	o => \FL_DQ[6]~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\FL_DQ[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(7),
	o => \FL_DQ[7]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\FL_DQ[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(8),
	o => \FL_DQ[8]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\FL_DQ[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(9),
	o => \FL_DQ[9]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\FL_DQ[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(10),
	o => \FL_DQ[10]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\FL_DQ[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(11),
	o => \FL_DQ[11]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\FL_DQ[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(12),
	o => \FL_DQ[12]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\FL_DQ[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(13),
	o => \FL_DQ[13]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\FL_DQ[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_DQ(14),
	o => \FL_DQ[14]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\GPIO_0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(0),
	o => \GPIO_0[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\GPIO_0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(1),
	o => \GPIO_0[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\GPIO_0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(2),
	o => \GPIO_0[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\GPIO_0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(3),
	o => \GPIO_0[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\GPIO_0[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(4),
	o => \GPIO_0[4]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\GPIO_0[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(5),
	o => \GPIO_0[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\GPIO_0[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(6),
	o => \GPIO_0[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\GPIO_0[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(7),
	o => \GPIO_0[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\GPIO_0[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(8),
	o => \GPIO_0[8]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\GPIO_0[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(9),
	o => \GPIO_0[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\GPIO_0[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(10),
	o => \GPIO_0[10]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\GPIO_0[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(11),
	o => \GPIO_0[11]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\GPIO_0[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(12),
	o => \GPIO_0[12]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\GPIO_0[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(13),
	o => \GPIO_0[13]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\GPIO_0[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(14),
	o => \GPIO_0[14]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\GPIO_0[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(15),
	o => \GPIO_0[15]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\GPIO_0[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(16),
	o => \GPIO_0[16]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\GPIO_0[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(17),
	o => \GPIO_0[17]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\GPIO_0[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(18),
	o => \GPIO_0[18]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\GPIO_0[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(19),
	o => \GPIO_0[19]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\GPIO_0[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(20),
	o => \GPIO_0[20]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\GPIO_0[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(21),
	o => \GPIO_0[21]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\GPIO_0[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(22),
	o => \GPIO_0[22]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\GPIO_0[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(23),
	o => \GPIO_0[23]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\GPIO_0[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(24),
	o => \GPIO_0[24]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\GPIO_0[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(25),
	o => \GPIO_0[25]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\GPIO_0[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(26),
	o => \GPIO_0[26]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\GPIO_0[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(27),
	o => \GPIO_0[27]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\GPIO_0[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(28),
	o => \GPIO_0[28]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\GPIO_0[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(29),
	o => \GPIO_0[29]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\GPIO_0[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(30),
	o => \GPIO_0[30]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\GPIO_0[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(31),
	o => \GPIO_0[31]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\GPIO_1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(0),
	o => \GPIO_1[0]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\GPIO_1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(1),
	o => \GPIO_1[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\GPIO_1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(2),
	o => \GPIO_1[2]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\GPIO_1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(3),
	o => \GPIO_1[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\GPIO_1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(4),
	o => \GPIO_1[4]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\GPIO_1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(5),
	o => \GPIO_1[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\GPIO_1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(6),
	o => \GPIO_1[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\GPIO_1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(7),
	o => \GPIO_1[7]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\GPIO_1[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(8),
	o => \GPIO_1[8]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\GPIO_1[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(9),
	o => \GPIO_1[9]~input_o\);

-- Location: IOIBUF_X39_Y0_N29
\GPIO_1[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(10),
	o => \GPIO_1[10]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\GPIO_1[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(11),
	o => \GPIO_1[11]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\GPIO_1[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(12),
	o => \GPIO_1[12]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\GPIO_1[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(13),
	o => \GPIO_1[13]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\GPIO_1[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(14),
	o => \GPIO_1[14]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\GPIO_1[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(15),
	o => \GPIO_1[15]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\GPIO_1[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(16),
	o => \GPIO_1[16]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\GPIO_1[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(17),
	o => \GPIO_1[17]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\GPIO_1[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(18),
	o => \GPIO_1[18]~input_o\);

-- Location: IOIBUF_X39_Y0_N15
\GPIO_1[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(19),
	o => \GPIO_1[19]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\GPIO_1[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(20),
	o => \GPIO_1[20]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\GPIO_1[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(21),
	o => \GPIO_1[21]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\GPIO_1[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(22),
	o => \GPIO_1[22]~input_o\);

-- Location: IOIBUF_X5_Y0_N29
\GPIO_1[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(23),
	o => \GPIO_1[23]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\GPIO_1[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(24),
	o => \GPIO_1[24]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\GPIO_1[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(25),
	o => \GPIO_1[25]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\GPIO_1[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(26),
	o => \GPIO_1[26]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\GPIO_1[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(27),
	o => \GPIO_1[27]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\GPIO_1[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(28),
	o => \GPIO_1[28]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\GPIO_1[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(29),
	o => \GPIO_1[29]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\GPIO_1[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(30),
	o => \GPIO_1[30]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\GPIO_1[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1(31),
	o => \GPIO_1[31]~input_o\);

-- Location: IOIBUF_X41_Y24_N8
\LCD_DATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(0),
	o => \LCD_DATA[0]~input_o\);

-- Location: IOIBUF_X41_Y24_N1
\LCD_DATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(1),
	o => \LCD_DATA[1]~input_o\);

-- Location: IOIBUF_X41_Y26_N22
\LCD_DATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(2),
	o => \LCD_DATA[2]~input_o\);

-- Location: IOIBUF_X41_Y26_N15
\LCD_DATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(3),
	o => \LCD_DATA[3]~input_o\);

-- Location: IOIBUF_X41_Y26_N8
\LCD_DATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(4),
	o => \LCD_DATA[4]~input_o\);

-- Location: IOIBUF_X41_Y26_N1
\LCD_DATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(5),
	o => \LCD_DATA[5]~input_o\);

-- Location: IOIBUF_X41_Y27_N15
\LCD_DATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(6),
	o => \LCD_DATA[6]~input_o\);

-- Location: IOIBUF_X41_Y27_N22
\LCD_DATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(7),
	o => \LCD_DATA[7]~input_o\);

-- Location: IOIBUF_X41_Y20_N1
\VGA_G[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_G(0),
	o => \VGA_G[0]~input_o\);

-- Location: IOIBUF_X41_Y24_N22
\VGA_G[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_G(1),
	o => \VGA_G[1]~input_o\);

-- Location: IOIBUF_X41_Y21_N15
\VGA_G[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_G(2),
	o => \VGA_G[2]~input_o\);

-- Location: IOIBUF_X41_Y20_N22
\VGA_G[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_G(3),
	o => \VGA_G[3]~input_o\);

-- Location: IOIBUF_X41_Y23_N22
\VGA_R[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_R(0),
	o => \VGA_R[0]~input_o\);

-- Location: IOIBUF_X41_Y25_N1
\VGA_R[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_R(1),
	o => \VGA_R[1]~input_o\);

-- Location: IOIBUF_X41_Y22_N1
\VGA_R[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_R(2),
	o => \VGA_R[2]~input_o\);

-- Location: IOIBUF_X41_Y21_N22
\VGA_R[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_R(3),
	o => \VGA_R[3]~input_o\);

-- Location: IOIBUF_X41_Y19_N15
\VGA_B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_B(0),
	o => \VGA_B[0]~input_o\);

-- Location: IOIBUF_X41_Y19_N8
\VGA_B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_B(1),
	o => \VGA_B[1]~input_o\);

-- Location: IOIBUF_X41_Y19_N1
\VGA_B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_B(2),
	o => \VGA_B[2]~input_o\);

-- Location: IOIBUF_X41_Y21_N8
\VGA_B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VGA_B(3),
	o => \VGA_B[3]~input_o\);

-- Location: IOIBUF_X21_Y29_N22
\HEX0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX0(0),
	o => \HEX0[0]~input_o\);

-- Location: IOIBUF_X21_Y29_N29
\HEX0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX0(1),
	o => \HEX0[1]~input_o\);

-- Location: IOIBUF_X26_Y29_N1
\HEX0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX0(2),
	o => \HEX0[2]~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\HEX0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX0(3),
	o => \HEX0[3]~input_o\);

-- Location: IOIBUF_X26_Y29_N8
\HEX0[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX0(4),
	o => \HEX0[4]~input_o\);

-- Location: IOIBUF_X28_Y29_N22
\HEX0[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX0(5),
	o => \HEX0[5]~input_o\);

-- Location: IOIBUF_X26_Y29_N15
\HEX0[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX0(6),
	o => \HEX0[6]~input_o\);

-- Location: IOIBUF_X23_Y29_N8
\HEX0[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX0(7),
	o => \HEX0[7]~input_o\);

-- Location: IOIBUF_X21_Y29_N1
\HEX1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX1(0),
	o => \HEX1[0]~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\HEX1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX1(1),
	o => \HEX1[1]~input_o\);

-- Location: IOIBUF_X23_Y29_N1
\HEX1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX1(2),
	o => \HEX1[2]~input_o\);

-- Location: IOIBUF_X23_Y29_N22
\HEX1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX1(3),
	o => \HEX1[3]~input_o\);

-- Location: IOIBUF_X23_Y29_N29
\HEX1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX1(4),
	o => \HEX1[4]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\HEX1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX1(5),
	o => \HEX1[5]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\HEX1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX1(6),
	o => \HEX1[6]~input_o\);

-- Location: IOIBUF_X26_Y29_N29
\HEX1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX1(7),
	o => \HEX1[7]~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\HEX2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX2(0),
	o => \HEX2[0]~input_o\);

-- Location: IOIBUF_X30_Y29_N29
\HEX2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX2(1),
	o => \HEX2[1]~input_o\);

-- Location: IOIBUF_X28_Y29_N1
\HEX2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX2(2),
	o => \HEX2[2]~input_o\);

-- Location: IOIBUF_X30_Y29_N1
\HEX2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX2(3),
	o => \HEX2[3]~input_o\);

-- Location: IOIBUF_X30_Y29_N15
\HEX2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX2(4),
	o => \HEX2[4]~input_o\);

-- Location: IOIBUF_X30_Y29_N22
\HEX2[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX2(5),
	o => \HEX2[5]~input_o\);

-- Location: IOIBUF_X37_Y29_N1
\HEX2[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX2(6),
	o => \HEX2[6]~input_o\);

-- Location: IOIBUF_X32_Y29_N15
\HEX2[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX2(7),
	o => \HEX2[7]~input_o\);

-- Location: IOIBUF_X32_Y29_N22
\HEX3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX3(0),
	o => \HEX3[0]~input_o\);

-- Location: IOIBUF_X39_Y29_N15
\HEX3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX3(1),
	o => \HEX3[1]~input_o\);

-- Location: IOIBUF_X32_Y29_N8
\HEX3[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX3(2),
	o => \HEX3[2]~input_o\);

-- Location: IOIBUF_X32_Y29_N1
\HEX3[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX3(3),
	o => \HEX3[3]~input_o\);

-- Location: IOIBUF_X37_Y29_N22
\HEX3[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX3(4),
	o => \HEX3[4]~input_o\);

-- Location: IOIBUF_X37_Y29_N29
\HEX3[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX3(5),
	o => \HEX3[5]~input_o\);

-- Location: IOIBUF_X39_Y29_N29
\HEX3[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX3(6),
	o => \HEX3[6]~input_o\);

-- Location: IOIBUF_X39_Y29_N22
\HEX3[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HEX3(7),
	o => \HEX3[7]~input_o\);

-- Location: IOIBUF_X7_Y29_N15
\DRAM_BA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_BA(0),
	o => \DRAM_BA[0]~input_o\);

-- Location: IOIBUF_X5_Y29_N8
\DRAM_BA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_BA(1),
	o => \DRAM_BA[1]~input_o\);

-- Location: IOIBUF_X16_Y29_N1
\DRAM_DQ[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(0),
	o => \DRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X9_Y29_N15
\DRAM_DQ[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(1),
	o => \DRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X9_Y29_N29
\DRAM_DQ[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(2),
	o => \DRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X11_Y29_N29
\DRAM_DQ[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(3),
	o => \DRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\DRAM_DQ[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(4),
	o => \DRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X9_Y29_N22
\DRAM_DQ[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(5),
	o => \DRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X7_Y29_N1
\DRAM_DQ[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(6),
	o => \DRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X5_Y29_N22
\DRAM_DQ[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(7),
	o => \DRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X14_Y29_N22
\DRAM_DQ[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(8),
	o => \DRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X14_Y29_N1
\DRAM_DQ[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(9),
	o => \DRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X16_Y29_N29
\DRAM_DQ[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(10),
	o => \DRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\DRAM_DQ[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(11),
	o => \DRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X16_Y29_N22
\DRAM_DQ[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(12),
	o => \DRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X16_Y29_N15
\DRAM_DQ[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(13),
	o => \DRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X16_Y29_N8
\DRAM_DQ[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(14),
	o => \DRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X7_Y29_N29
\DRAM_DQ[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(15),
	o => \DRAM_DQ[15]~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\DRAM_ADDR[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_ADDR(0),
	o => \DRAM_ADDR[0]~input_o\);

-- Location: IOIBUF_X3_Y29_N1
\DRAM_ADDR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_ADDR(1),
	o => \DRAM_ADDR[1]~input_o\);

-- Location: IOIBUF_X3_Y29_N8
\DRAM_ADDR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_ADDR(2),
	o => \DRAM_ADDR[2]~input_o\);

-- Location: IOIBUF_X3_Y29_N29
\DRAM_ADDR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_ADDR(3),
	o => \DRAM_ADDR[3]~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\DRAM_ADDR[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_ADDR(4),
	o => \DRAM_ADDR[4]~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\DRAM_ADDR[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_ADDR(5),
	o => \DRAM_ADDR[5]~input_o\);

-- Location: IOIBUF_X11_Y29_N22
\DRAM_ADDR[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_ADDR(6),
	o => \DRAM_ADDR[6]~input_o\);

-- Location: IOIBUF_X11_Y29_N15
\DRAM_ADDR[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_ADDR(7),
	o => \DRAM_ADDR[7]~input_o\);

-- Location: IOIBUF_X9_Y29_N8
\DRAM_ADDR[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_ADDR(8),
	o => \DRAM_ADDR[8]~input_o\);

-- Location: IOIBUF_X11_Y29_N8
\DRAM_ADDR[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_ADDR(9),
	o => \DRAM_ADDR[9]~input_o\);

-- Location: IOIBUF_X5_Y29_N15
\DRAM_ADDR[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_ADDR(10),
	o => \DRAM_ADDR[10]~input_o\);

-- Location: IOIBUF_X11_Y29_N1
\DRAM_ADDR[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_ADDR(11),
	o => \DRAM_ADDR[11]~input_o\);

-- Location: IOIBUF_X9_Y29_N1
\DRAM_ADDR[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_ADDR(12),
	o => \DRAM_ADDR[12]~input_o\);
END structure;


