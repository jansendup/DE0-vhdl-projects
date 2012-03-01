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

-- DATE "03/01/2012 22:59:06"

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

ENTITY 	ps2_controller_de0 IS
    PORT (
	LEDG : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
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
	PS2_KBCLK : INOUT std_logic;
	PS2_KBDAT : INOUT std_logic;
	PS2_MSCLK : IN std_logic;
	PS2_MSDAT : IN std_logic;
	UART_RXD : IN std_logic;
	UART_TXD : IN std_logic;
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
	DRAM_BA : IN std_logic_vector(1 DOWNTO 0);
	DRAM_DQ : IN std_logic_vector(15 DOWNTO 0);
	DRAM_ADDR : IN std_logic_vector(12 DOWNTO 0)
	);
END ps2_controller_de0;

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
-- PS2_MSCLK	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_MSDAT	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- PS2_KBCLK	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_KBDAT	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ps2_controller_de0 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
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
SIGNAL ww_PS2_MSCLK : std_logic;
SIGNAL ww_PS2_MSDAT : std_logic;
SIGNAL ww_UART_RXD : std_logic;
SIGNAL ww_UART_TXD : std_logic;
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
SIGNAL ww_DRAM_BA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DRAM_DQ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DRAM_ADDR : std_logic_vector(12 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_control_1|count[1]~7_combout\ : std_logic;
SIGNAL \reset_control_1|count[4]~13_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[0]~22_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[1]~24_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[8]~38_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[16]~54_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[17]~56_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[0]~23_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[1]~25_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[5]~33_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[6]~35_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[10]~43_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[17]~57_combout\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[6]~25_combout\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[11]~35_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \sys_knight_rider_leds|LessThan1~2_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|LessThan1~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|state.WRITE_S~q\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|Selector1~0_combout\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|state.IDLE_S~q\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|state.TX_ACK_S~q\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|state.WAIT_CMD_S~q\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|state_next.WRITE_S~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|tx_parity_generator|parity_o~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|buf_shift_reg|reg~15_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|state.TX_STOP_S~q\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|Selector1~4_combout\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|state.WAIT_WRITE_S~q\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|Selector3~0_combout\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|Selector0~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|Selector8~0_combout\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|Selector3~1_combout\ : std_logic;
SIGNAL \kb_ps2_contr|bits_counter|Mux2~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|Selector7~0_combout\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|Selector4~0_combout\ : std_logic;
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
SIGNAL \PS2_MSCLK~input_o\ : std_logic;
SIGNAL \PS2_MSDAT~input_o\ : std_logic;
SIGNAL \UART_RXD~input_o\ : std_logic;
SIGNAL \UART_TXD~input_o\ : std_logic;
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
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[0]~24\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[1]~26\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[2]~27_combout\ : std_logic;
SIGNAL \reset_control_1|count[0]~6_combout\ : std_logic;
SIGNAL \reset_control_1|count[1]~8\ : std_logic;
SIGNAL \reset_control_1|count[2]~9_combout\ : std_logic;
SIGNAL \reset_control_1|count[2]~10\ : std_logic;
SIGNAL \reset_control_1|count[3]~12\ : std_logic;
SIGNAL \reset_control_1|count[4]~14\ : std_logic;
SIGNAL \reset_control_1|count[5]~15_combout\ : std_logic;
SIGNAL \reset_control_1|count[5]~16\ : std_logic;
SIGNAL \reset_control_1|count[6]~17_combout\ : std_logic;
SIGNAL \reset_control_1|count[3]~11_combout\ : std_logic;
SIGNAL \reset_control_1|LessThan0~0_combout\ : std_logic;
SIGNAL \reset_control_1|LessThan0~1_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[8]~39_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|LessThan1~3_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|LessThan1~2_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[14]~51_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|LessThan1~1_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|LessThan1~5_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|LessThan1~0_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[21]~66\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[22]~67_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[16]~55_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|LessThan1~4_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|LessThan1~6_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|LessThan1~7_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[2]~28\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[3]~29_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[3]~30\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[4]~31_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[4]~32\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[5]~34\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[6]~36\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[7]~37_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[7]~38\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[8]~40\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[9]~41_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[9]~42\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[10]~44\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[11]~45_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[11]~46\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[12]~47_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[12]~48\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[13]~49_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[13]~50\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[14]~52\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[15]~53_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[15]~54\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[16]~56\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[17]~58\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[18]~59_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[18]~60\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[19]~61_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[19]~62\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[20]~63_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[20]~64\ : std_logic;
SIGNAL \kb_knight_rider_leds|update_counter[21]~65_combout\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|Selector1~2_combout\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|Selector1~1_combout\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|Selector1~3_combout\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|Selector1~5_combout\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|state.BUSSY_WAIT_S~q\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|Selector2~0_combout\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|Selector2~0_combout\ : std_logic;
SIGNAL \PS2_KBCLK~input_o\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_clk_filter|l_sreg[1]~feeder_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_clk_filter|l_sreg[2]~feeder_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_clk_filter|l_fsig_reg_next~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|Selector0~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\ : std_logic;
SIGNAL \PS2_KBDAT~input_o\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_data_filter|l_sreg[1]~feeder_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_data_filter|l_sreg[2]~feeder_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_data_filter|l_fsig_reg_next~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_data_filter|l_fsig_reg~q\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|Selector0~1_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|Selector4~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[0]~13_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~_Duplicate_1_q\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[0]~14\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[1]~15_combout\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[1]~16\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[2]~17_combout\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[2]~18\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[3]~20\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[4]~21_combout\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[4]~22\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[5]~24\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[6]~26\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[7]~27_combout\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[7]~28\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[8]~29_combout\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[8]~30\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[9]~31_combout\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[9]~32\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[10]~33_combout\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[10]~34\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[11]~36\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[12]~37_combout\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[5]~23_combout\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt[3]~19_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~1_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~2_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~3_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|Selector4~1_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~q\ : std_logic;
SIGNAL \kb_knight_rider_leds|shift_counter~0_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|shift_counter~q\ : std_logic;
SIGNAL \kb_knight_rider_leds|s_right~0_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|s_right~q\ : std_logic;
SIGNAL \kb_knight_rider_leds|leds_reg~2_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|leds_reg~1_combout\ : std_logic;
SIGNAL \kb_knight_rider_leds|leds_reg~0_combout\ : std_logic;
SIGNAL \ps2_kb_led_controller_1|leds_reg[1]~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|buf_shift_reg|reg~13_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ : std_logic;
SIGNAL \kb_ps2_contr|buf_shift_reg|reg~16_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|Selector5~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|Selector6~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|bits_counter|Mux3~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|bits_counter|l_cnt[2]~1_combout\ : std_logic;
SIGNAL \kb_ps2_contr|bits_counter|Mux1~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|bits_counter|Add0~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|bits_counter|Mux0~2_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|LessThan1~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|Selector6~1_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\ : std_logic;
SIGNAL \kb_ps2_contr|buf_shift_reg|reg~10_combout\ : std_logic;
SIGNAL \kb_ps2_contr|buf_shift_reg|reg~17_combout\ : std_logic;
SIGNAL \kb_ps2_contr|buf_shift_reg|reg~18_combout\ : std_logic;
SIGNAL \kb_ps2_contr|buf_shift_reg|reg~11_combout\ : std_logic;
SIGNAL \kb_ps2_contr|buf_shift_reg|reg~19_combout\ : std_logic;
SIGNAL \kb_ps2_contr|buf_shift_reg|reg~8_combout\ : std_logic;
SIGNAL \kb_ps2_contr|buf_shift_reg|reg~12_combout\ : std_logic;
SIGNAL \kb_ps2_contr|buf_shift_reg|reg~14_combout\ : std_logic;
SIGNAL \kb_ps2_contr|buf_shift_reg|reg~9_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|Selector10~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|bits_counter|l_cnt[2]~0_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|shift_counter~0_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[0]~23\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[1]~25\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[2]~26_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[2]~27\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[3]~28_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[3]~29\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[4]~30_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[4]~31\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[5]~32_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[5]~33\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[6]~35\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[7]~36_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[7]~37\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[8]~39\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[9]~40_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[9]~41\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[10]~43\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[11]~44_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[11]~45\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[12]~47\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[13]~48_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[10]~42_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|LessThan1~6_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|LessThan1~7_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[6]~34_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[12]~46_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|LessThan1~3_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|LessThan1~5_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[13]~49\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[14]~50_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[14]~51\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[15]~52_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[15]~53\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[16]~55\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[17]~57\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[18]~58_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[18]~59\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[19]~60_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[19]~61\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[20]~63\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[21]~64_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|update_counter[20]~62_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|LessThan1~0_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|LessThan1~1_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|LessThan1~8_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|shift_counter~1_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|shift_counter~2_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|s_right~0_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|s_right~1_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|s_right~q\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg~9_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg~3_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg~2_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg~1_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg~0_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg~8_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg~7_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg~6_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg~5_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \sys_knight_rider_leds|leds_reg~4_combout\ : std_logic;
SIGNAL \rx_data_reg[2]~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|Selector2~1_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|Selector2~2_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|state.RX_DATA_S~q\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|state.RX_STOP_S~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|state.RX_STOP_S~q\ : std_logic;
SIGNAL \rx_data_reg[3]~0_combout\ : std_logic;
SIGNAL \rx_data_reg[3]~1_combout\ : std_logic;
SIGNAL \rx_data_reg[1]~3_combout\ : std_logic;
SIGNAL \rx_data_reg[3]~5_combout\ : std_logic;
SIGNAL \rx_data_reg[0]~2_combout\ : std_logic;
SIGNAL \seg7_decoder_1|Mux6~0_combout\ : std_logic;
SIGNAL \seg7_decoder_1|Mux5~0_combout\ : std_logic;
SIGNAL \seg7_decoder_1|Mux4~0_combout\ : std_logic;
SIGNAL \seg7_decoder_1|Mux3~0_combout\ : std_logic;
SIGNAL \seg7_decoder_1|Mux2~0_combout\ : std_logic;
SIGNAL \seg7_decoder_1|Mux1~0_combout\ : std_logic;
SIGNAL \seg7_decoder_1|Mux0~0_combout\ : std_logic;
SIGNAL \rx_data_reg[7]~9_combout\ : std_logic;
SIGNAL \rx_data_reg[5]~7_combout\ : std_logic;
SIGNAL \rx_data_reg[6]~8_combout\ : std_logic;
SIGNAL \rx_data_reg[4]~6_combout\ : std_logic;
SIGNAL \seg7_decoder_2|Mux6~0_combout\ : std_logic;
SIGNAL \seg7_decoder_2|Mux5~0_combout\ : std_logic;
SIGNAL \seg7_decoder_2|Mux4~0_combout\ : std_logic;
SIGNAL \seg7_decoder_2|Mux3~0_combout\ : std_logic;
SIGNAL \seg7_decoder_2|Mux2~0_combout\ : std_logic;
SIGNAL \seg7_decoder_2|Mux1~0_combout\ : std_logic;
SIGNAL \seg7_decoder_2|Mux0~0_combout\ : std_logic;
SIGNAL \rx_ack_r_reg[3]~_Duplicate_6_q\ : std_logic;
SIGNAL \rx_ack_r_reg[3]~0_combout\ : std_logic;
SIGNAL \rx_ack_r_reg[3]~_Duplicate_5_q\ : std_logic;
SIGNAL \rx_ack_r_reg[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \rx_ack_r_reg[3]~_Duplicate_2_q\ : std_logic;
SIGNAL \rx_ack_r_reg[3]~_Duplicate_3_q\ : std_logic;
SIGNAL \rx_ack_r_reg[3]~_Duplicate_4_q\ : std_logic;
SIGNAL \kb_ps2_contr|com_timer|l_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \kb_ps2_contr|bits_counter|l_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \kb_ps2_contr|buf_shift_reg|reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \kb_ps2_contr|ps2_clk_filter|l_sreg\ : std_logic_vector(0 TO 2);
SIGNAL rx_ack_r_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL rx_data_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \kb_ps2_contr|ps2_data_filter|l_sreg\ : std_logic_vector(0 TO 2);
SIGNAL \sys_knight_rider_leds|leds_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sys_knight_rider_leds|shift_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sys_knight_rider_leds|update_counter\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \kb_knight_rider_leds|leds_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \kb_knight_rider_leds|update_counter\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \ps2_kb_led_controller_1|leds_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \reset_control_1|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \reset_control_1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \seg7_decoder_1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \seg7_decoder_2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|ALT_INV_leds_reg~0_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|ALT_INV_leds_reg~1_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|ALT_INV_leds_reg~2_combout\ : std_logic;
SIGNAL \sys_knight_rider_leds|ALT_INV_leds_reg~3_combout\ : std_logic;
SIGNAL \ALT_INV_rx_ack_r_reg[3]~0_combout\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\ : std_logic;
SIGNAL \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_Selector4~1_combout\ : std_logic;

BEGIN

LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
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
ww_PS2_MSCLK <= PS2_MSCLK;
ww_PS2_MSDAT <= PS2_MSDAT;
ww_UART_RXD <= UART_RXD;
ww_UART_TXD <= UART_TXD;
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
ww_DRAM_BA <= DRAM_BA;
ww_DRAM_DQ <= DRAM_DQ;
ww_DRAM_ADDR <= DRAM_ADDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\reset_control_1|ALT_INV_LessThan0~1_combout\ <= NOT \reset_control_1|LessThan0~1_combout\;
\seg7_decoder_1|ALT_INV_Mux0~0_combout\ <= NOT \seg7_decoder_1|Mux0~0_combout\;
\seg7_decoder_2|ALT_INV_Mux0~0_combout\ <= NOT \seg7_decoder_2|Mux0~0_combout\;
\sys_knight_rider_leds|ALT_INV_leds_reg~0_combout\ <= NOT \sys_knight_rider_leds|leds_reg~0_combout\;
\sys_knight_rider_leds|ALT_INV_leds_reg~1_combout\ <= NOT \sys_knight_rider_leds|leds_reg~1_combout\;
\sys_knight_rider_leds|ALT_INV_leds_reg~2_combout\ <= NOT \sys_knight_rider_leds|leds_reg~2_combout\;
\sys_knight_rider_leds|ALT_INV_leds_reg~3_combout\ <= NOT \sys_knight_rider_leds|leds_reg~3_combout\;
\ALT_INV_rx_ack_r_reg[3]~0_combout\ <= NOT \rx_ack_r_reg[3]~0_combout\;
\kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\ <= NOT \kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~_Duplicate_1_q\;
\kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_Selector4~1_combout\ <= NOT \kb_ps2_contr|ps2_controller_fsm_1|Selector4~1_combout\;

-- Location: FF_X28_Y25_N7
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

-- Location: FF_X28_Y25_N13
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

-- Location: FF_X1_Y24_N13
\sys_knight_rider_leds|update_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[17]~56_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(17));

-- Location: FF_X1_Y24_N11
\sys_knight_rider_leds|update_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[16]~54_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(16));

-- Location: FF_X1_Y25_N11
\sys_knight_rider_leds|update_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[0]~22_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(0));

-- Location: FF_X1_Y25_N13
\sys_knight_rider_leds|update_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[1]~24_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(1));

-- Location: FF_X1_Y25_N27
\sys_knight_rider_leds|update_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[8]~38_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(8));

-- Location: LCCOMB_X28_Y25_N6
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

-- Location: LCCOMB_X28_Y25_N12
\reset_control_1|count[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|count[4]~13_combout\ = (\reset_control_1|count\(4) & (!\reset_control_1|count[3]~12\)) # (!\reset_control_1|count\(4) & ((\reset_control_1|count[3]~12\) # (GND)))
-- \reset_control_1|count[4]~14\ = CARRY((!\reset_control_1|count[3]~12\) # (!\reset_control_1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reset_control_1|count\(4),
	datad => VCC,
	cin => \reset_control_1|count[3]~12\,
	combout => \reset_control_1|count[4]~13_combout\,
	cout => \reset_control_1|count[4]~14\);

-- Location: LCCOMB_X1_Y25_N10
\sys_knight_rider_leds|update_counter[0]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[0]~22_combout\ = \sys_knight_rider_leds|update_counter\(0) $ (VCC)
-- \sys_knight_rider_leds|update_counter[0]~23\ = CARRY(\sys_knight_rider_leds|update_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(0),
	datad => VCC,
	combout => \sys_knight_rider_leds|update_counter[0]~22_combout\,
	cout => \sys_knight_rider_leds|update_counter[0]~23\);

-- Location: LCCOMB_X1_Y25_N12
\sys_knight_rider_leds|update_counter[1]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[1]~24_combout\ = (\sys_knight_rider_leds|update_counter\(1) & (!\sys_knight_rider_leds|update_counter[0]~23\)) # (!\sys_knight_rider_leds|update_counter\(1) & ((\sys_knight_rider_leds|update_counter[0]~23\) # (GND)))
-- \sys_knight_rider_leds|update_counter[1]~25\ = CARRY((!\sys_knight_rider_leds|update_counter[0]~23\) # (!\sys_knight_rider_leds|update_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(1),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[0]~23\,
	combout => \sys_knight_rider_leds|update_counter[1]~24_combout\,
	cout => \sys_knight_rider_leds|update_counter[1]~25\);

-- Location: LCCOMB_X1_Y25_N26
\sys_knight_rider_leds|update_counter[8]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[8]~38_combout\ = (\sys_knight_rider_leds|update_counter\(8) & (\sys_knight_rider_leds|update_counter[7]~37\ $ (GND))) # (!\sys_knight_rider_leds|update_counter\(8) & (!\sys_knight_rider_leds|update_counter[7]~37\ & 
-- VCC))
-- \sys_knight_rider_leds|update_counter[8]~39\ = CARRY((\sys_knight_rider_leds|update_counter\(8) & !\sys_knight_rider_leds|update_counter[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(8),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[7]~37\,
	combout => \sys_knight_rider_leds|update_counter[8]~38_combout\,
	cout => \sys_knight_rider_leds|update_counter[8]~39\);

-- Location: LCCOMB_X1_Y24_N10
\sys_knight_rider_leds|update_counter[16]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[16]~54_combout\ = (\sys_knight_rider_leds|update_counter\(16) & (\sys_knight_rider_leds|update_counter[15]~53\ $ (GND))) # (!\sys_knight_rider_leds|update_counter\(16) & (!\sys_knight_rider_leds|update_counter[15]~53\ 
-- & VCC))
-- \sys_knight_rider_leds|update_counter[16]~55\ = CARRY((\sys_knight_rider_leds|update_counter\(16) & !\sys_knight_rider_leds|update_counter[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(16),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[15]~53\,
	combout => \sys_knight_rider_leds|update_counter[16]~54_combout\,
	cout => \sys_knight_rider_leds|update_counter[16]~55\);

-- Location: LCCOMB_X1_Y24_N12
\sys_knight_rider_leds|update_counter[17]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[17]~56_combout\ = (\sys_knight_rider_leds|update_counter\(17) & (!\sys_knight_rider_leds|update_counter[16]~55\)) # (!\sys_knight_rider_leds|update_counter\(17) & ((\sys_knight_rider_leds|update_counter[16]~55\) # 
-- (GND)))
-- \sys_knight_rider_leds|update_counter[17]~57\ = CARRY((!\sys_knight_rider_leds|update_counter[16]~55\) # (!\sys_knight_rider_leds|update_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(17),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[16]~55\,
	combout => \sys_knight_rider_leds|update_counter[17]~56_combout\,
	cout => \sys_knight_rider_leds|update_counter[17]~57\);

-- Location: FF_X28_Y22_N13
\kb_knight_rider_leds|update_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[17]~57_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(17));

-- Location: FF_X28_Y23_N21
\kb_knight_rider_leds|update_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[5]~33_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(5));

-- Location: FF_X28_Y23_N31
\kb_knight_rider_leds|update_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[10]~43_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(10));

-- Location: FF_X28_Y23_N23
\kb_knight_rider_leds|update_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[6]~35_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(6));

-- Location: FF_X27_Y24_N23
\kb_ps2_contr|com_timer|l_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|com_timer|l_cnt[11]~35_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|com_timer|l_cnt\(11));

-- Location: FF_X27_Y24_N13
\kb_ps2_contr|com_timer|l_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|com_timer|l_cnt[6]~25_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|com_timer|l_cnt\(6));

-- Location: FF_X28_Y23_N13
\kb_knight_rider_leds|update_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[1]~25_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(1));

-- Location: FF_X28_Y23_N11
\kb_knight_rider_leds|update_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[0]~23_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(0));

-- Location: LCCOMB_X28_Y23_N10
\kb_knight_rider_leds|update_counter[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[0]~23_combout\ = \kb_knight_rider_leds|update_counter\(0) $ (VCC)
-- \kb_knight_rider_leds|update_counter[0]~24\ = CARRY(\kb_knight_rider_leds|update_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(0),
	datad => VCC,
	combout => \kb_knight_rider_leds|update_counter[0]~23_combout\,
	cout => \kb_knight_rider_leds|update_counter[0]~24\);

-- Location: LCCOMB_X28_Y23_N12
\kb_knight_rider_leds|update_counter[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[1]~25_combout\ = (\kb_knight_rider_leds|update_counter\(1) & (!\kb_knight_rider_leds|update_counter[0]~24\)) # (!\kb_knight_rider_leds|update_counter\(1) & ((\kb_knight_rider_leds|update_counter[0]~24\) # (GND)))
-- \kb_knight_rider_leds|update_counter[1]~26\ = CARRY((!\kb_knight_rider_leds|update_counter[0]~24\) # (!\kb_knight_rider_leds|update_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(1),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[0]~24\,
	combout => \kb_knight_rider_leds|update_counter[1]~25_combout\,
	cout => \kb_knight_rider_leds|update_counter[1]~26\);

-- Location: LCCOMB_X28_Y23_N20
\kb_knight_rider_leds|update_counter[5]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[5]~33_combout\ = (\kb_knight_rider_leds|update_counter\(5) & (!\kb_knight_rider_leds|update_counter[4]~32\)) # (!\kb_knight_rider_leds|update_counter\(5) & ((\kb_knight_rider_leds|update_counter[4]~32\) # (GND)))
-- \kb_knight_rider_leds|update_counter[5]~34\ = CARRY((!\kb_knight_rider_leds|update_counter[4]~32\) # (!\kb_knight_rider_leds|update_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(5),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[4]~32\,
	combout => \kb_knight_rider_leds|update_counter[5]~33_combout\,
	cout => \kb_knight_rider_leds|update_counter[5]~34\);

-- Location: LCCOMB_X28_Y23_N22
\kb_knight_rider_leds|update_counter[6]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[6]~35_combout\ = (\kb_knight_rider_leds|update_counter\(6) & (\kb_knight_rider_leds|update_counter[5]~34\ $ (GND))) # (!\kb_knight_rider_leds|update_counter\(6) & (!\kb_knight_rider_leds|update_counter[5]~34\ & VCC))
-- \kb_knight_rider_leds|update_counter[6]~36\ = CARRY((\kb_knight_rider_leds|update_counter\(6) & !\kb_knight_rider_leds|update_counter[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(6),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[5]~34\,
	combout => \kb_knight_rider_leds|update_counter[6]~35_combout\,
	cout => \kb_knight_rider_leds|update_counter[6]~36\);

-- Location: LCCOMB_X28_Y23_N30
\kb_knight_rider_leds|update_counter[10]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[10]~43_combout\ = (\kb_knight_rider_leds|update_counter\(10) & (\kb_knight_rider_leds|update_counter[9]~42\ $ (GND))) # (!\kb_knight_rider_leds|update_counter\(10) & (!\kb_knight_rider_leds|update_counter[9]~42\ & 
-- VCC))
-- \kb_knight_rider_leds|update_counter[10]~44\ = CARRY((\kb_knight_rider_leds|update_counter\(10) & !\kb_knight_rider_leds|update_counter[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(10),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[9]~42\,
	combout => \kb_knight_rider_leds|update_counter[10]~43_combout\,
	cout => \kb_knight_rider_leds|update_counter[10]~44\);

-- Location: LCCOMB_X28_Y22_N12
\kb_knight_rider_leds|update_counter[17]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[17]~57_combout\ = (\kb_knight_rider_leds|update_counter\(17) & (!\kb_knight_rider_leds|update_counter[16]~56\)) # (!\kb_knight_rider_leds|update_counter\(17) & ((\kb_knight_rider_leds|update_counter[16]~56\) # (GND)))
-- \kb_knight_rider_leds|update_counter[17]~58\ = CARRY((!\kb_knight_rider_leds|update_counter[16]~56\) # (!\kb_knight_rider_leds|update_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(17),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[16]~56\,
	combout => \kb_knight_rider_leds|update_counter[17]~57_combout\,
	cout => \kb_knight_rider_leds|update_counter[17]~58\);

-- Location: LCCOMB_X27_Y24_N12
\kb_ps2_contr|com_timer|l_cnt[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|com_timer|l_cnt[6]~25_combout\ = (\kb_ps2_contr|com_timer|l_cnt\(6) & (\kb_ps2_contr|com_timer|l_cnt[5]~24\ $ (GND))) # (!\kb_ps2_contr|com_timer|l_cnt\(6) & (!\kb_ps2_contr|com_timer|l_cnt[5]~24\ & VCC))
-- \kb_ps2_contr|com_timer|l_cnt[6]~26\ = CARRY((\kb_ps2_contr|com_timer|l_cnt\(6) & !\kb_ps2_contr|com_timer|l_cnt[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|com_timer|l_cnt\(6),
	datad => VCC,
	cin => \kb_ps2_contr|com_timer|l_cnt[5]~24\,
	combout => \kb_ps2_contr|com_timer|l_cnt[6]~25_combout\,
	cout => \kb_ps2_contr|com_timer|l_cnt[6]~26\);

-- Location: LCCOMB_X27_Y24_N22
\kb_ps2_contr|com_timer|l_cnt[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|com_timer|l_cnt[11]~35_combout\ = (\kb_ps2_contr|com_timer|l_cnt\(11) & (!\kb_ps2_contr|com_timer|l_cnt[10]~34\)) # (!\kb_ps2_contr|com_timer|l_cnt\(11) & ((\kb_ps2_contr|com_timer|l_cnt[10]~34\) # (GND)))
-- \kb_ps2_contr|com_timer|l_cnt[11]~36\ = CARRY((!\kb_ps2_contr|com_timer|l_cnt[10]~34\) # (!\kb_ps2_contr|com_timer|l_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|com_timer|l_cnt\(11),
	datad => VCC,
	cin => \kb_ps2_contr|com_timer|l_cnt[10]~34\,
	combout => \kb_ps2_contr|com_timer|l_cnt[11]~35_combout\,
	cout => \kb_ps2_contr|com_timer|l_cnt[11]~36\);

-- Location: FF_X1_Y23_N7
\sys_knight_rider_leds|leds_reg[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|leds_reg~4_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y24_N24
\sys_knight_rider_leds|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|LessThan1~2_combout\ = (\sys_knight_rider_leds|LessThan1~0_combout\ & (!\sys_knight_rider_leds|update_counter\(14) & (!\sys_knight_rider_leds|update_counter\(15) & !\sys_knight_rider_leds|update_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|LessThan1~0_combout\,
	datab => \sys_knight_rider_leds|update_counter\(14),
	datac => \sys_knight_rider_leds|update_counter\(15),
	datad => \sys_knight_rider_leds|update_counter\(16),
	combout => \sys_knight_rider_leds|LessThan1~2_combout\);

-- Location: LCCOMB_X1_Y25_N6
\sys_knight_rider_leds|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|LessThan1~4_combout\ = (((!\sys_knight_rider_leds|update_counter\(0)) # (!\sys_knight_rider_leds|update_counter\(2))) # (!\sys_knight_rider_leds|update_counter\(3))) # (!\sys_knight_rider_leds|update_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(1),
	datab => \sys_knight_rider_leds|update_counter\(3),
	datac => \sys_knight_rider_leds|update_counter\(2),
	datad => \sys_knight_rider_leds|update_counter\(0),
	combout => \sys_knight_rider_leds|LessThan1~4_combout\);

-- Location: LCCOMB_X27_Y25_N10
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\kb_ps2_contr|buf_shift_reg|reg\(6) & (!\kb_ps2_contr|buf_shift_reg|reg\(7) & (!\kb_ps2_contr|buf_shift_reg|reg\(5) & !\kb_ps2_contr|buf_shift_reg|reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|buf_shift_reg|reg\(6),
	datab => \kb_ps2_contr|buf_shift_reg|reg\(7),
	datac => \kb_ps2_contr|buf_shift_reg|reg\(5),
	datad => \kb_ps2_contr|buf_shift_reg|reg\(4),
	combout => \Equal0~0_combout\);

-- Location: FF_X27_Y23_N19
\ps2_kb_led_controller_1|state.WRITE_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_kb_led_controller_1|state_next.WRITE_S~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_kb_led_controller_1|state.WRITE_S~q\);

-- Location: FF_X26_Y25_N31
\kb_ps2_contr|buf_shift_reg|reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|buf_shift_reg|reg~15_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_ps2_contr|buf_shift_reg|reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|buf_shift_reg|reg\(8));

-- Location: FF_X28_Y24_N27
\ps2_kb_led_controller_1|leds_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \kb_knight_rider_leds|leds_reg\(1),
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sload => VCC,
	ena => \ps2_kb_led_controller_1|Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_kb_led_controller_1|leds_reg\(2));

-- Location: LCCOMB_X28_Y22_N26
\ps2_kb_led_controller_1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_kb_led_controller_1|Selector1~0_combout\ = (\kb_knight_rider_leds|update_counter\(14)) # ((\kb_knight_rider_leds|update_counter\(12)) # ((\kb_knight_rider_leds|update_counter\(15)) # (\kb_knight_rider_leds|update_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(14),
	datab => \kb_knight_rider_leds|update_counter\(12),
	datac => \kb_knight_rider_leds|update_counter\(15),
	datad => \kb_knight_rider_leds|update_counter\(11),
	combout => \ps2_kb_led_controller_1|Selector1~0_combout\);

-- Location: FF_X27_Y23_N9
\ps2_kb_led_controller_1|state.IDLE_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_kb_led_controller_1|Selector0~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_kb_led_controller_1|state.IDLE_S~q\);

-- Location: FF_X27_Y23_N27
\kb_ps2_contr|ps2_controller_fsm_1|state.TX_ACK_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_controller_fsm_1|Selector8~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_ACK_S~q\);

-- Location: FF_X27_Y23_N5
\ps2_kb_led_controller_1|state.WAIT_CMD_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_kb_led_controller_1|Selector3~1_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_kb_led_controller_1|state.WAIT_CMD_S~q\);

-- Location: LCCOMB_X27_Y23_N18
\ps2_kb_led_controller_1|state_next.WRITE_S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_kb_led_controller_1|state_next.WRITE_S~0_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|state.TX_ACK_S~q\ & (\ps2_kb_led_controller_1|state.WAIT_CMD_S~q\ & \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_ACK_S~q\,
	datab => \ps2_kb_led_controller_1|state.WAIT_CMD_S~q\,
	datac => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\,
	combout => \ps2_kb_led_controller_1|state_next.WRITE_S~0_combout\);

-- Location: FF_X26_Y24_N13
\kb_ps2_contr|bits_counter|l_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|bits_counter|Mux2~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_ps2_contr|bits_counter|l_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|bits_counter|l_cnt\(1));

-- Location: LCCOMB_X28_Y24_N26
\kb_ps2_contr|tx_parity_generator|parity_o~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|tx_parity_generator|parity_o~0_combout\ = (\ps2_kb_led_controller_1|state.WRITE_CMD_S~q\ & (\ps2_kb_led_controller_1|leds_reg\(0) $ (\ps2_kb_led_controller_1|leds_reg\(1) $ (\ps2_kb_led_controller_1|leds_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_kb_led_controller_1|leds_reg\(0),
	datab => \ps2_kb_led_controller_1|leds_reg\(1),
	datac => \ps2_kb_led_controller_1|leds_reg\(2),
	datad => \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\,
	combout => \kb_ps2_contr|tx_parity_generator|parity_o~0_combout\);

-- Location: LCCOMB_X26_Y25_N30
\kb_ps2_contr|buf_shift_reg|reg~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|buf_shift_reg|reg~15_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (((!\kb_ps2_contr|ps2_controller_fsm_1|Selector4~0_combout\ & !\kb_ps2_contr|tx_parity_generator|parity_o~0_combout\)))) # 
-- (!\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (\kb_ps2_contr|ps2_data_filter|l_fsig_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_data_filter|l_fsig_reg~q\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|Selector4~0_combout\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\,
	datad => \kb_ps2_contr|tx_parity_generator|parity_o~0_combout\,
	combout => \kb_ps2_contr|buf_shift_reg|reg~15_combout\);

-- Location: FF_X27_Y23_N13
\kb_ps2_contr|ps2_controller_fsm_1|state.TX_STOP_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_controller_fsm_1|Selector7~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_STOP_S~q\);

-- Location: LCCOMB_X27_Y23_N30
\ps2_kb_led_controller_1|Selector1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_kb_led_controller_1|Selector1~4_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|state.TX_STOP_S~q\ & (\kb_ps2_contr|ps2_data_filter|l_fsig_reg~q\ & (\ps2_kb_led_controller_1|state.WAIT_CMD_S~q\ & 
-- \kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_STOP_S~q\,
	datab => \kb_ps2_contr|ps2_data_filter|l_fsig_reg~q\,
	datac => \ps2_kb_led_controller_1|state.WAIT_CMD_S~q\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\,
	combout => \ps2_kb_led_controller_1|Selector1~4_combout\);

-- Location: FF_X27_Y23_N17
\ps2_kb_led_controller_1|state.WAIT_WRITE_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_kb_led_controller_1|Selector4~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_kb_led_controller_1|state.WAIT_WRITE_S~q\);

-- Location: LCCOMB_X27_Y23_N10
\ps2_kb_led_controller_1|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_kb_led_controller_1|Selector3~0_combout\ = (!\kb_ps2_contr|ps2_controller_fsm_1|Selector0~0_combout\ & (((!\kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\) # (!\kb_ps2_contr|ps2_data_filter|l_fsig_reg~q\)) # 
-- (!\kb_ps2_contr|ps2_controller_fsm_1|state.TX_STOP_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_STOP_S~q\,
	datab => \kb_ps2_contr|ps2_data_filter|l_fsig_reg~q\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|Selector0~0_combout\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\,
	combout => \ps2_kb_led_controller_1|Selector3~0_combout\);

-- Location: LCCOMB_X27_Y23_N8
\ps2_kb_led_controller_1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_kb_led_controller_1|Selector0~0_combout\ = (\ps2_kb_led_controller_1|Selector3~0_combout\ & ((\kb_knight_rider_leds|LessThan1~7_combout\) # ((\ps2_kb_led_controller_1|state.IDLE_S~q\)))) # (!\ps2_kb_led_controller_1|Selector3~0_combout\ & 
-- (!\ps2_kb_led_controller_1|state.WAIT_WRITE_S~q\ & ((\kb_knight_rider_leds|LessThan1~7_combout\) # (\ps2_kb_led_controller_1|state.IDLE_S~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_kb_led_controller_1|Selector3~0_combout\,
	datab => \kb_knight_rider_leds|LessThan1~7_combout\,
	datac => \ps2_kb_led_controller_1|state.IDLE_S~q\,
	datad => \ps2_kb_led_controller_1|state.WAIT_WRITE_S~q\,
	combout => \ps2_kb_led_controller_1|Selector0~0_combout\);

-- Location: LCCOMB_X27_Y23_N26
\kb_ps2_contr|ps2_controller_fsm_1|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|Selector8~0_combout\ = (!\kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\ & ((\kb_ps2_contr|ps2_controller_fsm_1|state.TX_ACK_S~q\) # ((\kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\ & 
-- \kb_ps2_contr|ps2_controller_fsm_1|state.TX_STOP_S~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_ACK_S~q\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_STOP_S~q\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|Selector8~0_combout\);

-- Location: LCCOMB_X27_Y23_N4
\ps2_kb_led_controller_1|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_kb_led_controller_1|Selector3~1_combout\ = (\ps2_kb_led_controller_1|state.WRITE_CMD_S~q\) # ((\ps2_kb_led_controller_1|Selector3~0_combout\ & \ps2_kb_led_controller_1|state.WAIT_CMD_S~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_kb_led_controller_1|Selector3~0_combout\,
	datac => \ps2_kb_led_controller_1|state.WAIT_CMD_S~q\,
	datad => \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\,
	combout => \ps2_kb_led_controller_1|Selector3~1_combout\);

-- Location: LCCOMB_X26_Y24_N12
\kb_ps2_contr|bits_counter|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|bits_counter|Mux2~0_combout\ = (!\kb_ps2_contr|ps2_controller_fsm_1|Selector6~0_combout\ & (\kb_ps2_contr|bits_counter|l_cnt\(1) $ (\kb_ps2_contr|bits_counter|l_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|ps2_controller_fsm_1|Selector6~0_combout\,
	datac => \kb_ps2_contr|bits_counter|l_cnt\(1),
	datad => \kb_ps2_contr|bits_counter|l_cnt\(0),
	combout => \kb_ps2_contr|bits_counter|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y23_N12
\kb_ps2_contr|ps2_controller_fsm_1|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|Selector7~0_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\ & (((\kb_ps2_contr|ps2_controller_fsm_1|state.TX_STOP_S~q\ & !\kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\)) # 
-- (!\kb_ps2_contr|ps2_controller_fsm_1|LessThan1~0_combout\))) # (!\kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\ & (((\kb_ps2_contr|ps2_controller_fsm_1|state.TX_STOP_S~q\ & !\kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|LessThan1~0_combout\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_STOP_S~q\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|Selector7~0_combout\);

-- Location: LCCOMB_X27_Y23_N16
\ps2_kb_led_controller_1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_kb_led_controller_1|Selector4~0_combout\ = (\ps2_kb_led_controller_1|state.WRITE_S~q\) # ((\ps2_kb_led_controller_1|state.WAIT_WRITE_S~q\ & \ps2_kb_led_controller_1|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_kb_led_controller_1|state.WRITE_S~q\,
	datac => \ps2_kb_led_controller_1|state.WAIT_WRITE_S~q\,
	datad => \ps2_kb_led_controller_1|Selector3~0_combout\,
	combout => \ps2_kb_led_controller_1|Selector4~0_combout\);

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sys_knight_rider_leds|leds_reg\(0),
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
	i => \sys_knight_rider_leds|leds_reg\(1),
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
	i => \sys_knight_rider_leds|leds_reg\(2),
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
	i => \sys_knight_rider_leds|leds_reg\(3),
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
	i => \sys_knight_rider_leds|leds_reg\(4),
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
	i => \sys_knight_rider_leds|leds_reg\(5),
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
	i => \sys_knight_rider_leds|leds_reg\(6),
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
	i => \sys_knight_rider_leds|leds_reg\(7),
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
	i => \sys_knight_rider_leds|leds_reg\(8),
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
	i => \sys_knight_rider_leds|leds_reg\(9),
	devoe => ww_devoe,
	o => ww_LEDG(9));

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X21_Y29_N30
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X26_Y29_N2
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X28_Y29_N30
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X26_Y29_N9
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X28_Y29_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X23_Y29_N9
\HEX0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(7));

-- Location: IOOBUF_X21_Y29_N2
\HEX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X21_Y29_N9
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X23_Y29_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X23_Y29_N23
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X23_Y29_N30
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X28_Y29_N16
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X26_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_decoder_2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X26_Y29_N30
\HEX1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(7));

-- Location: IOOBUF_X32_Y29_N30
\HEX2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X30_Y29_N30
\HEX2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X28_Y29_N2
\HEX2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X30_Y29_N2
\HEX2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_ack_r_reg(3),
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X30_Y29_N16
\HEX2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X30_Y29_N23
\HEX2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X37_Y29_N2
\HEX2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_ack_r_reg[3]~_Duplicate_5_q\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X32_Y29_N16
\HEX2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(7));

-- Location: IOOBUF_X32_Y29_N23
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X39_Y29_N16
\HEX3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_ack_r_reg[3]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X32_Y29_N9
\HEX3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_ack_r_reg[3]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X32_Y29_N2
\HEX3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_ack_r_reg[3]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X37_Y29_N23
\HEX3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X37_Y29_N30
\HEX3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_ack_r_reg[3]~_Duplicate_4_q\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X39_Y29_N23
\HEX3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(7));

-- Location: IOOBUF_X41_Y11_N2
\PS2_KBCLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => PS2_KBCLK);

-- Location: IOOBUF_X41_Y12_N23
\PS2_KBDAT~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kb_ps2_contr|ps2_controller_fsm_1|Selector10~0_combout\,
	oe => \kb_ps2_contr|bits_counter|l_cnt[2]~0_combout\,
	devoe => ww_devoe,
	o => PS2_KBDAT);

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

-- Location: LCCOMB_X28_Y23_N14
\kb_knight_rider_leds|update_counter[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[2]~27_combout\ = (\kb_knight_rider_leds|update_counter\(2) & (\kb_knight_rider_leds|update_counter[1]~26\ $ (GND))) # (!\kb_knight_rider_leds|update_counter\(2) & (!\kb_knight_rider_leds|update_counter[1]~26\ & VCC))
-- \kb_knight_rider_leds|update_counter[2]~28\ = CARRY((\kb_knight_rider_leds|update_counter\(2) & !\kb_knight_rider_leds|update_counter[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(2),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[1]~26\,
	combout => \kb_knight_rider_leds|update_counter[2]~27_combout\,
	cout => \kb_knight_rider_leds|update_counter[2]~28\);

-- Location: LCCOMB_X28_Y25_N0
\reset_control_1|count[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|count[0]~6_combout\ = \reset_control_1|count\(0) $ (\reset_control_1|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_control_1|count\(0),
	datad => \reset_control_1|LessThan0~1_combout\,
	combout => \reset_control_1|count[0]~6_combout\);

-- Location: FF_X28_Y25_N1
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

-- Location: LCCOMB_X28_Y25_N8
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

-- Location: FF_X28_Y25_N9
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

-- Location: LCCOMB_X28_Y25_N10
\reset_control_1|count[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|count[3]~11_combout\ = (\reset_control_1|count\(3) & (\reset_control_1|count[2]~10\ $ (GND))) # (!\reset_control_1|count\(3) & (!\reset_control_1|count[2]~10\ & VCC))
-- \reset_control_1|count[3]~12\ = CARRY((\reset_control_1|count\(3) & !\reset_control_1|count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reset_control_1|count\(3),
	datad => VCC,
	cin => \reset_control_1|count[2]~10\,
	combout => \reset_control_1|count[3]~11_combout\,
	cout => \reset_control_1|count[3]~12\);

-- Location: LCCOMB_X28_Y25_N14
\reset_control_1|count[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|count[5]~15_combout\ = (\reset_control_1|count\(5) & (\reset_control_1|count[4]~14\ $ (GND))) # (!\reset_control_1|count\(5) & (!\reset_control_1|count[4]~14\ & VCC))
-- \reset_control_1|count[5]~16\ = CARRY((\reset_control_1|count\(5) & !\reset_control_1|count[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reset_control_1|count\(5),
	datad => VCC,
	cin => \reset_control_1|count[4]~14\,
	combout => \reset_control_1|count[5]~15_combout\,
	cout => \reset_control_1|count[5]~16\);

-- Location: FF_X28_Y25_N15
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

-- Location: LCCOMB_X28_Y25_N16
\reset_control_1|count[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|count[6]~17_combout\ = \reset_control_1|count[5]~16\ $ (\reset_control_1|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \reset_control_1|count\(6),
	cin => \reset_control_1|count[5]~16\,
	combout => \reset_control_1|count[6]~17_combout\);

-- Location: FF_X28_Y25_N17
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

-- Location: FF_X28_Y25_N11
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

-- Location: LCCOMB_X28_Y25_N2
\reset_control_1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|LessThan0~0_combout\ = (((!\reset_control_1|count\(3)) # (!\reset_control_1|count\(2))) # (!\reset_control_1|count\(0))) # (!\reset_control_1|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_control_1|count\(1),
	datab => \reset_control_1|count\(0),
	datac => \reset_control_1|count\(2),
	datad => \reset_control_1|count\(3),
	combout => \reset_control_1|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y25_N20
\reset_control_1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_control_1|LessThan0~1_combout\ = (((\reset_control_1|LessThan0~0_combout\) # (!\reset_control_1|count\(5))) # (!\reset_control_1|count\(6))) # (!\reset_control_1|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_control_1|count\(4),
	datab => \reset_control_1|count\(6),
	datac => \reset_control_1|count\(5),
	datad => \reset_control_1|LessThan0~0_combout\,
	combout => \reset_control_1|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y23_N26
\kb_knight_rider_leds|update_counter[8]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[8]~39_combout\ = (\kb_knight_rider_leds|update_counter\(8) & (\kb_knight_rider_leds|update_counter[7]~38\ $ (GND))) # (!\kb_knight_rider_leds|update_counter\(8) & (!\kb_knight_rider_leds|update_counter[7]~38\ & VCC))
-- \kb_knight_rider_leds|update_counter[8]~40\ = CARRY((\kb_knight_rider_leds|update_counter\(8) & !\kb_knight_rider_leds|update_counter[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(8),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[7]~38\,
	combout => \kb_knight_rider_leds|update_counter[8]~39_combout\,
	cout => \kb_knight_rider_leds|update_counter[8]~40\);

-- Location: FF_X28_Y23_N27
\kb_knight_rider_leds|update_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[8]~39_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(8));

-- Location: LCCOMB_X28_Y23_N2
\kb_knight_rider_leds|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|LessThan1~3_combout\ = (!\kb_knight_rider_leds|update_counter\(10) & (!\kb_knight_rider_leds|update_counter\(9) & (!\kb_knight_rider_leds|update_counter\(8) & !\kb_knight_rider_leds|update_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(10),
	datab => \kb_knight_rider_leds|update_counter\(9),
	datac => \kb_knight_rider_leds|update_counter\(8),
	datad => \kb_knight_rider_leds|update_counter\(7),
	combout => \kb_knight_rider_leds|LessThan1~3_combout\);

-- Location: LCCOMB_X28_Y23_N8
\kb_knight_rider_leds|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|LessThan1~2_combout\ = (!\kb_knight_rider_leds|update_counter\(5) & (((!\kb_knight_rider_leds|update_counter\(2) & !\kb_knight_rider_leds|update_counter\(3))) # (!\kb_knight_rider_leds|update_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(5),
	datab => \kb_knight_rider_leds|update_counter\(4),
	datac => \kb_knight_rider_leds|update_counter\(2),
	datad => \kb_knight_rider_leds|update_counter\(3),
	combout => \kb_knight_rider_leds|LessThan1~2_combout\);

-- Location: LCCOMB_X28_Y22_N6
\kb_knight_rider_leds|update_counter[14]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[14]~51_combout\ = (\kb_knight_rider_leds|update_counter\(14) & (\kb_knight_rider_leds|update_counter[13]~50\ $ (GND))) # (!\kb_knight_rider_leds|update_counter\(14) & (!\kb_knight_rider_leds|update_counter[13]~50\ & 
-- VCC))
-- \kb_knight_rider_leds|update_counter[14]~52\ = CARRY((\kb_knight_rider_leds|update_counter\(14) & !\kb_knight_rider_leds|update_counter[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(14),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[13]~50\,
	combout => \kb_knight_rider_leds|update_counter[14]~51_combout\,
	cout => \kb_knight_rider_leds|update_counter[14]~52\);

-- Location: FF_X28_Y22_N7
\kb_knight_rider_leds|update_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[14]~51_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(14));

-- Location: LCCOMB_X28_Y22_N28
\kb_knight_rider_leds|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|LessThan1~1_combout\ = (!\kb_knight_rider_leds|update_counter\(12) & (!\kb_knight_rider_leds|update_counter\(15) & !\kb_knight_rider_leds|update_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(12),
	datac => \kb_knight_rider_leds|update_counter\(15),
	datad => \kb_knight_rider_leds|update_counter\(14),
	combout => \kb_knight_rider_leds|LessThan1~1_combout\);

-- Location: LCCOMB_X28_Y23_N6
\kb_knight_rider_leds|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|LessThan1~5_combout\ = (!\kb_knight_rider_leds|update_counter\(6) & (\kb_knight_rider_leds|LessThan1~3_combout\ & (\kb_knight_rider_leds|LessThan1~2_combout\ & \kb_knight_rider_leds|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(6),
	datab => \kb_knight_rider_leds|LessThan1~3_combout\,
	datac => \kb_knight_rider_leds|LessThan1~2_combout\,
	datad => \kb_knight_rider_leds|LessThan1~1_combout\,
	combout => \kb_knight_rider_leds|LessThan1~5_combout\);

-- Location: LCCOMB_X28_Y22_N24
\kb_knight_rider_leds|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|LessThan1~0_combout\ = (((!\kb_knight_rider_leds|update_counter\(20)) # (!\kb_knight_rider_leds|update_counter\(18))) # (!\kb_knight_rider_leds|update_counter\(19))) # (!\kb_knight_rider_leds|update_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(17),
	datab => \kb_knight_rider_leds|update_counter\(19),
	datac => \kb_knight_rider_leds|update_counter\(18),
	datad => \kb_knight_rider_leds|update_counter\(20),
	combout => \kb_knight_rider_leds|LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y22_N20
\kb_knight_rider_leds|update_counter[21]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[21]~65_combout\ = (\kb_knight_rider_leds|update_counter\(21) & (!\kb_knight_rider_leds|update_counter[20]~64\)) # (!\kb_knight_rider_leds|update_counter\(21) & ((\kb_knight_rider_leds|update_counter[20]~64\) # (GND)))
-- \kb_knight_rider_leds|update_counter[21]~66\ = CARRY((!\kb_knight_rider_leds|update_counter[20]~64\) # (!\kb_knight_rider_leds|update_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(21),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[20]~64\,
	combout => \kb_knight_rider_leds|update_counter[21]~65_combout\,
	cout => \kb_knight_rider_leds|update_counter[21]~66\);

-- Location: LCCOMB_X28_Y22_N22
\kb_knight_rider_leds|update_counter[22]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[22]~67_combout\ = \kb_knight_rider_leds|update_counter\(22) $ (!\kb_knight_rider_leds|update_counter[21]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(22),
	cin => \kb_knight_rider_leds|update_counter[21]~66\,
	combout => \kb_knight_rider_leds|update_counter[22]~67_combout\);

-- Location: FF_X28_Y22_N23
\kb_knight_rider_leds|update_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[22]~67_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(22));

-- Location: LCCOMB_X28_Y22_N10
\kb_knight_rider_leds|update_counter[16]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[16]~55_combout\ = (\kb_knight_rider_leds|update_counter\(16) & (\kb_knight_rider_leds|update_counter[15]~54\ $ (GND))) # (!\kb_knight_rider_leds|update_counter\(16) & (!\kb_knight_rider_leds|update_counter[15]~54\ & 
-- VCC))
-- \kb_knight_rider_leds|update_counter[16]~56\ = CARRY((\kb_knight_rider_leds|update_counter\(16) & !\kb_knight_rider_leds|update_counter[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(16),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[15]~54\,
	combout => \kb_knight_rider_leds|update_counter[16]~55_combout\,
	cout => \kb_knight_rider_leds|update_counter[16]~56\);

-- Location: FF_X28_Y22_N11
\kb_knight_rider_leds|update_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[16]~55_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(16));

-- Location: LCCOMB_X28_Y22_N30
\kb_knight_rider_leds|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|LessThan1~4_combout\ = ((!\kb_knight_rider_leds|update_counter\(14) & (!\kb_knight_rider_leds|update_counter\(15) & !\kb_knight_rider_leds|update_counter\(13)))) # (!\kb_knight_rider_leds|update_counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(14),
	datab => \kb_knight_rider_leds|update_counter\(15),
	datac => \kb_knight_rider_leds|update_counter\(13),
	datad => \kb_knight_rider_leds|update_counter\(16),
	combout => \kb_knight_rider_leds|LessThan1~4_combout\);

-- Location: LCCOMB_X29_Y22_N20
\kb_knight_rider_leds|LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|LessThan1~6_combout\ = ((\kb_knight_rider_leds|LessThan1~0_combout\) # ((\kb_knight_rider_leds|LessThan1~4_combout\) # (!\kb_knight_rider_leds|update_counter\(22)))) # (!\kb_knight_rider_leds|update_counter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(21),
	datab => \kb_knight_rider_leds|LessThan1~0_combout\,
	datac => \kb_knight_rider_leds|update_counter\(22),
	datad => \kb_knight_rider_leds|LessThan1~4_combout\,
	combout => \kb_knight_rider_leds|LessThan1~6_combout\);

-- Location: LCCOMB_X28_Y23_N0
\kb_knight_rider_leds|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|LessThan1~7_combout\ = (!\kb_knight_rider_leds|LessThan1~5_combout\ & (!\kb_knight_rider_leds|LessThan1~6_combout\ & ((\kb_knight_rider_leds|update_counter\(11)) # (!\kb_knight_rider_leds|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|LessThan1~1_combout\,
	datab => \kb_knight_rider_leds|update_counter\(11),
	datac => \kb_knight_rider_leds|LessThan1~5_combout\,
	datad => \kb_knight_rider_leds|LessThan1~6_combout\,
	combout => \kb_knight_rider_leds|LessThan1~7_combout\);

-- Location: FF_X28_Y23_N15
\kb_knight_rider_leds|update_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[2]~27_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(2));

-- Location: LCCOMB_X28_Y23_N16
\kb_knight_rider_leds|update_counter[3]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[3]~29_combout\ = (\kb_knight_rider_leds|update_counter\(3) & (!\kb_knight_rider_leds|update_counter[2]~28\)) # (!\kb_knight_rider_leds|update_counter\(3) & ((\kb_knight_rider_leds|update_counter[2]~28\) # (GND)))
-- \kb_knight_rider_leds|update_counter[3]~30\ = CARRY((!\kb_knight_rider_leds|update_counter[2]~28\) # (!\kb_knight_rider_leds|update_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(3),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[2]~28\,
	combout => \kb_knight_rider_leds|update_counter[3]~29_combout\,
	cout => \kb_knight_rider_leds|update_counter[3]~30\);

-- Location: FF_X28_Y23_N17
\kb_knight_rider_leds|update_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[3]~29_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(3));

-- Location: LCCOMB_X28_Y23_N18
\kb_knight_rider_leds|update_counter[4]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[4]~31_combout\ = (\kb_knight_rider_leds|update_counter\(4) & (\kb_knight_rider_leds|update_counter[3]~30\ $ (GND))) # (!\kb_knight_rider_leds|update_counter\(4) & (!\kb_knight_rider_leds|update_counter[3]~30\ & VCC))
-- \kb_knight_rider_leds|update_counter[4]~32\ = CARRY((\kb_knight_rider_leds|update_counter\(4) & !\kb_knight_rider_leds|update_counter[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(4),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[3]~30\,
	combout => \kb_knight_rider_leds|update_counter[4]~31_combout\,
	cout => \kb_knight_rider_leds|update_counter[4]~32\);

-- Location: FF_X28_Y23_N19
\kb_knight_rider_leds|update_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[4]~31_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(4));

-- Location: LCCOMB_X28_Y23_N24
\kb_knight_rider_leds|update_counter[7]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[7]~37_combout\ = (\kb_knight_rider_leds|update_counter\(7) & (!\kb_knight_rider_leds|update_counter[6]~36\)) # (!\kb_knight_rider_leds|update_counter\(7) & ((\kb_knight_rider_leds|update_counter[6]~36\) # (GND)))
-- \kb_knight_rider_leds|update_counter[7]~38\ = CARRY((!\kb_knight_rider_leds|update_counter[6]~36\) # (!\kb_knight_rider_leds|update_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(7),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[6]~36\,
	combout => \kb_knight_rider_leds|update_counter[7]~37_combout\,
	cout => \kb_knight_rider_leds|update_counter[7]~38\);

-- Location: FF_X28_Y23_N25
\kb_knight_rider_leds|update_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[7]~37_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(7));

-- Location: LCCOMB_X28_Y23_N28
\kb_knight_rider_leds|update_counter[9]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[9]~41_combout\ = (\kb_knight_rider_leds|update_counter\(9) & (!\kb_knight_rider_leds|update_counter[8]~40\)) # (!\kb_knight_rider_leds|update_counter\(9) & ((\kb_knight_rider_leds|update_counter[8]~40\) # (GND)))
-- \kb_knight_rider_leds|update_counter[9]~42\ = CARRY((!\kb_knight_rider_leds|update_counter[8]~40\) # (!\kb_knight_rider_leds|update_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(9),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[8]~40\,
	combout => \kb_knight_rider_leds|update_counter[9]~41_combout\,
	cout => \kb_knight_rider_leds|update_counter[9]~42\);

-- Location: FF_X28_Y23_N29
\kb_knight_rider_leds|update_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[9]~41_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(9));

-- Location: LCCOMB_X28_Y22_N0
\kb_knight_rider_leds|update_counter[11]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[11]~45_combout\ = (\kb_knight_rider_leds|update_counter\(11) & (!\kb_knight_rider_leds|update_counter[10]~44\)) # (!\kb_knight_rider_leds|update_counter\(11) & ((\kb_knight_rider_leds|update_counter[10]~44\) # (GND)))
-- \kb_knight_rider_leds|update_counter[11]~46\ = CARRY((!\kb_knight_rider_leds|update_counter[10]~44\) # (!\kb_knight_rider_leds|update_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(11),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[10]~44\,
	combout => \kb_knight_rider_leds|update_counter[11]~45_combout\,
	cout => \kb_knight_rider_leds|update_counter[11]~46\);

-- Location: FF_X28_Y22_N1
\kb_knight_rider_leds|update_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[11]~45_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(11));

-- Location: LCCOMB_X28_Y22_N2
\kb_knight_rider_leds|update_counter[12]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[12]~47_combout\ = (\kb_knight_rider_leds|update_counter\(12) & (\kb_knight_rider_leds|update_counter[11]~46\ $ (GND))) # (!\kb_knight_rider_leds|update_counter\(12) & (!\kb_knight_rider_leds|update_counter[11]~46\ & 
-- VCC))
-- \kb_knight_rider_leds|update_counter[12]~48\ = CARRY((\kb_knight_rider_leds|update_counter\(12) & !\kb_knight_rider_leds|update_counter[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(12),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[11]~46\,
	combout => \kb_knight_rider_leds|update_counter[12]~47_combout\,
	cout => \kb_knight_rider_leds|update_counter[12]~48\);

-- Location: FF_X28_Y22_N3
\kb_knight_rider_leds|update_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[12]~47_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(12));

-- Location: LCCOMB_X28_Y22_N4
\kb_knight_rider_leds|update_counter[13]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[13]~49_combout\ = (\kb_knight_rider_leds|update_counter\(13) & (!\kb_knight_rider_leds|update_counter[12]~48\)) # (!\kb_knight_rider_leds|update_counter\(13) & ((\kb_knight_rider_leds|update_counter[12]~48\) # (GND)))
-- \kb_knight_rider_leds|update_counter[13]~50\ = CARRY((!\kb_knight_rider_leds|update_counter[12]~48\) # (!\kb_knight_rider_leds|update_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(13),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[12]~48\,
	combout => \kb_knight_rider_leds|update_counter[13]~49_combout\,
	cout => \kb_knight_rider_leds|update_counter[13]~50\);

-- Location: FF_X28_Y22_N5
\kb_knight_rider_leds|update_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[13]~49_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(13));

-- Location: LCCOMB_X28_Y22_N8
\kb_knight_rider_leds|update_counter[15]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[15]~53_combout\ = (\kb_knight_rider_leds|update_counter\(15) & (!\kb_knight_rider_leds|update_counter[14]~52\)) # (!\kb_knight_rider_leds|update_counter\(15) & ((\kb_knight_rider_leds|update_counter[14]~52\) # (GND)))
-- \kb_knight_rider_leds|update_counter[15]~54\ = CARRY((!\kb_knight_rider_leds|update_counter[14]~52\) # (!\kb_knight_rider_leds|update_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(15),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[14]~52\,
	combout => \kb_knight_rider_leds|update_counter[15]~53_combout\,
	cout => \kb_knight_rider_leds|update_counter[15]~54\);

-- Location: FF_X28_Y22_N9
\kb_knight_rider_leds|update_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[15]~53_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(15));

-- Location: LCCOMB_X28_Y22_N14
\kb_knight_rider_leds|update_counter[18]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[18]~59_combout\ = (\kb_knight_rider_leds|update_counter\(18) & (\kb_knight_rider_leds|update_counter[17]~58\ $ (GND))) # (!\kb_knight_rider_leds|update_counter\(18) & (!\kb_knight_rider_leds|update_counter[17]~58\ & 
-- VCC))
-- \kb_knight_rider_leds|update_counter[18]~60\ = CARRY((\kb_knight_rider_leds|update_counter\(18) & !\kb_knight_rider_leds|update_counter[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(18),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[17]~58\,
	combout => \kb_knight_rider_leds|update_counter[18]~59_combout\,
	cout => \kb_knight_rider_leds|update_counter[18]~60\);

-- Location: FF_X28_Y22_N15
\kb_knight_rider_leds|update_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[18]~59_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(18));

-- Location: LCCOMB_X28_Y22_N16
\kb_knight_rider_leds|update_counter[19]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[19]~61_combout\ = (\kb_knight_rider_leds|update_counter\(19) & (!\kb_knight_rider_leds|update_counter[18]~60\)) # (!\kb_knight_rider_leds|update_counter\(19) & ((\kb_knight_rider_leds|update_counter[18]~60\) # (GND)))
-- \kb_knight_rider_leds|update_counter[19]~62\ = CARRY((!\kb_knight_rider_leds|update_counter[18]~60\) # (!\kb_knight_rider_leds|update_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(19),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[18]~60\,
	combout => \kb_knight_rider_leds|update_counter[19]~61_combout\,
	cout => \kb_knight_rider_leds|update_counter[19]~62\);

-- Location: FF_X28_Y22_N17
\kb_knight_rider_leds|update_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[19]~61_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(19));

-- Location: LCCOMB_X28_Y22_N18
\kb_knight_rider_leds|update_counter[20]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|update_counter[20]~63_combout\ = (\kb_knight_rider_leds|update_counter\(20) & (\kb_knight_rider_leds|update_counter[19]~62\ $ (GND))) # (!\kb_knight_rider_leds|update_counter\(20) & (!\kb_knight_rider_leds|update_counter[19]~62\ & 
-- VCC))
-- \kb_knight_rider_leds|update_counter[20]~64\ = CARRY((\kb_knight_rider_leds|update_counter\(20) & !\kb_knight_rider_leds|update_counter[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|update_counter\(20),
	datad => VCC,
	cin => \kb_knight_rider_leds|update_counter[19]~62\,
	combout => \kb_knight_rider_leds|update_counter[20]~63_combout\,
	cout => \kb_knight_rider_leds|update_counter[20]~64\);

-- Location: FF_X28_Y22_N19
\kb_knight_rider_leds|update_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[20]~63_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(20));

-- Location: FF_X28_Y22_N21
\kb_knight_rider_leds|update_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|update_counter[21]~65_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|update_counter\(21));

-- Location: LCCOMB_X29_Y22_N24
\ps2_kb_led_controller_1|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_kb_led_controller_1|Selector1~2_combout\ = (!\ps2_kb_led_controller_1|state.IDLE_S~q\ & (\kb_knight_rider_leds|update_counter\(21) & (\kb_knight_rider_leds|update_counter\(22) & !\kb_knight_rider_leds|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_kb_led_controller_1|state.IDLE_S~q\,
	datab => \kb_knight_rider_leds|update_counter\(21),
	datac => \kb_knight_rider_leds|update_counter\(22),
	datad => \kb_knight_rider_leds|LessThan1~4_combout\,
	combout => \ps2_kb_led_controller_1|Selector1~2_combout\);

-- Location: LCCOMB_X28_Y23_N4
\ps2_kb_led_controller_1|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_kb_led_controller_1|Selector1~1_combout\ = (\kb_knight_rider_leds|update_counter\(6)) # (((!\kb_knight_rider_leds|LessThan1~1_combout\) # (!\kb_knight_rider_leds|LessThan1~2_combout\)) # (!\kb_knight_rider_leds|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|update_counter\(6),
	datab => \kb_knight_rider_leds|LessThan1~3_combout\,
	datac => \kb_knight_rider_leds|LessThan1~2_combout\,
	datad => \kb_knight_rider_leds|LessThan1~1_combout\,
	combout => \ps2_kb_led_controller_1|Selector1~1_combout\);

-- Location: LCCOMB_X29_Y22_N10
\ps2_kb_led_controller_1|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_kb_led_controller_1|Selector1~3_combout\ = (\ps2_kb_led_controller_1|Selector1~0_combout\ & (\ps2_kb_led_controller_1|Selector1~2_combout\ & (!\kb_knight_rider_leds|LessThan1~0_combout\ & \ps2_kb_led_controller_1|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_kb_led_controller_1|Selector1~0_combout\,
	datab => \ps2_kb_led_controller_1|Selector1~2_combout\,
	datac => \kb_knight_rider_leds|LessThan1~0_combout\,
	datad => \ps2_kb_led_controller_1|Selector1~1_combout\,
	combout => \ps2_kb_led_controller_1|Selector1~3_combout\);

-- Location: LCCOMB_X28_Y24_N20
\ps2_kb_led_controller_1|Selector1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_kb_led_controller_1|Selector1~5_combout\ = (\ps2_kb_led_controller_1|Selector1~4_combout\) # ((\kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\ & ((\ps2_kb_led_controller_1|Selector1~3_combout\) # (\ps2_kb_led_controller_1|state.BUSSY_WAIT_S~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_kb_led_controller_1|Selector1~4_combout\,
	datab => \ps2_kb_led_controller_1|Selector1~3_combout\,
	datac => \ps2_kb_led_controller_1|state.BUSSY_WAIT_S~q\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\,
	combout => \ps2_kb_led_controller_1|Selector1~5_combout\);

-- Location: FF_X28_Y24_N21
\ps2_kb_led_controller_1|state.BUSSY_WAIT_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_kb_led_controller_1|Selector1~5_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_kb_led_controller_1|state.BUSSY_WAIT_S~q\);

-- Location: LCCOMB_X28_Y24_N0
\ps2_kb_led_controller_1|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_kb_led_controller_1|Selector2~0_combout\ = (!\kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\ & ((\ps2_kb_led_controller_1|Selector1~3_combout\) # (\ps2_kb_led_controller_1|state.BUSSY_WAIT_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\,
	datac => \ps2_kb_led_controller_1|Selector1~3_combout\,
	datad => \ps2_kb_led_controller_1|state.BUSSY_WAIT_S~q\,
	combout => \ps2_kb_led_controller_1|Selector2~0_combout\);

-- Location: FF_X28_Y24_N1
\ps2_kb_led_controller_1|state.WRITE_CMD_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_kb_led_controller_1|Selector2~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\);

-- Location: LCCOMB_X28_Y24_N22
\kb_ps2_contr|ps2_controller_fsm_1|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|Selector2~0_combout\ = (!\ps2_kb_led_controller_1|state.WRITE_S~q\ & (!\kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\ & !\ps2_kb_led_controller_1|state.WRITE_CMD_S~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_kb_led_controller_1|state.WRITE_S~q\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\,
	datad => \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|Selector2~0_combout\);

-- Location: IOIBUF_X41_Y11_N1
\PS2_KBCLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_KBCLK,
	o => \PS2_KBCLK~input_o\);

-- Location: FF_X41_Y11_N3
\kb_ps2_contr|ps2_clk_filter|l_sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PS2_KBCLK~input_o\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_clk_filter|l_sreg\(0));

-- Location: LCCOMB_X29_Y23_N10
\kb_ps2_contr|ps2_clk_filter|l_sreg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_clk_filter|l_sreg[1]~feeder_combout\ = \kb_ps2_contr|ps2_clk_filter|l_sreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kb_ps2_contr|ps2_clk_filter|l_sreg\(0),
	combout => \kb_ps2_contr|ps2_clk_filter|l_sreg[1]~feeder_combout\);

-- Location: FF_X29_Y23_N11
\kb_ps2_contr|ps2_clk_filter|l_sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_clk_filter|l_sreg[1]~feeder_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_clk_filter|l_sreg\(1));

-- Location: LCCOMB_X29_Y23_N28
\kb_ps2_contr|ps2_clk_filter|l_sreg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_clk_filter|l_sreg[2]~feeder_combout\ = \kb_ps2_contr|ps2_clk_filter|l_sreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kb_ps2_contr|ps2_clk_filter|l_sreg\(1),
	combout => \kb_ps2_contr|ps2_clk_filter|l_sreg[2]~feeder_combout\);

-- Location: FF_X29_Y23_N29
\kb_ps2_contr|ps2_clk_filter|l_sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_clk_filter|l_sreg[2]~feeder_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_clk_filter|l_sreg\(2));

-- Location: LCCOMB_X29_Y23_N0
\kb_ps2_contr|ps2_clk_filter|l_fsig_reg_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_clk_filter|l_fsig_reg_next~0_combout\ = (\kb_ps2_contr|ps2_clk_filter|l_sreg\(1) & ((\kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\) # ((\kb_ps2_contr|ps2_clk_filter|l_sreg\(2) & \kb_ps2_contr|ps2_clk_filter|l_sreg\(0))))) # 
-- (!\kb_ps2_contr|ps2_clk_filter|l_sreg\(1) & (\kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\ & ((\kb_ps2_contr|ps2_clk_filter|l_sreg\(2)) # (\kb_ps2_contr|ps2_clk_filter|l_sreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_clk_filter|l_sreg\(1),
	datab => \kb_ps2_contr|ps2_clk_filter|l_sreg\(2),
	datac => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\,
	datad => \kb_ps2_contr|ps2_clk_filter|l_sreg\(0),
	combout => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg_next~0_combout\);

-- Location: FF_X29_Y23_N1
\kb_ps2_contr|ps2_clk_filter|l_fsig_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg_next~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\);

-- Location: LCCOMB_X27_Y23_N24
\kb_ps2_contr|ps2_controller_fsm_1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|Selector0~0_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|state.TX_ACK_S~q\ & \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_ACK_S~q\,
	datac => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|Selector0~0_combout\);

-- Location: FF_X27_Y23_N25
\kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\);

-- Location: IOIBUF_X41_Y12_N22
\PS2_KBDAT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_KBDAT,
	o => \PS2_KBDAT~input_o\);

-- Location: FF_X41_Y12_N24
\kb_ps2_contr|ps2_data_filter|l_sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PS2_KBDAT~input_o\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_data_filter|l_sreg\(0));

-- Location: LCCOMB_X32_Y23_N2
\kb_ps2_contr|ps2_data_filter|l_sreg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_data_filter|l_sreg[1]~feeder_combout\ = \kb_ps2_contr|ps2_data_filter|l_sreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kb_ps2_contr|ps2_data_filter|l_sreg\(0),
	combout => \kb_ps2_contr|ps2_data_filter|l_sreg[1]~feeder_combout\);

-- Location: FF_X32_Y23_N3
\kb_ps2_contr|ps2_data_filter|l_sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_data_filter|l_sreg[1]~feeder_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_data_filter|l_sreg\(1));

-- Location: LCCOMB_X32_Y23_N12
\kb_ps2_contr|ps2_data_filter|l_sreg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_data_filter|l_sreg[2]~feeder_combout\ = \kb_ps2_contr|ps2_data_filter|l_sreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kb_ps2_contr|ps2_data_filter|l_sreg\(1),
	combout => \kb_ps2_contr|ps2_data_filter|l_sreg[2]~feeder_combout\);

-- Location: FF_X32_Y23_N13
\kb_ps2_contr|ps2_data_filter|l_sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_data_filter|l_sreg[2]~feeder_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_data_filter|l_sreg\(2));

-- Location: LCCOMB_X32_Y23_N24
\kb_ps2_contr|ps2_data_filter|l_fsig_reg_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_data_filter|l_fsig_reg_next~0_combout\ = (\kb_ps2_contr|ps2_data_filter|l_sreg\(0) & ((\kb_ps2_contr|ps2_data_filter|l_fsig_reg~q\) # ((\kb_ps2_contr|ps2_data_filter|l_sreg\(1) & \kb_ps2_contr|ps2_data_filter|l_sreg\(2))))) # 
-- (!\kb_ps2_contr|ps2_data_filter|l_sreg\(0) & (\kb_ps2_contr|ps2_data_filter|l_fsig_reg~q\ & ((\kb_ps2_contr|ps2_data_filter|l_sreg\(1)) # (\kb_ps2_contr|ps2_data_filter|l_sreg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_data_filter|l_sreg\(0),
	datab => \kb_ps2_contr|ps2_data_filter|l_sreg\(1),
	datac => \kb_ps2_contr|ps2_data_filter|l_fsig_reg~q\,
	datad => \kb_ps2_contr|ps2_data_filter|l_sreg\(2),
	combout => \kb_ps2_contr|ps2_data_filter|l_fsig_reg_next~0_combout\);

-- Location: FF_X32_Y23_N25
\kb_ps2_contr|ps2_data_filter|l_fsig_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_data_filter|l_fsig_reg_next~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_data_filter|l_fsig_reg~q\);

-- Location: LCCOMB_X27_Y23_N20
\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~0_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\ & (!\kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\ & !\kb_ps2_contr|ps2_data_filter|l_fsig_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\,
	datac => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\,
	datad => \kb_ps2_contr|ps2_data_filter|l_fsig_reg~q\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~0_combout\);

-- Location: LCCOMB_X27_Y24_N30
\kb_ps2_contr|ps2_controller_fsm_1|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|Selector0~1_combout\ = (!\rx_data_reg[3]~0_combout\ & (!\kb_ps2_contr|ps2_controller_fsm_1|Selector0~0_combout\ & ((\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~0_combout\) # 
-- (!\kb_ps2_contr|ps2_controller_fsm_1|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data_reg[3]~0_combout\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|Selector2~0_combout\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|Selector0~0_combout\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~0_combout\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|Selector0~1_combout\);

-- Location: FF_X27_Y24_N31
\kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_controller_fsm_1|Selector0~1_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\);

-- Location: LCCOMB_X28_Y24_N16
\kb_ps2_contr|ps2_controller_fsm_1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|Selector4~0_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\) # ((!\ps2_kb_led_controller_1|state.WRITE_S~q\ & !\ps2_kb_led_controller_1|state.WRITE_CMD_S~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_kb_led_controller_1|state.WRITE_S~q\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\,
	datad => \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|Selector4~0_combout\);

-- Location: LCCOMB_X27_Y24_N0
\kb_ps2_contr|com_timer|l_cnt[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|com_timer|l_cnt[0]~13_combout\ = \kb_ps2_contr|com_timer|l_cnt\(0) $ (VCC)
-- \kb_ps2_contr|com_timer|l_cnt[0]~14\ = CARRY(\kb_ps2_contr|com_timer|l_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|com_timer|l_cnt\(0),
	datad => VCC,
	combout => \kb_ps2_contr|com_timer|l_cnt[0]~13_combout\,
	cout => \kb_ps2_contr|com_timer|l_cnt[0]~14\);

-- Location: LCCOMB_X28_Y24_N8
\kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~_Duplicate_1feeder_combout\ = \kb_ps2_contr|ps2_controller_fsm_1|Selector4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kb_ps2_contr|ps2_controller_fsm_1|Selector4~1_combout\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~_Duplicate_1feeder_combout\);

-- Location: FF_X28_Y24_N9
\kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~_Duplicate_1feeder_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~_Duplicate_1_q\);

-- Location: FF_X27_Y24_N1
\kb_ps2_contr|com_timer|l_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|com_timer|l_cnt[0]~13_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|com_timer|l_cnt\(0));

-- Location: LCCOMB_X27_Y24_N2
\kb_ps2_contr|com_timer|l_cnt[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|com_timer|l_cnt[1]~15_combout\ = (\kb_ps2_contr|com_timer|l_cnt\(1) & (!\kb_ps2_contr|com_timer|l_cnt[0]~14\)) # (!\kb_ps2_contr|com_timer|l_cnt\(1) & ((\kb_ps2_contr|com_timer|l_cnt[0]~14\) # (GND)))
-- \kb_ps2_contr|com_timer|l_cnt[1]~16\ = CARRY((!\kb_ps2_contr|com_timer|l_cnt[0]~14\) # (!\kb_ps2_contr|com_timer|l_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|com_timer|l_cnt\(1),
	datad => VCC,
	cin => \kb_ps2_contr|com_timer|l_cnt[0]~14\,
	combout => \kb_ps2_contr|com_timer|l_cnt[1]~15_combout\,
	cout => \kb_ps2_contr|com_timer|l_cnt[1]~16\);

-- Location: FF_X27_Y24_N3
\kb_ps2_contr|com_timer|l_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|com_timer|l_cnt[1]~15_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|com_timer|l_cnt\(1));

-- Location: LCCOMB_X27_Y24_N4
\kb_ps2_contr|com_timer|l_cnt[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|com_timer|l_cnt[2]~17_combout\ = (\kb_ps2_contr|com_timer|l_cnt\(2) & (\kb_ps2_contr|com_timer|l_cnt[1]~16\ $ (GND))) # (!\kb_ps2_contr|com_timer|l_cnt\(2) & (!\kb_ps2_contr|com_timer|l_cnt[1]~16\ & VCC))
-- \kb_ps2_contr|com_timer|l_cnt[2]~18\ = CARRY((\kb_ps2_contr|com_timer|l_cnt\(2) & !\kb_ps2_contr|com_timer|l_cnt[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|com_timer|l_cnt\(2),
	datad => VCC,
	cin => \kb_ps2_contr|com_timer|l_cnt[1]~16\,
	combout => \kb_ps2_contr|com_timer|l_cnt[2]~17_combout\,
	cout => \kb_ps2_contr|com_timer|l_cnt[2]~18\);

-- Location: FF_X27_Y24_N5
\kb_ps2_contr|com_timer|l_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|com_timer|l_cnt[2]~17_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|com_timer|l_cnt\(2));

-- Location: LCCOMB_X27_Y24_N6
\kb_ps2_contr|com_timer|l_cnt[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|com_timer|l_cnt[3]~19_combout\ = (\kb_ps2_contr|com_timer|l_cnt\(3) & (!\kb_ps2_contr|com_timer|l_cnt[2]~18\)) # (!\kb_ps2_contr|com_timer|l_cnt\(3) & ((\kb_ps2_contr|com_timer|l_cnt[2]~18\) # (GND)))
-- \kb_ps2_contr|com_timer|l_cnt[3]~20\ = CARRY((!\kb_ps2_contr|com_timer|l_cnt[2]~18\) # (!\kb_ps2_contr|com_timer|l_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|com_timer|l_cnt\(3),
	datad => VCC,
	cin => \kb_ps2_contr|com_timer|l_cnt[2]~18\,
	combout => \kb_ps2_contr|com_timer|l_cnt[3]~19_combout\,
	cout => \kb_ps2_contr|com_timer|l_cnt[3]~20\);

-- Location: LCCOMB_X27_Y24_N8
\kb_ps2_contr|com_timer|l_cnt[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|com_timer|l_cnt[4]~21_combout\ = (\kb_ps2_contr|com_timer|l_cnt\(4) & (\kb_ps2_contr|com_timer|l_cnt[3]~20\ $ (GND))) # (!\kb_ps2_contr|com_timer|l_cnt\(4) & (!\kb_ps2_contr|com_timer|l_cnt[3]~20\ & VCC))
-- \kb_ps2_contr|com_timer|l_cnt[4]~22\ = CARRY((\kb_ps2_contr|com_timer|l_cnt\(4) & !\kb_ps2_contr|com_timer|l_cnt[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|com_timer|l_cnt\(4),
	datad => VCC,
	cin => \kb_ps2_contr|com_timer|l_cnt[3]~20\,
	combout => \kb_ps2_contr|com_timer|l_cnt[4]~21_combout\,
	cout => \kb_ps2_contr|com_timer|l_cnt[4]~22\);

-- Location: FF_X27_Y24_N9
\kb_ps2_contr|com_timer|l_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|com_timer|l_cnt[4]~21_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|com_timer|l_cnt\(4));

-- Location: LCCOMB_X27_Y24_N10
\kb_ps2_contr|com_timer|l_cnt[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|com_timer|l_cnt[5]~23_combout\ = (\kb_ps2_contr|com_timer|l_cnt\(5) & (!\kb_ps2_contr|com_timer|l_cnt[4]~22\)) # (!\kb_ps2_contr|com_timer|l_cnt\(5) & ((\kb_ps2_contr|com_timer|l_cnt[4]~22\) # (GND)))
-- \kb_ps2_contr|com_timer|l_cnt[5]~24\ = CARRY((!\kb_ps2_contr|com_timer|l_cnt[4]~22\) # (!\kb_ps2_contr|com_timer|l_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|com_timer|l_cnt\(5),
	datad => VCC,
	cin => \kb_ps2_contr|com_timer|l_cnt[4]~22\,
	combout => \kb_ps2_contr|com_timer|l_cnt[5]~23_combout\,
	cout => \kb_ps2_contr|com_timer|l_cnt[5]~24\);

-- Location: LCCOMB_X27_Y24_N14
\kb_ps2_contr|com_timer|l_cnt[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|com_timer|l_cnt[7]~27_combout\ = (\kb_ps2_contr|com_timer|l_cnt\(7) & (!\kb_ps2_contr|com_timer|l_cnt[6]~26\)) # (!\kb_ps2_contr|com_timer|l_cnt\(7) & ((\kb_ps2_contr|com_timer|l_cnt[6]~26\) # (GND)))
-- \kb_ps2_contr|com_timer|l_cnt[7]~28\ = CARRY((!\kb_ps2_contr|com_timer|l_cnt[6]~26\) # (!\kb_ps2_contr|com_timer|l_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|com_timer|l_cnt\(7),
	datad => VCC,
	cin => \kb_ps2_contr|com_timer|l_cnt[6]~26\,
	combout => \kb_ps2_contr|com_timer|l_cnt[7]~27_combout\,
	cout => \kb_ps2_contr|com_timer|l_cnt[7]~28\);

-- Location: FF_X27_Y24_N15
\kb_ps2_contr|com_timer|l_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|com_timer|l_cnt[7]~27_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|com_timer|l_cnt\(7));

-- Location: LCCOMB_X27_Y24_N16
\kb_ps2_contr|com_timer|l_cnt[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|com_timer|l_cnt[8]~29_combout\ = (\kb_ps2_contr|com_timer|l_cnt\(8) & (\kb_ps2_contr|com_timer|l_cnt[7]~28\ $ (GND))) # (!\kb_ps2_contr|com_timer|l_cnt\(8) & (!\kb_ps2_contr|com_timer|l_cnt[7]~28\ & VCC))
-- \kb_ps2_contr|com_timer|l_cnt[8]~30\ = CARRY((\kb_ps2_contr|com_timer|l_cnt\(8) & !\kb_ps2_contr|com_timer|l_cnt[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|com_timer|l_cnt\(8),
	datad => VCC,
	cin => \kb_ps2_contr|com_timer|l_cnt[7]~28\,
	combout => \kb_ps2_contr|com_timer|l_cnt[8]~29_combout\,
	cout => \kb_ps2_contr|com_timer|l_cnt[8]~30\);

-- Location: FF_X27_Y24_N17
\kb_ps2_contr|com_timer|l_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|com_timer|l_cnt[8]~29_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|com_timer|l_cnt\(8));

-- Location: LCCOMB_X27_Y24_N18
\kb_ps2_contr|com_timer|l_cnt[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|com_timer|l_cnt[9]~31_combout\ = (\kb_ps2_contr|com_timer|l_cnt\(9) & (!\kb_ps2_contr|com_timer|l_cnt[8]~30\)) # (!\kb_ps2_contr|com_timer|l_cnt\(9) & ((\kb_ps2_contr|com_timer|l_cnt[8]~30\) # (GND)))
-- \kb_ps2_contr|com_timer|l_cnt[9]~32\ = CARRY((!\kb_ps2_contr|com_timer|l_cnt[8]~30\) # (!\kb_ps2_contr|com_timer|l_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|com_timer|l_cnt\(9),
	datad => VCC,
	cin => \kb_ps2_contr|com_timer|l_cnt[8]~30\,
	combout => \kb_ps2_contr|com_timer|l_cnt[9]~31_combout\,
	cout => \kb_ps2_contr|com_timer|l_cnt[9]~32\);

-- Location: FF_X27_Y24_N19
\kb_ps2_contr|com_timer|l_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|com_timer|l_cnt[9]~31_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|com_timer|l_cnt\(9));

-- Location: LCCOMB_X27_Y24_N20
\kb_ps2_contr|com_timer|l_cnt[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|com_timer|l_cnt[10]~33_combout\ = (\kb_ps2_contr|com_timer|l_cnt\(10) & (\kb_ps2_contr|com_timer|l_cnt[9]~32\ $ (GND))) # (!\kb_ps2_contr|com_timer|l_cnt\(10) & (!\kb_ps2_contr|com_timer|l_cnt[9]~32\ & VCC))
-- \kb_ps2_contr|com_timer|l_cnt[10]~34\ = CARRY((\kb_ps2_contr|com_timer|l_cnt\(10) & !\kb_ps2_contr|com_timer|l_cnt[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|com_timer|l_cnt\(10),
	datad => VCC,
	cin => \kb_ps2_contr|com_timer|l_cnt[9]~32\,
	combout => \kb_ps2_contr|com_timer|l_cnt[10]~33_combout\,
	cout => \kb_ps2_contr|com_timer|l_cnt[10]~34\);

-- Location: FF_X27_Y24_N21
\kb_ps2_contr|com_timer|l_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|com_timer|l_cnt[10]~33_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|com_timer|l_cnt\(10));

-- Location: LCCOMB_X27_Y24_N24
\kb_ps2_contr|com_timer|l_cnt[12]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|com_timer|l_cnt[12]~37_combout\ = \kb_ps2_contr|com_timer|l_cnt[11]~36\ $ (!\kb_ps2_contr|com_timer|l_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \kb_ps2_contr|com_timer|l_cnt\(12),
	cin => \kb_ps2_contr|com_timer|l_cnt[11]~36\,
	combout => \kb_ps2_contr|com_timer|l_cnt[12]~37_combout\);

-- Location: FF_X27_Y24_N25
\kb_ps2_contr|com_timer|l_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|com_timer|l_cnt[12]~37_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|com_timer|l_cnt\(12));

-- Location: FF_X27_Y24_N11
\kb_ps2_contr|com_timer|l_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|com_timer|l_cnt[5]~23_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|com_timer|l_cnt\(5));

-- Location: FF_X27_Y24_N7
\kb_ps2_contr|com_timer|l_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|com_timer|l_cnt[3]~19_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_state.TX_INHIBIT_S~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|com_timer|l_cnt\(3));

-- Location: LCCOMB_X28_Y24_N24
\kb_ps2_contr|ps2_controller_fsm_1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~0_combout\ = (!\kb_ps2_contr|com_timer|l_cnt\(3) & (((!\kb_ps2_contr|com_timer|l_cnt\(1)) # (!\kb_ps2_contr|com_timer|l_cnt\(2))) # (!\kb_ps2_contr|com_timer|l_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|com_timer|l_cnt\(0),
	datab => \kb_ps2_contr|com_timer|l_cnt\(3),
	datac => \kb_ps2_contr|com_timer|l_cnt\(2),
	datad => \kb_ps2_contr|com_timer|l_cnt\(1),
	combout => \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y24_N18
\kb_ps2_contr|ps2_controller_fsm_1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~1_combout\ = (!\kb_ps2_contr|com_timer|l_cnt\(6) & (!\kb_ps2_contr|com_timer|l_cnt\(5) & (!\kb_ps2_contr|com_timer|l_cnt\(4) & \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|com_timer|l_cnt\(6),
	datab => \kb_ps2_contr|com_timer|l_cnt\(5),
	datac => \kb_ps2_contr|com_timer|l_cnt\(4),
	datad => \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~0_combout\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y24_N28
\kb_ps2_contr|ps2_controller_fsm_1|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~2_combout\ = (\kb_ps2_contr|com_timer|l_cnt\(7) & (\kb_ps2_contr|com_timer|l_cnt\(9) & (\kb_ps2_contr|com_timer|l_cnt\(8) & !\kb_ps2_contr|ps2_controller_fsm_1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|com_timer|l_cnt\(7),
	datab => \kb_ps2_contr|com_timer|l_cnt\(9),
	datac => \kb_ps2_contr|com_timer|l_cnt\(8),
	datad => \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~1_combout\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~2_combout\);

-- Location: LCCOMB_X28_Y24_N6
\kb_ps2_contr|ps2_controller_fsm_1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~3_combout\ = ((!\kb_ps2_contr|com_timer|l_cnt\(11) & (!\kb_ps2_contr|com_timer|l_cnt\(10) & !\kb_ps2_contr|ps2_controller_fsm_1|LessThan0~2_combout\))) # (!\kb_ps2_contr|com_timer|l_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|com_timer|l_cnt\(11),
	datab => \kb_ps2_contr|com_timer|l_cnt\(12),
	datac => \kb_ps2_contr|com_timer|l_cnt\(10),
	datad => \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~2_combout\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~3_combout\);

-- Location: LCCOMB_X28_Y24_N12
\kb_ps2_contr|ps2_controller_fsm_1|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|Selector4~1_combout\ = ((\kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~_Duplicate_1_q\ & \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~3_combout\)) # (!\kb_ps2_contr|ps2_controller_fsm_1|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~_Duplicate_1_q\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|Selector4~0_combout\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~3_combout\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|Selector4~1_combout\);

-- Location: DDIOOUTCELL_X41_Y11_N4
\kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_controller_fsm_1|ALT_INV_Selector4~1_combout\,
	asdata => VCC,
	aload => \reset_control_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~q\);

-- Location: LCCOMB_X27_Y23_N14
\kb_knight_rider_leds|shift_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|shift_counter~0_combout\ = !\kb_knight_rider_leds|shift_counter~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kb_knight_rider_leds|shift_counter~q\,
	combout => \kb_knight_rider_leds|shift_counter~0_combout\);

-- Location: FF_X27_Y23_N15
\kb_knight_rider_leds|shift_counter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|shift_counter~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|shift_counter~q\);

-- Location: LCCOMB_X27_Y23_N28
\kb_knight_rider_leds|s_right~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|s_right~0_combout\ = \kb_knight_rider_leds|s_right~q\ $ (((\kb_knight_rider_leds|LessThan1~7_combout\ & \kb_knight_rider_leds|shift_counter~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|LessThan1~7_combout\,
	datac => \kb_knight_rider_leds|s_right~q\,
	datad => \kb_knight_rider_leds|shift_counter~q\,
	combout => \kb_knight_rider_leds|s_right~0_combout\);

-- Location: FF_X27_Y23_N29
\kb_knight_rider_leds|s_right\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|s_right~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|s_right~q\);

-- Location: LCCOMB_X27_Y23_N2
\kb_knight_rider_leds|leds_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|leds_reg~2_combout\ = (\kb_knight_rider_leds|s_right~q\ & (!\kb_knight_rider_leds|leds_reg\(1))) # (!\kb_knight_rider_leds|s_right~q\ & ((!\kb_knight_rider_leds|leds_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_knight_rider_leds|leds_reg\(1),
	datab => \kb_knight_rider_leds|s_right~q\,
	datac => \kb_knight_rider_leds|leds_reg\(2),
	combout => \kb_knight_rider_leds|leds_reg~2_combout\);

-- Location: FF_X27_Y23_N3
\kb_knight_rider_leds|leds_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|leds_reg~2_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|leds_reg\(0));

-- Location: LCCOMB_X27_Y23_N0
\kb_knight_rider_leds|leds_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|leds_reg~1_combout\ = (\kb_knight_rider_leds|s_right~q\ & (\kb_knight_rider_leds|leds_reg\(2))) # (!\kb_knight_rider_leds|s_right~q\ & ((!\kb_knight_rider_leds|leds_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|s_right~q\,
	datac => \kb_knight_rider_leds|leds_reg\(2),
	datad => \kb_knight_rider_leds|leds_reg\(0),
	combout => \kb_knight_rider_leds|leds_reg~1_combout\);

-- Location: FF_X27_Y23_N1
\kb_knight_rider_leds|leds_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|leds_reg~1_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|leds_reg\(1));

-- Location: LCCOMB_X27_Y23_N22
\kb_knight_rider_leds|leds_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_knight_rider_leds|leds_reg~0_combout\ = (\kb_knight_rider_leds|s_right~q\ & ((!\kb_knight_rider_leds|leds_reg\(0)))) # (!\kb_knight_rider_leds|s_right~q\ & (\kb_knight_rider_leds|leds_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_knight_rider_leds|s_right~q\,
	datac => \kb_knight_rider_leds|leds_reg\(1),
	datad => \kb_knight_rider_leds|leds_reg\(0),
	combout => \kb_knight_rider_leds|leds_reg~0_combout\);

-- Location: FF_X27_Y23_N23
\kb_knight_rider_leds|leds_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_knight_rider_leds|leds_reg~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_knight_rider_leds|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_knight_rider_leds|leds_reg\(2));

-- Location: FF_X28_Y24_N13
\ps2_kb_led_controller_1|leds_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \kb_knight_rider_leds|leds_reg\(2),
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sload => VCC,
	ena => \ps2_kb_led_controller_1|Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_kb_led_controller_1|leds_reg\(0));

-- Location: LCCOMB_X28_Y24_N4
\ps2_kb_led_controller_1|leds_reg[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_kb_led_controller_1|leds_reg[1]~0_combout\ = !\kb_knight_rider_leds|leds_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kb_knight_rider_leds|leds_reg\(0),
	combout => \ps2_kb_led_controller_1|leds_reg[1]~0_combout\);

-- Location: FF_X28_Y24_N5
\ps2_kb_led_controller_1|leds_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_kb_led_controller_1|leds_reg[1]~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \ps2_kb_led_controller_1|Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_kb_led_controller_1|leds_reg\(1));

-- Location: LCCOMB_X28_Y24_N14
\kb_ps2_contr|buf_shift_reg|reg~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|buf_shift_reg|reg~13_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\) # ((\ps2_kb_led_controller_1|state.WRITE_CMD_S~q\ & ((\ps2_kb_led_controller_1|leds_reg\(1)))) # (!\ps2_kb_led_controller_1|state.WRITE_CMD_S~q\ & 
-- (!\ps2_kb_led_controller_1|state.WRITE_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_kb_led_controller_1|state.WRITE_S~q\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\,
	datac => \ps2_kb_led_controller_1|leds_reg\(1),
	datad => \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\,
	combout => \kb_ps2_contr|buf_shift_reg|reg~13_combout\);

-- Location: LCCOMB_X28_Y24_N2
\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ = (!\kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\ & ((\ps2_kb_led_controller_1|state.WRITE_S~q\) # ((\ps2_kb_led_controller_1|state.WRITE_CMD_S~q\) # 
-- (\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_kb_led_controller_1|state.WRITE_S~q\,
	datab => \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~0_combout\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\);

-- Location: LCCOMB_X26_Y25_N28
\kb_ps2_contr|buf_shift_reg|reg~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|buf_shift_reg|reg~16_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (((\ps2_kb_led_controller_1|state.WRITE_CMD_S~q\ & !\kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\)))) # 
-- (!\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (!\kb_ps2_contr|buf_shift_reg|reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|buf_shift_reg|reg\(8),
	datab => \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\,
	combout => \kb_ps2_contr|buf_shift_reg|reg~16_combout\);

-- Location: LCCOMB_X27_Y23_N6
\kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\ = (!\kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\ & \kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\);

-- Location: LCCOMB_X28_Y24_N10
\kb_ps2_contr|ps2_controller_fsm_1|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|Selector5~0_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|LessThan0~3_combout\ & (((\kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\ & !\kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\)))) # 
-- (!\kb_ps2_contr|ps2_controller_fsm_1|LessThan0~3_combout\ & ((\kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~_Duplicate_1_q\) # ((\kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\ & 
-- !\kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|LessThan0~3_combout\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_INHIBIT_S~_Duplicate_1_q\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|Selector5~0_combout\);

-- Location: FF_X28_Y24_N11
\kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_controller_fsm_1|Selector5~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\);

-- Location: LCCOMB_X26_Y24_N16
\kb_ps2_contr|ps2_controller_fsm_1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|Selector6~0_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\ & (\kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\ & !\kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\,
	datad => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|Selector6~0_combout\);

-- Location: LCCOMB_X26_Y24_N6
\kb_ps2_contr|bits_counter|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|bits_counter|Mux3~0_combout\ = (!\kb_ps2_contr|bits_counter|l_cnt\(0) & (((\kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\) # (!\kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\)) # (!\kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\,
	datac => \kb_ps2_contr|bits_counter|l_cnt\(0),
	datad => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\,
	combout => \kb_ps2_contr|bits_counter|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y24_N20
\kb_ps2_contr|bits_counter|l_cnt[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|bits_counter|l_cnt[2]~1_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\ & (!\kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\ & ((\kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\) # 
-- (\kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\,
	datad => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\,
	combout => \kb_ps2_contr|bits_counter|l_cnt[2]~1_combout\);

-- Location: FF_X26_Y24_N7
\kb_ps2_contr|bits_counter|l_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|bits_counter|Mux3~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_ps2_contr|bits_counter|l_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|bits_counter|l_cnt\(0));

-- Location: LCCOMB_X26_Y24_N2
\kb_ps2_contr|bits_counter|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|bits_counter|Mux1~0_combout\ = (!\kb_ps2_contr|ps2_controller_fsm_1|Selector6~0_combout\ & (\kb_ps2_contr|bits_counter|l_cnt\(2) $ (((\kb_ps2_contr|bits_counter|l_cnt\(1) & \kb_ps2_contr|bits_counter|l_cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|bits_counter|l_cnt\(1),
	datab => \kb_ps2_contr|ps2_controller_fsm_1|Selector6~0_combout\,
	datac => \kb_ps2_contr|bits_counter|l_cnt\(2),
	datad => \kb_ps2_contr|bits_counter|l_cnt\(0),
	combout => \kb_ps2_contr|bits_counter|Mux1~0_combout\);

-- Location: FF_X26_Y24_N3
\kb_ps2_contr|bits_counter|l_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|bits_counter|Mux1~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_ps2_contr|bits_counter|l_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|bits_counter|l_cnt\(2));

-- Location: LCCOMB_X26_Y24_N22
\kb_ps2_contr|bits_counter|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|bits_counter|Add0~0_combout\ = \kb_ps2_contr|bits_counter|l_cnt\(3) $ (((\kb_ps2_contr|bits_counter|l_cnt\(1) & (\kb_ps2_contr|bits_counter|l_cnt\(2) & \kb_ps2_contr|bits_counter|l_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|bits_counter|l_cnt\(1),
	datab => \kb_ps2_contr|bits_counter|l_cnt\(3),
	datac => \kb_ps2_contr|bits_counter|l_cnt\(2),
	datad => \kb_ps2_contr|bits_counter|l_cnt\(0),
	combout => \kb_ps2_contr|bits_counter|Add0~0_combout\);

-- Location: LCCOMB_X26_Y24_N24
\kb_ps2_contr|bits_counter|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|bits_counter|Mux0~2_combout\ = (\kb_ps2_contr|bits_counter|Add0~0_combout\ & (((\kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\) # (!\kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\)) # (!\kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\,
	datac => \kb_ps2_contr|bits_counter|Add0~0_combout\,
	datad => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\,
	combout => \kb_ps2_contr|bits_counter|Mux0~2_combout\);

-- Location: FF_X26_Y24_N25
\kb_ps2_contr|bits_counter|l_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|bits_counter|Mux0~2_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_ps2_contr|bits_counter|l_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|bits_counter|l_cnt\(3));

-- Location: LCCOMB_X26_Y24_N26
\kb_ps2_contr|ps2_controller_fsm_1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|LessThan1~0_combout\ = ((!\kb_ps2_contr|bits_counter|l_cnt\(1) & (!\kb_ps2_contr|bits_counter|l_cnt\(2) & !\kb_ps2_contr|bits_counter|l_cnt\(0)))) # (!\kb_ps2_contr|bits_counter|l_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|bits_counter|l_cnt\(1),
	datab => \kb_ps2_contr|bits_counter|l_cnt\(3),
	datac => \kb_ps2_contr|bits_counter|l_cnt\(2),
	datad => \kb_ps2_contr|bits_counter|l_cnt\(0),
	combout => \kb_ps2_contr|ps2_controller_fsm_1|LessThan1~0_combout\);

-- Location: LCCOMB_X26_Y24_N30
\kb_ps2_contr|ps2_controller_fsm_1|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|Selector6~1_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|Selector6~0_combout\) # ((\kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\ & \kb_ps2_contr|ps2_controller_fsm_1|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|ps2_controller_fsm_1|Selector6~0_combout\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|LessThan1~0_combout\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|Selector6~1_combout\);

-- Location: FF_X26_Y24_N31
\kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_controller_fsm_1|Selector6~1_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\);

-- Location: LCCOMB_X26_Y24_N0
\kb_ps2_contr|buf_shift_reg|reg~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|buf_shift_reg|reg~10_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\) # ((\kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\ & ((\kb_ps2_contr|ps2_controller_fsm_1|state.RX_DATA_S~q\) # 
-- (\kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.RX_DATA_S~q\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\,
	combout => \kb_ps2_contr|buf_shift_reg|reg~10_combout\);

-- Location: FF_X26_Y25_N29
\kb_ps2_contr|buf_shift_reg|reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|buf_shift_reg|reg~16_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_ps2_contr|buf_shift_reg|reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|buf_shift_reg|reg\(7));

-- Location: LCCOMB_X26_Y25_N14
\kb_ps2_contr|buf_shift_reg|reg~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|buf_shift_reg|reg~17_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (!\kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\ & ((\ps2_kb_led_controller_1|state.WRITE_CMD_S~q\)))) # 
-- (!\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (((\kb_ps2_contr|buf_shift_reg|reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\,
	datab => \kb_ps2_contr|buf_shift_reg|reg\(7),
	datac => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\,
	datad => \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\,
	combout => \kb_ps2_contr|buf_shift_reg|reg~17_combout\);

-- Location: FF_X26_Y25_N15
\kb_ps2_contr|buf_shift_reg|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|buf_shift_reg|reg~17_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_ps2_contr|buf_shift_reg|reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|buf_shift_reg|reg\(6));

-- Location: LCCOMB_X26_Y25_N16
\kb_ps2_contr|buf_shift_reg|reg~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|buf_shift_reg|reg~18_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (!\kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\ & ((\ps2_kb_led_controller_1|state.WRITE_CMD_S~q\)))) # 
-- (!\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (((\kb_ps2_contr|buf_shift_reg|reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\,
	datab => \kb_ps2_contr|buf_shift_reg|reg\(6),
	datac => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\,
	datad => \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\,
	combout => \kb_ps2_contr|buf_shift_reg|reg~18_combout\);

-- Location: FF_X26_Y25_N17
\kb_ps2_contr|buf_shift_reg|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|buf_shift_reg|reg~18_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_ps2_contr|buf_shift_reg|reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|buf_shift_reg|reg\(5));

-- Location: LCCOMB_X26_Y25_N2
\kb_ps2_contr|buf_shift_reg|reg~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|buf_shift_reg|reg~11_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (!\kb_ps2_contr|ps2_controller_fsm_1|Selector4~0_combout\)) # (!\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & 
-- ((\kb_ps2_contr|buf_shift_reg|reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|ps2_controller_fsm_1|Selector4~0_combout\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\,
	datad => \kb_ps2_contr|buf_shift_reg|reg\(5),
	combout => \kb_ps2_contr|buf_shift_reg|reg~11_combout\);

-- Location: FF_X26_Y25_N3
\kb_ps2_contr|buf_shift_reg|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|buf_shift_reg|reg~11_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_ps2_contr|buf_shift_reg|reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|buf_shift_reg|reg\(4));

-- Location: LCCOMB_X26_Y25_N20
\kb_ps2_contr|buf_shift_reg|reg~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|buf_shift_reg|reg~19_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (!\kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\ & ((\ps2_kb_led_controller_1|state.WRITE_CMD_S~q\)))) # 
-- (!\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (((\kb_ps2_contr|buf_shift_reg|reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\,
	datab => \kb_ps2_contr|buf_shift_reg|reg\(4),
	datac => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\,
	datad => \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\,
	combout => \kb_ps2_contr|buf_shift_reg|reg~19_combout\);

-- Location: FF_X26_Y25_N21
\kb_ps2_contr|buf_shift_reg|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|buf_shift_reg|reg~19_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_ps2_contr|buf_shift_reg|reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|buf_shift_reg|reg\(3));

-- Location: LCCOMB_X28_Y24_N30
\kb_ps2_contr|buf_shift_reg|reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|buf_shift_reg|reg~8_combout\ = (!\kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\ & \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|ps2_controller_fsm_1|state.IDLE_S~q\,
	datad => \ps2_kb_led_controller_1|state.WRITE_CMD_S~q\,
	combout => \kb_ps2_contr|buf_shift_reg|reg~8_combout\);

-- Location: LCCOMB_X26_Y23_N24
\kb_ps2_contr|buf_shift_reg|reg~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|buf_shift_reg|reg~12_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (!\ps2_kb_led_controller_1|leds_reg\(2) & ((\kb_ps2_contr|buf_shift_reg|reg~8_combout\)))) # 
-- (!\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (((\kb_ps2_contr|buf_shift_reg|reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_kb_led_controller_1|leds_reg\(2),
	datab => \kb_ps2_contr|buf_shift_reg|reg\(3),
	datac => \kb_ps2_contr|buf_shift_reg|reg~8_combout\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\,
	combout => \kb_ps2_contr|buf_shift_reg|reg~12_combout\);

-- Location: FF_X26_Y23_N25
\kb_ps2_contr|buf_shift_reg|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|buf_shift_reg|reg~12_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_ps2_contr|buf_shift_reg|reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|buf_shift_reg|reg\(2));

-- Location: LCCOMB_X27_Y24_N28
\kb_ps2_contr|buf_shift_reg|reg~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|buf_shift_reg|reg~14_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (!\kb_ps2_contr|buf_shift_reg|reg~13_combout\)) # (!\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & 
-- ((\kb_ps2_contr|buf_shift_reg|reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\,
	datab => \kb_ps2_contr|buf_shift_reg|reg~13_combout\,
	datac => \kb_ps2_contr|buf_shift_reg|reg\(2),
	combout => \kb_ps2_contr|buf_shift_reg|reg~14_combout\);

-- Location: FF_X27_Y24_N29
\kb_ps2_contr|buf_shift_reg|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|buf_shift_reg|reg~14_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_ps2_contr|buf_shift_reg|reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|buf_shift_reg|reg\(1));

-- Location: LCCOMB_X27_Y24_N26
\kb_ps2_contr|buf_shift_reg|reg~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|buf_shift_reg|reg~9_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (\kb_ps2_contr|buf_shift_reg|reg~8_combout\ & (!\ps2_kb_led_controller_1|leds_reg\(0)))) # 
-- (!\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\ & (((\kb_ps2_contr|buf_shift_reg|reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|buf_shift_reg|reg~8_combout\,
	datab => \ps2_kb_led_controller_1|leds_reg\(0),
	datac => \kb_ps2_contr|buf_shift_reg|reg\(1),
	datad => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~1_combout\,
	combout => \kb_ps2_contr|buf_shift_reg|reg~9_combout\);

-- Location: FF_X27_Y24_N27
\kb_ps2_contr|buf_shift_reg|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|buf_shift_reg|reg~9_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \kb_ps2_contr|buf_shift_reg|reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|buf_shift_reg|reg\(0));

-- Location: LCCOMB_X26_Y24_N18
\kb_ps2_contr|ps2_controller_fsm_1|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|Selector10~0_combout\ = (!\kb_ps2_contr|buf_shift_reg|reg\(0) & \kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|buf_shift_reg|reg\(0),
	datac => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|Selector10~0_combout\);

-- Location: LCCOMB_X26_Y24_N4
\kb_ps2_contr|bits_counter|l_cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|bits_counter|l_cnt[2]~0_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\) # (\kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_DATA_S~q\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|state.TX_START_S~q\,
	combout => \kb_ps2_contr|bits_counter|l_cnt[2]~0_combout\);

-- Location: LCCOMB_X1_Y23_N10
\sys_knight_rider_leds|shift_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|shift_counter~0_combout\ = (!\sys_knight_rider_leds|shift_counter\(2) & (\sys_knight_rider_leds|shift_counter\(1) $ (\sys_knight_rider_leds|shift_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|shift_counter\(2),
	datac => \sys_knight_rider_leds|shift_counter\(1),
	datad => \sys_knight_rider_leds|shift_counter\(0),
	combout => \sys_knight_rider_leds|shift_counter~0_combout\);

-- Location: LCCOMB_X1_Y25_N14
\sys_knight_rider_leds|update_counter[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[2]~26_combout\ = (\sys_knight_rider_leds|update_counter\(2) & (\sys_knight_rider_leds|update_counter[1]~25\ $ (GND))) # (!\sys_knight_rider_leds|update_counter\(2) & (!\sys_knight_rider_leds|update_counter[1]~25\ & 
-- VCC))
-- \sys_knight_rider_leds|update_counter[2]~27\ = CARRY((\sys_knight_rider_leds|update_counter\(2) & !\sys_knight_rider_leds|update_counter[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|update_counter\(2),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[1]~25\,
	combout => \sys_knight_rider_leds|update_counter[2]~26_combout\,
	cout => \sys_knight_rider_leds|update_counter[2]~27\);

-- Location: FF_X1_Y25_N15
\sys_knight_rider_leds|update_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[2]~26_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(2));

-- Location: LCCOMB_X1_Y25_N16
\sys_knight_rider_leds|update_counter[3]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[3]~28_combout\ = (\sys_knight_rider_leds|update_counter\(3) & (!\sys_knight_rider_leds|update_counter[2]~27\)) # (!\sys_knight_rider_leds|update_counter\(3) & ((\sys_knight_rider_leds|update_counter[2]~27\) # (GND)))
-- \sys_knight_rider_leds|update_counter[3]~29\ = CARRY((!\sys_knight_rider_leds|update_counter[2]~27\) # (!\sys_knight_rider_leds|update_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|update_counter\(3),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[2]~27\,
	combout => \sys_knight_rider_leds|update_counter[3]~28_combout\,
	cout => \sys_knight_rider_leds|update_counter[3]~29\);

-- Location: FF_X1_Y25_N17
\sys_knight_rider_leds|update_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[3]~28_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(3));

-- Location: LCCOMB_X1_Y25_N18
\sys_knight_rider_leds|update_counter[4]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[4]~30_combout\ = (\sys_knight_rider_leds|update_counter\(4) & (\sys_knight_rider_leds|update_counter[3]~29\ $ (GND))) # (!\sys_knight_rider_leds|update_counter\(4) & (!\sys_knight_rider_leds|update_counter[3]~29\ & 
-- VCC))
-- \sys_knight_rider_leds|update_counter[4]~31\ = CARRY((\sys_knight_rider_leds|update_counter\(4) & !\sys_knight_rider_leds|update_counter[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|update_counter\(4),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[3]~29\,
	combout => \sys_knight_rider_leds|update_counter[4]~30_combout\,
	cout => \sys_knight_rider_leds|update_counter[4]~31\);

-- Location: FF_X1_Y25_N19
\sys_knight_rider_leds|update_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[4]~30_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(4));

-- Location: LCCOMB_X1_Y25_N20
\sys_knight_rider_leds|update_counter[5]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[5]~32_combout\ = (\sys_knight_rider_leds|update_counter\(5) & (!\sys_knight_rider_leds|update_counter[4]~31\)) # (!\sys_knight_rider_leds|update_counter\(5) & ((\sys_knight_rider_leds|update_counter[4]~31\) # (GND)))
-- \sys_knight_rider_leds|update_counter[5]~33\ = CARRY((!\sys_knight_rider_leds|update_counter[4]~31\) # (!\sys_knight_rider_leds|update_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|update_counter\(5),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[4]~31\,
	combout => \sys_knight_rider_leds|update_counter[5]~32_combout\,
	cout => \sys_knight_rider_leds|update_counter[5]~33\);

-- Location: FF_X1_Y25_N21
\sys_knight_rider_leds|update_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[5]~32_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(5));

-- Location: LCCOMB_X1_Y25_N22
\sys_knight_rider_leds|update_counter[6]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[6]~34_combout\ = (\sys_knight_rider_leds|update_counter\(6) & (\sys_knight_rider_leds|update_counter[5]~33\ $ (GND))) # (!\sys_knight_rider_leds|update_counter\(6) & (!\sys_knight_rider_leds|update_counter[5]~33\ & 
-- VCC))
-- \sys_knight_rider_leds|update_counter[6]~35\ = CARRY((\sys_knight_rider_leds|update_counter\(6) & !\sys_knight_rider_leds|update_counter[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(6),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[5]~33\,
	combout => \sys_knight_rider_leds|update_counter[6]~34_combout\,
	cout => \sys_knight_rider_leds|update_counter[6]~35\);

-- Location: LCCOMB_X1_Y25_N24
\sys_knight_rider_leds|update_counter[7]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[7]~36_combout\ = (\sys_knight_rider_leds|update_counter\(7) & (!\sys_knight_rider_leds|update_counter[6]~35\)) # (!\sys_knight_rider_leds|update_counter\(7) & ((\sys_knight_rider_leds|update_counter[6]~35\) # (GND)))
-- \sys_knight_rider_leds|update_counter[7]~37\ = CARRY((!\sys_knight_rider_leds|update_counter[6]~35\) # (!\sys_knight_rider_leds|update_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|update_counter\(7),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[6]~35\,
	combout => \sys_knight_rider_leds|update_counter[7]~36_combout\,
	cout => \sys_knight_rider_leds|update_counter[7]~37\);

-- Location: FF_X1_Y25_N25
\sys_knight_rider_leds|update_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[7]~36_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(7));

-- Location: LCCOMB_X1_Y25_N28
\sys_knight_rider_leds|update_counter[9]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[9]~40_combout\ = (\sys_knight_rider_leds|update_counter\(9) & (!\sys_knight_rider_leds|update_counter[8]~39\)) # (!\sys_knight_rider_leds|update_counter\(9) & ((\sys_knight_rider_leds|update_counter[8]~39\) # (GND)))
-- \sys_knight_rider_leds|update_counter[9]~41\ = CARRY((!\sys_knight_rider_leds|update_counter[8]~39\) # (!\sys_knight_rider_leds|update_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|update_counter\(9),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[8]~39\,
	combout => \sys_knight_rider_leds|update_counter[9]~40_combout\,
	cout => \sys_knight_rider_leds|update_counter[9]~41\);

-- Location: FF_X1_Y25_N29
\sys_knight_rider_leds|update_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[9]~40_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(9));

-- Location: LCCOMB_X1_Y25_N30
\sys_knight_rider_leds|update_counter[10]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[10]~42_combout\ = (\sys_knight_rider_leds|update_counter\(10) & (\sys_knight_rider_leds|update_counter[9]~41\ $ (GND))) # (!\sys_knight_rider_leds|update_counter\(10) & (!\sys_knight_rider_leds|update_counter[9]~41\ & 
-- VCC))
-- \sys_knight_rider_leds|update_counter[10]~43\ = CARRY((\sys_knight_rider_leds|update_counter\(10) & !\sys_knight_rider_leds|update_counter[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(10),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[9]~41\,
	combout => \sys_knight_rider_leds|update_counter[10]~42_combout\,
	cout => \sys_knight_rider_leds|update_counter[10]~43\);

-- Location: LCCOMB_X1_Y24_N0
\sys_knight_rider_leds|update_counter[11]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[11]~44_combout\ = (\sys_knight_rider_leds|update_counter\(11) & (!\sys_knight_rider_leds|update_counter[10]~43\)) # (!\sys_knight_rider_leds|update_counter\(11) & ((\sys_knight_rider_leds|update_counter[10]~43\) # 
-- (GND)))
-- \sys_knight_rider_leds|update_counter[11]~45\ = CARRY((!\sys_knight_rider_leds|update_counter[10]~43\) # (!\sys_knight_rider_leds|update_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|update_counter\(11),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[10]~43\,
	combout => \sys_knight_rider_leds|update_counter[11]~44_combout\,
	cout => \sys_knight_rider_leds|update_counter[11]~45\);

-- Location: FF_X1_Y24_N1
\sys_knight_rider_leds|update_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[11]~44_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(11));

-- Location: LCCOMB_X1_Y24_N2
\sys_knight_rider_leds|update_counter[12]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[12]~46_combout\ = (\sys_knight_rider_leds|update_counter\(12) & (\sys_knight_rider_leds|update_counter[11]~45\ $ (GND))) # (!\sys_knight_rider_leds|update_counter\(12) & (!\sys_knight_rider_leds|update_counter[11]~45\ 
-- & VCC))
-- \sys_knight_rider_leds|update_counter[12]~47\ = CARRY((\sys_knight_rider_leds|update_counter\(12) & !\sys_knight_rider_leds|update_counter[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(12),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[11]~45\,
	combout => \sys_knight_rider_leds|update_counter[12]~46_combout\,
	cout => \sys_knight_rider_leds|update_counter[12]~47\);

-- Location: LCCOMB_X1_Y24_N4
\sys_knight_rider_leds|update_counter[13]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[13]~48_combout\ = (\sys_knight_rider_leds|update_counter\(13) & (!\sys_knight_rider_leds|update_counter[12]~47\)) # (!\sys_knight_rider_leds|update_counter\(13) & ((\sys_knight_rider_leds|update_counter[12]~47\) # 
-- (GND)))
-- \sys_knight_rider_leds|update_counter[13]~49\ = CARRY((!\sys_knight_rider_leds|update_counter[12]~47\) # (!\sys_knight_rider_leds|update_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|update_counter\(13),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[12]~47\,
	combout => \sys_knight_rider_leds|update_counter[13]~48_combout\,
	cout => \sys_knight_rider_leds|update_counter[13]~49\);

-- Location: FF_X1_Y24_N5
\sys_knight_rider_leds|update_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[13]~48_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(13));

-- Location: FF_X1_Y25_N31
\sys_knight_rider_leds|update_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[10]~42_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(10));

-- Location: LCCOMB_X1_Y25_N8
\sys_knight_rider_leds|LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|LessThan1~6_combout\ = ((!\sys_knight_rider_leds|update_counter\(9) & ((!\sys_knight_rider_leds|update_counter\(7)) # (!\sys_knight_rider_leds|update_counter\(8))))) # (!\sys_knight_rider_leds|update_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(8),
	datab => \sys_knight_rider_leds|update_counter\(7),
	datac => \sys_knight_rider_leds|update_counter\(10),
	datad => \sys_knight_rider_leds|update_counter\(9),
	combout => \sys_knight_rider_leds|LessThan1~6_combout\);

-- Location: LCCOMB_X1_Y24_N28
\sys_knight_rider_leds|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|LessThan1~7_combout\ = ((!\sys_knight_rider_leds|update_counter\(12) & (!\sys_knight_rider_leds|update_counter\(11) & \sys_knight_rider_leds|LessThan1~6_combout\))) # (!\sys_knight_rider_leds|update_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(12),
	datab => \sys_knight_rider_leds|update_counter\(11),
	datac => \sys_knight_rider_leds|update_counter\(13),
	datad => \sys_knight_rider_leds|LessThan1~6_combout\,
	combout => \sys_knight_rider_leds|LessThan1~7_combout\);

-- Location: FF_X1_Y25_N23
\sys_knight_rider_leds|update_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[6]~34_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(6));

-- Location: FF_X1_Y24_N3
\sys_knight_rider_leds|update_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[12]~46_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(12));

-- Location: LCCOMB_X1_Y25_N4
\sys_knight_rider_leds|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|LessThan1~3_combout\ = (!\sys_knight_rider_leds|update_counter\(9) & (!\sys_knight_rider_leds|update_counter\(5) & (!\sys_knight_rider_leds|update_counter\(11) & !\sys_knight_rider_leds|update_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(9),
	datab => \sys_knight_rider_leds|update_counter\(5),
	datac => \sys_knight_rider_leds|update_counter\(11),
	datad => \sys_knight_rider_leds|update_counter\(12),
	combout => \sys_knight_rider_leds|LessThan1~3_combout\);

-- Location: LCCOMB_X1_Y24_N26
\sys_knight_rider_leds|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|LessThan1~5_combout\ = (!\sys_knight_rider_leds|update_counter\(6) & (\sys_knight_rider_leds|LessThan1~3_combout\ & ((\sys_knight_rider_leds|LessThan1~4_combout\) # (!\sys_knight_rider_leds|update_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|LessThan1~4_combout\,
	datab => \sys_knight_rider_leds|update_counter\(4),
	datac => \sys_knight_rider_leds|update_counter\(6),
	datad => \sys_knight_rider_leds|LessThan1~3_combout\,
	combout => \sys_knight_rider_leds|LessThan1~5_combout\);

-- Location: LCCOMB_X1_Y24_N6
\sys_knight_rider_leds|update_counter[14]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[14]~50_combout\ = (\sys_knight_rider_leds|update_counter\(14) & (\sys_knight_rider_leds|update_counter[13]~49\ $ (GND))) # (!\sys_knight_rider_leds|update_counter\(14) & (!\sys_knight_rider_leds|update_counter[13]~49\ 
-- & VCC))
-- \sys_knight_rider_leds|update_counter[14]~51\ = CARRY((\sys_knight_rider_leds|update_counter\(14) & !\sys_knight_rider_leds|update_counter[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|update_counter\(14),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[13]~49\,
	combout => \sys_knight_rider_leds|update_counter[14]~50_combout\,
	cout => \sys_knight_rider_leds|update_counter[14]~51\);

-- Location: FF_X1_Y24_N7
\sys_knight_rider_leds|update_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[14]~50_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(14));

-- Location: LCCOMB_X1_Y24_N8
\sys_knight_rider_leds|update_counter[15]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[15]~52_combout\ = (\sys_knight_rider_leds|update_counter\(15) & (!\sys_knight_rider_leds|update_counter[14]~51\)) # (!\sys_knight_rider_leds|update_counter\(15) & ((\sys_knight_rider_leds|update_counter[14]~51\) # 
-- (GND)))
-- \sys_knight_rider_leds|update_counter[15]~53\ = CARRY((!\sys_knight_rider_leds|update_counter[14]~51\) # (!\sys_knight_rider_leds|update_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|update_counter\(15),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[14]~51\,
	combout => \sys_knight_rider_leds|update_counter[15]~52_combout\,
	cout => \sys_knight_rider_leds|update_counter[15]~53\);

-- Location: FF_X1_Y24_N9
\sys_knight_rider_leds|update_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[15]~52_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(15));

-- Location: LCCOMB_X1_Y24_N14
\sys_knight_rider_leds|update_counter[18]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[18]~58_combout\ = (\sys_knight_rider_leds|update_counter\(18) & (\sys_knight_rider_leds|update_counter[17]~57\ $ (GND))) # (!\sys_knight_rider_leds|update_counter\(18) & (!\sys_knight_rider_leds|update_counter[17]~57\ 
-- & VCC))
-- \sys_knight_rider_leds|update_counter[18]~59\ = CARRY((\sys_knight_rider_leds|update_counter\(18) & !\sys_knight_rider_leds|update_counter[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|update_counter\(18),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[17]~57\,
	combout => \sys_knight_rider_leds|update_counter[18]~58_combout\,
	cout => \sys_knight_rider_leds|update_counter[18]~59\);

-- Location: FF_X1_Y24_N15
\sys_knight_rider_leds|update_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[18]~58_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(18));

-- Location: LCCOMB_X1_Y24_N16
\sys_knight_rider_leds|update_counter[19]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[19]~60_combout\ = (\sys_knight_rider_leds|update_counter\(19) & (!\sys_knight_rider_leds|update_counter[18]~59\)) # (!\sys_knight_rider_leds|update_counter\(19) & ((\sys_knight_rider_leds|update_counter[18]~59\) # 
-- (GND)))
-- \sys_knight_rider_leds|update_counter[19]~61\ = CARRY((!\sys_knight_rider_leds|update_counter[18]~59\) # (!\sys_knight_rider_leds|update_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|update_counter\(19),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[18]~59\,
	combout => \sys_knight_rider_leds|update_counter[19]~60_combout\,
	cout => \sys_knight_rider_leds|update_counter[19]~61\);

-- Location: FF_X1_Y24_N17
\sys_knight_rider_leds|update_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[19]~60_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(19));

-- Location: LCCOMB_X1_Y24_N18
\sys_knight_rider_leds|update_counter[20]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[20]~62_combout\ = (\sys_knight_rider_leds|update_counter\(20) & (\sys_knight_rider_leds|update_counter[19]~61\ $ (GND))) # (!\sys_knight_rider_leds|update_counter\(20) & (!\sys_knight_rider_leds|update_counter[19]~61\ 
-- & VCC))
-- \sys_knight_rider_leds|update_counter[20]~63\ = CARRY((\sys_knight_rider_leds|update_counter\(20) & !\sys_knight_rider_leds|update_counter[19]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(20),
	datad => VCC,
	cin => \sys_knight_rider_leds|update_counter[19]~61\,
	combout => \sys_knight_rider_leds|update_counter[20]~62_combout\,
	cout => \sys_knight_rider_leds|update_counter[20]~63\);

-- Location: LCCOMB_X1_Y24_N20
\sys_knight_rider_leds|update_counter[21]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|update_counter[21]~64_combout\ = \sys_knight_rider_leds|update_counter[20]~63\ $ (\sys_knight_rider_leds|update_counter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sys_knight_rider_leds|update_counter\(21),
	cin => \sys_knight_rider_leds|update_counter[20]~63\,
	combout => \sys_knight_rider_leds|update_counter[21]~64_combout\);

-- Location: FF_X1_Y24_N21
\sys_knight_rider_leds|update_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[21]~64_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(21));

-- Location: FF_X1_Y24_N19
\sys_knight_rider_leds|update_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|update_counter[20]~62_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sclr => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|update_counter\(20));

-- Location: LCCOMB_X1_Y24_N22
\sys_knight_rider_leds|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|LessThan1~0_combout\ = (!\sys_knight_rider_leds|update_counter\(20) & !\sys_knight_rider_leds|update_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sys_knight_rider_leds|update_counter\(20),
	datad => \sys_knight_rider_leds|update_counter\(19),
	combout => \sys_knight_rider_leds|LessThan1~0_combout\);

-- Location: LCCOMB_X2_Y24_N0
\sys_knight_rider_leds|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|LessThan1~1_combout\ = ((\sys_knight_rider_leds|LessThan1~0_combout\ & ((!\sys_knight_rider_leds|update_counter\(18)) # (!\sys_knight_rider_leds|update_counter\(17))))) # (!\sys_knight_rider_leds|update_counter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|update_counter\(17),
	datab => \sys_knight_rider_leds|update_counter\(21),
	datac => \sys_knight_rider_leds|update_counter\(18),
	datad => \sys_knight_rider_leds|LessThan1~0_combout\,
	combout => \sys_knight_rider_leds|LessThan1~1_combout\);

-- Location: LCCOMB_X1_Y24_N30
\sys_knight_rider_leds|LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|LessThan1~8_combout\ = (!\sys_knight_rider_leds|LessThan1~1_combout\ & (((!\sys_knight_rider_leds|LessThan1~7_combout\ & !\sys_knight_rider_leds|LessThan1~5_combout\)) # (!\sys_knight_rider_leds|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|LessThan1~2_combout\,
	datab => \sys_knight_rider_leds|LessThan1~7_combout\,
	datac => \sys_knight_rider_leds|LessThan1~5_combout\,
	datad => \sys_knight_rider_leds|LessThan1~1_combout\,
	combout => \sys_knight_rider_leds|LessThan1~8_combout\);

-- Location: FF_X1_Y23_N11
\sys_knight_rider_leds|shift_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|shift_counter~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|shift_counter\(1));

-- Location: LCCOMB_X1_Y23_N12
\sys_knight_rider_leds|shift_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|shift_counter~1_combout\ = (!\sys_knight_rider_leds|shift_counter\(0) & ((!\sys_knight_rider_leds|shift_counter\(1)) # (!\sys_knight_rider_leds|shift_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|shift_counter\(2),
	datac => \sys_knight_rider_leds|shift_counter\(0),
	datad => \sys_knight_rider_leds|shift_counter\(1),
	combout => \sys_knight_rider_leds|shift_counter~1_combout\);

-- Location: FF_X1_Y23_N13
\sys_knight_rider_leds|shift_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|shift_counter~1_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|shift_counter\(0));

-- Location: LCCOMB_X1_Y23_N14
\sys_knight_rider_leds|shift_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|shift_counter~2_combout\ = (\sys_knight_rider_leds|shift_counter\(1) & (!\sys_knight_rider_leds|shift_counter\(2) & \sys_knight_rider_leds|shift_counter\(0))) # (!\sys_knight_rider_leds|shift_counter\(1) & 
-- (\sys_knight_rider_leds|shift_counter\(2) & !\sys_knight_rider_leds|shift_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|shift_counter\(1),
	datac => \sys_knight_rider_leds|shift_counter\(2),
	datad => \sys_knight_rider_leds|shift_counter\(0),
	combout => \sys_knight_rider_leds|shift_counter~2_combout\);

-- Location: FF_X1_Y23_N15
\sys_knight_rider_leds|shift_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|shift_counter~2_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|shift_counter\(2));

-- Location: LCCOMB_X1_Y23_N16
\sys_knight_rider_leds|s_right~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|s_right~0_combout\ = ((!\sys_knight_rider_leds|shift_counter\(1) & !\sys_knight_rider_leds|shift_counter\(0))) # (!\sys_knight_rider_leds|shift_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|shift_counter\(1),
	datac => \sys_knight_rider_leds|shift_counter\(2),
	datad => \sys_knight_rider_leds|shift_counter\(0),
	combout => \sys_knight_rider_leds|s_right~0_combout\);

-- Location: LCCOMB_X1_Y23_N8
\sys_knight_rider_leds|s_right~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|s_right~1_combout\ = \sys_knight_rider_leds|s_right~q\ $ (((\sys_knight_rider_leds|LessThan1~8_combout\ & !\sys_knight_rider_leds|s_right~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|LessThan1~8_combout\,
	datac => \sys_knight_rider_leds|s_right~q\,
	datad => \sys_knight_rider_leds|s_right~0_combout\,
	combout => \sys_knight_rider_leds|s_right~1_combout\);

-- Location: FF_X1_Y23_N9
\sys_knight_rider_leds|s_right\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|s_right~1_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|s_right~q\);

-- Location: FF_X1_Y25_N1
\sys_knight_rider_leds|leds_reg[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|leds_reg~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y25_N2
\sys_knight_rider_leds|leds_reg~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|leds_reg~9_combout\ = (\sys_knight_rider_leds|s_right~q\ & ((!\sys_knight_rider_leds|leds_reg[0]~_Duplicate_1_q\))) # (!\sys_knight_rider_leds|s_right~q\ & (\sys_knight_rider_leds|leds_reg[8]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|leds_reg[8]~_Duplicate_1_q\,
	datac => \sys_knight_rider_leds|s_right~q\,
	datad => \sys_knight_rider_leds|leds_reg[0]~_Duplicate_1_q\,
	combout => \sys_knight_rider_leds|leds_reg~9_combout\);

-- Location: FF_X1_Y25_N3
\sys_knight_rider_leds|leds_reg[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|leds_reg~9_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y23_N30
\sys_knight_rider_leds|leds_reg~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|leds_reg~3_combout\ = (\sys_knight_rider_leds|s_right~q\ & (!\sys_knight_rider_leds|leds_reg[4]~_Duplicate_1_q\)) # (!\sys_knight_rider_leds|s_right~q\ & ((\sys_knight_rider_leds|leds_reg[2]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|leds_reg[4]~_Duplicate_1_q\,
	datab => \sys_knight_rider_leds|s_right~q\,
	datad => \sys_knight_rider_leds|leds_reg[2]~_Duplicate_1_q\,
	combout => \sys_knight_rider_leds|leds_reg~3_combout\);

-- Location: FF_X1_Y23_N29
\sys_knight_rider_leds|leds_reg[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \sys_knight_rider_leds|leds_reg~3_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sload => VCC,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y23_N24
\sys_knight_rider_leds|leds_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|leds_reg~2_combout\ = (\sys_knight_rider_leds|s_right~q\ & (\sys_knight_rider_leds|leds_reg[3]~_Duplicate_1_q\)) # (!\sys_knight_rider_leds|s_right~q\ & ((\sys_knight_rider_leds|leds_reg[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|leds_reg[3]~_Duplicate_1_q\,
	datac => \sys_knight_rider_leds|leds_reg[1]~_Duplicate_1_q\,
	datad => \sys_knight_rider_leds|s_right~q\,
	combout => \sys_knight_rider_leds|leds_reg~2_combout\);

-- Location: FF_X1_Y23_N27
\sys_knight_rider_leds|leds_reg[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \sys_knight_rider_leds|leds_reg~2_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sload => VCC,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y23_N26
\sys_knight_rider_leds|leds_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|leds_reg~1_combout\ = (\sys_knight_rider_leds|s_right~q\ & (\sys_knight_rider_leds|leds_reg[2]~_Duplicate_1_q\)) # (!\sys_knight_rider_leds|s_right~q\ & ((\sys_knight_rider_leds|leds_reg[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|s_right~q\,
	datac => \sys_knight_rider_leds|leds_reg[2]~_Duplicate_1_q\,
	datad => \sys_knight_rider_leds|leds_reg[0]~_Duplicate_1_q\,
	combout => \sys_knight_rider_leds|leds_reg~1_combout\);

-- Location: FF_X1_Y23_N25
\sys_knight_rider_leds|leds_reg[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \sys_knight_rider_leds|leds_reg~1_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sload => VCC,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y25_N0
\sys_knight_rider_leds|leds_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|leds_reg~0_combout\ = (\sys_knight_rider_leds|s_right~q\ & ((\sys_knight_rider_leds|leds_reg[1]~_Duplicate_1_q\))) # (!\sys_knight_rider_leds|s_right~q\ & (!\sys_knight_rider_leds|leds_reg[9]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|leds_reg[9]~_Duplicate_1_q\,
	datac => \sys_knight_rider_leds|s_right~q\,
	datad => \sys_knight_rider_leds|leds_reg[1]~_Duplicate_1_q\,
	combout => \sys_knight_rider_leds|leds_reg~0_combout\);

-- Location: DDIOOUTCELL_X0_Y20_N11
\sys_knight_rider_leds|leds_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|ALT_INV_leds_reg~0_combout\,
	asdata => VCC,
	aload => \reset_control_1|LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg\(0));

-- Location: DDIOOUTCELL_X0_Y20_N4
\sys_knight_rider_leds|leds_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|ALT_INV_leds_reg~1_combout\,
	asdata => VCC,
	aload => \reset_control_1|LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg\(1));

-- Location: DDIOOUTCELL_X0_Y21_N25
\sys_knight_rider_leds|leds_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|ALT_INV_leds_reg~2_combout\,
	asdata => VCC,
	aload => \reset_control_1|LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg\(2));

-- Location: DDIOOUTCELL_X0_Y21_N18
\sys_knight_rider_leds|leds_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|ALT_INV_leds_reg~3_combout\,
	asdata => VCC,
	aload => \reset_control_1|LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg\(3));

-- Location: LCCOMB_X1_Y23_N28
\sys_knight_rider_leds|leds_reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|leds_reg~8_combout\ = (\sys_knight_rider_leds|s_right~q\ & ((\sys_knight_rider_leds|leds_reg[9]~_Duplicate_1_q\))) # (!\sys_knight_rider_leds|s_right~q\ & (\sys_knight_rider_leds|leds_reg[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|s_right~q\,
	datab => \sys_knight_rider_leds|leds_reg[7]~_Duplicate_1_q\,
	datad => \sys_knight_rider_leds|leds_reg[9]~_Duplicate_1_q\,
	combout => \sys_knight_rider_leds|leds_reg~8_combout\);

-- Location: FF_X1_Y23_N31
\sys_knight_rider_leds|leds_reg[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \sys_knight_rider_leds|leds_reg~8_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	sload => VCC,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg[8]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y23_N20
\sys_knight_rider_leds|leds_reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|leds_reg~7_combout\ = (\sys_knight_rider_leds|s_right~q\ & ((\sys_knight_rider_leds|leds_reg[8]~_Duplicate_1_q\))) # (!\sys_knight_rider_leds|s_right~q\ & (\sys_knight_rider_leds|leds_reg[6]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|leds_reg[6]~_Duplicate_1_q\,
	datac => \sys_knight_rider_leds|s_right~q\,
	datad => \sys_knight_rider_leds|leds_reg[8]~_Duplicate_1_q\,
	combout => \sys_knight_rider_leds|leds_reg~7_combout\);

-- Location: FF_X1_Y23_N21
\sys_knight_rider_leds|leds_reg[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|leds_reg~7_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y23_N2
\sys_knight_rider_leds|leds_reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|leds_reg~6_combout\ = (\sys_knight_rider_leds|s_right~q\ & (\sys_knight_rider_leds|leds_reg[7]~_Duplicate_1_q\)) # (!\sys_knight_rider_leds|s_right~q\ & ((\sys_knight_rider_leds|leds_reg[5]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|leds_reg[7]~_Duplicate_1_q\,
	datac => \sys_knight_rider_leds|s_right~q\,
	datad => \sys_knight_rider_leds|leds_reg[5]~_Duplicate_1_q\,
	combout => \sys_knight_rider_leds|leds_reg~6_combout\);

-- Location: FF_X1_Y23_N3
\sys_knight_rider_leds|leds_reg[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|leds_reg~6_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y23_N0
\sys_knight_rider_leds|leds_reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|leds_reg~5_combout\ = (\sys_knight_rider_leds|s_right~q\ & ((\sys_knight_rider_leds|leds_reg[6]~_Duplicate_1_q\))) # (!\sys_knight_rider_leds|s_right~q\ & (\sys_knight_rider_leds|leds_reg[4]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_knight_rider_leds|leds_reg[4]~_Duplicate_1_q\,
	datab => \sys_knight_rider_leds|leds_reg[6]~_Duplicate_1_q\,
	datad => \sys_knight_rider_leds|s_right~q\,
	combout => \sys_knight_rider_leds|leds_reg~5_combout\);

-- Location: FF_X1_Y23_N1
\sys_knight_rider_leds|leds_reg[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|leds_reg~5_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y23_N6
\sys_knight_rider_leds|leds_reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_knight_rider_leds|leds_reg~4_combout\ = (\sys_knight_rider_leds|s_right~q\ & ((\sys_knight_rider_leds|leds_reg[5]~_Duplicate_1_q\))) # (!\sys_knight_rider_leds|s_right~q\ & (!\sys_knight_rider_leds|leds_reg[3]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_knight_rider_leds|leds_reg[3]~_Duplicate_1_q\,
	datac => \sys_knight_rider_leds|s_right~q\,
	datad => \sys_knight_rider_leds|leds_reg[5]~_Duplicate_1_q\,
	combout => \sys_knight_rider_leds|leds_reg~4_combout\);

-- Location: DDIOOUTCELL_X0_Y24_N25
\sys_knight_rider_leds|leds_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|leds_reg~4_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg\(4));

-- Location: DDIOOUTCELL_X0_Y24_N18
\sys_knight_rider_leds|leds_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|leds_reg~5_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg\(5));

-- Location: DDIOOUTCELL_X0_Y26_N25
\sys_knight_rider_leds|leds_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|leds_reg~6_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg\(6));

-- Location: DDIOOUTCELL_X0_Y26_N18
\sys_knight_rider_leds|leds_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|leds_reg~7_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg\(7));

-- Location: DDIOOUTCELL_X0_Y27_N11
\sys_knight_rider_leds|leds_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|leds_reg~8_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg\(8));

-- Location: DDIOOUTCELL_X0_Y27_N18
\sys_knight_rider_leds|leds_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sys_knight_rider_leds|leds_reg~9_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \sys_knight_rider_leds|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_knight_rider_leds|leds_reg\(9));

-- Location: LCCOMB_X27_Y25_N12
\rx_data_reg[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data_reg[2]~4_combout\ = !\kb_ps2_contr|buf_shift_reg|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kb_ps2_contr|buf_shift_reg|reg\(2),
	combout => \rx_data_reg[2]~4_combout\);

-- Location: LCCOMB_X27_Y25_N28
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\kb_ps2_contr|buf_shift_reg|reg\(3) & (\kb_ps2_contr|buf_shift_reg|reg\(0) & (\kb_ps2_contr|buf_shift_reg|reg\(2) & !\kb_ps2_contr|buf_shift_reg|reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|buf_shift_reg|reg\(3),
	datab => \kb_ps2_contr|buf_shift_reg|reg\(0),
	datac => \kb_ps2_contr|buf_shift_reg|reg\(2),
	datad => \kb_ps2_contr|buf_shift_reg|reg\(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X26_Y24_N14
\kb_ps2_contr|ps2_controller_fsm_1|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|Selector2~1_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|state.RX_DATA_S~q\ & (((\kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\) # (!\kb_ps2_contr|buf_shift_reg|reg\(0))) # 
-- (!\kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|ps2_controller_fsm_1|state.RX_DATA_S~q\,
	datab => \kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\,
	datac => \kb_ps2_contr|buf_shift_reg|reg\(0),
	datad => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|Selector2~1_combout\);

-- Location: LCCOMB_X26_Y24_N28
\kb_ps2_contr|ps2_controller_fsm_1|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|Selector2~2_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|Selector2~1_combout\) # ((\kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~0_combout\ & \kb_ps2_contr|ps2_controller_fsm_1|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|ps2_controller_fsm_1|Selector2~1_combout\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|buf_shift_nLoad_o~0_combout\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|Selector2~0_combout\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|Selector2~2_combout\);

-- Location: FF_X26_Y24_N29
\kb_ps2_contr|ps2_controller_fsm_1|state.RX_DATA_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_controller_fsm_1|Selector2~2_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_controller_fsm_1|state.RX_DATA_S~q\);

-- Location: LCCOMB_X26_Y24_N8
\kb_ps2_contr|ps2_controller_fsm_1|state.RX_STOP_S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \kb_ps2_contr|ps2_controller_fsm_1|state.RX_STOP_S~0_combout\ = (\kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\ & (\kb_ps2_contr|buf_shift_reg|reg\(0) & (\kb_ps2_contr|ps2_controller_fsm_1|state.RX_DATA_S~q\))) # 
-- (!\kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\ & (((\kb_ps2_contr|ps2_controller_fsm_1|state.RX_STOP_S~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_ps2_contr|buf_shift_reg|reg\(0),
	datab => \kb_ps2_contr|ps2_controller_fsm_1|state.RX_DATA_S~q\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|state.RX_STOP_S~q\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|tx_stop_ack_cond~0_combout\,
	combout => \kb_ps2_contr|ps2_controller_fsm_1|state.RX_STOP_S~0_combout\);

-- Location: FF_X26_Y24_N9
\kb_ps2_contr|ps2_controller_fsm_1|state.RX_STOP_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \kb_ps2_contr|ps2_controller_fsm_1|state.RX_STOP_S~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_ps2_contr|ps2_controller_fsm_1|state.RX_STOP_S~q\);

-- Location: LCCOMB_X26_Y24_N10
\rx_data_reg[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data_reg[3]~0_combout\ = (!\kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\ & (\kb_ps2_contr|ps2_controller_fsm_1|state.RX_STOP_S~q\ & \kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_ps2_contr|ps2_clk_filter|l_fsig_reg~q\,
	datac => \kb_ps2_contr|ps2_controller_fsm_1|state.RX_STOP_S~q\,
	datad => \kb_ps2_contr|ps2_controller_fsm_1|pre_ps2_clk~q\,
	combout => \rx_data_reg[3]~0_combout\);

-- Location: LCCOMB_X27_Y25_N6
\rx_data_reg[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data_reg[3]~1_combout\ = (\rx_data_reg[3]~0_combout\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datad => \rx_data_reg[3]~0_combout\,
	combout => \rx_data_reg[3]~1_combout\);

-- Location: FF_X27_Y25_N13
\rx_data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rx_data_reg[2]~4_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \rx_data_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_reg(2));

-- Location: LCCOMB_X27_Y25_N18
\rx_data_reg[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data_reg[1]~3_combout\ = !\kb_ps2_contr|buf_shift_reg|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kb_ps2_contr|buf_shift_reg|reg\(1),
	combout => \rx_data_reg[1]~3_combout\);

-- Location: FF_X27_Y25_N19
\rx_data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rx_data_reg[1]~3_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \rx_data_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_reg(1));

-- Location: LCCOMB_X27_Y25_N30
\rx_data_reg[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data_reg[3]~5_combout\ = !\kb_ps2_contr|buf_shift_reg|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kb_ps2_contr|buf_shift_reg|reg\(3),
	combout => \rx_data_reg[3]~5_combout\);

-- Location: FF_X27_Y25_N31
\rx_data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rx_data_reg[3]~5_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \rx_data_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_reg(3));

-- Location: LCCOMB_X27_Y25_N16
\rx_data_reg[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data_reg[0]~2_combout\ = !\kb_ps2_contr|buf_shift_reg|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kb_ps2_contr|buf_shift_reg|reg\(0),
	combout => \rx_data_reg[0]~2_combout\);

-- Location: FF_X27_Y25_N17
\rx_data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rx_data_reg[0]~2_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \rx_data_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_reg(0));

-- Location: LCCOMB_X27_Y25_N24
\seg7_decoder_1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_1|Mux6~0_combout\ = (rx_data_reg(2) & (!rx_data_reg(1) & (rx_data_reg(3) $ (!rx_data_reg(0))))) # (!rx_data_reg(2) & (rx_data_reg(0) & (rx_data_reg(1) $ (!rx_data_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(2),
	datab => rx_data_reg(1),
	datac => rx_data_reg(3),
	datad => rx_data_reg(0),
	combout => \seg7_decoder_1|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y25_N26
\seg7_decoder_1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_1|Mux5~0_combout\ = (rx_data_reg(1) & ((rx_data_reg(0) & ((rx_data_reg(3)))) # (!rx_data_reg(0) & (rx_data_reg(2))))) # (!rx_data_reg(1) & (rx_data_reg(2) & (rx_data_reg(3) $ (rx_data_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(2),
	datab => rx_data_reg(1),
	datac => rx_data_reg(3),
	datad => rx_data_reg(0),
	combout => \seg7_decoder_1|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y25_N4
\seg7_decoder_1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_1|Mux4~0_combout\ = (rx_data_reg(2) & (rx_data_reg(3) & ((rx_data_reg(1)) # (!rx_data_reg(0))))) # (!rx_data_reg(2) & (rx_data_reg(1) & (!rx_data_reg(3) & !rx_data_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(2),
	datab => rx_data_reg(1),
	datac => rx_data_reg(3),
	datad => rx_data_reg(0),
	combout => \seg7_decoder_1|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y25_N14
\seg7_decoder_1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_1|Mux3~0_combout\ = (rx_data_reg(1) & ((rx_data_reg(2) & ((rx_data_reg(0)))) # (!rx_data_reg(2) & (rx_data_reg(3) & !rx_data_reg(0))))) # (!rx_data_reg(1) & (!rx_data_reg(3) & (rx_data_reg(2) $ (rx_data_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(2),
	datab => rx_data_reg(1),
	datac => rx_data_reg(3),
	datad => rx_data_reg(0),
	combout => \seg7_decoder_1|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y25_N0
\seg7_decoder_1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_1|Mux2~0_combout\ = (rx_data_reg(1) & (((!rx_data_reg(3) & rx_data_reg(0))))) # (!rx_data_reg(1) & ((rx_data_reg(2) & (!rx_data_reg(3))) # (!rx_data_reg(2) & ((rx_data_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(2),
	datab => rx_data_reg(1),
	datac => rx_data_reg(3),
	datad => rx_data_reg(0),
	combout => \seg7_decoder_1|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y25_N2
\seg7_decoder_1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_1|Mux1~0_combout\ = (rx_data_reg(2) & (rx_data_reg(0) & (rx_data_reg(1) $ (rx_data_reg(3))))) # (!rx_data_reg(2) & (!rx_data_reg(3) & ((rx_data_reg(1)) # (rx_data_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(2),
	datab => rx_data_reg(1),
	datac => rx_data_reg(3),
	datad => rx_data_reg(0),
	combout => \seg7_decoder_1|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y25_N20
\seg7_decoder_1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_1|Mux0~0_combout\ = (rx_data_reg(0) & ((rx_data_reg(3)) # (rx_data_reg(2) $ (rx_data_reg(1))))) # (!rx_data_reg(0) & ((rx_data_reg(1)) # (rx_data_reg(2) $ (rx_data_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(2),
	datab => rx_data_reg(1),
	datac => rx_data_reg(3),
	datad => rx_data_reg(0),
	combout => \seg7_decoder_1|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y25_N4
\rx_data_reg[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data_reg[7]~9_combout\ = !\kb_ps2_contr|buf_shift_reg|reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kb_ps2_contr|buf_shift_reg|reg\(7),
	combout => \rx_data_reg[7]~9_combout\);

-- Location: FF_X26_Y25_N5
\rx_data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rx_data_reg[7]~9_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \rx_data_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_reg(7));

-- Location: LCCOMB_X26_Y25_N24
\rx_data_reg[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data_reg[5]~7_combout\ = !\kb_ps2_contr|buf_shift_reg|reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kb_ps2_contr|buf_shift_reg|reg\(5),
	combout => \rx_data_reg[5]~7_combout\);

-- Location: FF_X26_Y25_N25
\rx_data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rx_data_reg[5]~7_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \rx_data_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_reg(5));

-- Location: LCCOMB_X26_Y25_N26
\rx_data_reg[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data_reg[6]~8_combout\ = !\kb_ps2_contr|buf_shift_reg|reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kb_ps2_contr|buf_shift_reg|reg\(6),
	combout => \rx_data_reg[6]~8_combout\);

-- Location: FF_X26_Y25_N27
\rx_data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rx_data_reg[6]~8_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \rx_data_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_reg(6));

-- Location: LCCOMB_X27_Y25_N22
\rx_data_reg[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data_reg[4]~6_combout\ = !\kb_ps2_contr|buf_shift_reg|reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kb_ps2_contr|buf_shift_reg|reg\(4),
	combout => \rx_data_reg[4]~6_combout\);

-- Location: FF_X27_Y25_N23
\rx_data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rx_data_reg[4]~6_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	ena => \rx_data_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_reg(4));

-- Location: LCCOMB_X26_Y25_N22
\seg7_decoder_2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_2|Mux6~0_combout\ = (rx_data_reg(7) & (rx_data_reg(4) & (rx_data_reg(5) $ (rx_data_reg(6))))) # (!rx_data_reg(7) & (!rx_data_reg(5) & (rx_data_reg(6) $ (rx_data_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(7),
	datab => rx_data_reg(5),
	datac => rx_data_reg(6),
	datad => rx_data_reg(4),
	combout => \seg7_decoder_2|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y25_N0
\seg7_decoder_2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_2|Mux5~0_combout\ = (rx_data_reg(7) & ((rx_data_reg(4) & (rx_data_reg(5))) # (!rx_data_reg(4) & ((rx_data_reg(6)))))) # (!rx_data_reg(7) & (rx_data_reg(6) & (rx_data_reg(5) $ (rx_data_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(7),
	datab => rx_data_reg(5),
	datac => rx_data_reg(6),
	datad => rx_data_reg(4),
	combout => \seg7_decoder_2|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y25_N10
\seg7_decoder_2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_2|Mux4~0_combout\ = (rx_data_reg(7) & (rx_data_reg(6) & ((rx_data_reg(5)) # (!rx_data_reg(4))))) # (!rx_data_reg(7) & (rx_data_reg(5) & (!rx_data_reg(6) & !rx_data_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(7),
	datab => rx_data_reg(5),
	datac => rx_data_reg(6),
	datad => rx_data_reg(4),
	combout => \seg7_decoder_2|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y25_N12
\seg7_decoder_2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_2|Mux3~0_combout\ = (rx_data_reg(5) & ((rx_data_reg(6) & ((rx_data_reg(4)))) # (!rx_data_reg(6) & (rx_data_reg(7) & !rx_data_reg(4))))) # (!rx_data_reg(5) & (!rx_data_reg(7) & (rx_data_reg(6) $ (rx_data_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(7),
	datab => rx_data_reg(5),
	datac => rx_data_reg(6),
	datad => rx_data_reg(4),
	combout => \seg7_decoder_2|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y25_N6
\seg7_decoder_2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_2|Mux2~0_combout\ = (rx_data_reg(5) & (!rx_data_reg(7) & ((rx_data_reg(4))))) # (!rx_data_reg(5) & ((rx_data_reg(6) & (!rx_data_reg(7))) # (!rx_data_reg(6) & ((rx_data_reg(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(7),
	datab => rx_data_reg(5),
	datac => rx_data_reg(6),
	datad => rx_data_reg(4),
	combout => \seg7_decoder_2|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y25_N8
\seg7_decoder_2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_2|Mux1~0_combout\ = (rx_data_reg(5) & (!rx_data_reg(7) & ((rx_data_reg(4)) # (!rx_data_reg(6))))) # (!rx_data_reg(5) & (rx_data_reg(4) & (rx_data_reg(7) $ (!rx_data_reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(7),
	datab => rx_data_reg(5),
	datac => rx_data_reg(6),
	datad => rx_data_reg(4),
	combout => \seg7_decoder_2|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y25_N18
\seg7_decoder_2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7_decoder_2|Mux0~0_combout\ = (rx_data_reg(4) & ((rx_data_reg(7)) # (rx_data_reg(5) $ (rx_data_reg(6))))) # (!rx_data_reg(4) & ((rx_data_reg(5)) # (rx_data_reg(7) $ (rx_data_reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_data_reg(7),
	datab => rx_data_reg(5),
	datac => rx_data_reg(6),
	datad => rx_data_reg(4),
	combout => \seg7_decoder_2|Mux0~0_combout\);

-- Location: FF_X27_Y25_N9
\rx_ack_r_reg[3]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rx_ack_r_reg[3]~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_ack_r_reg[3]~_Duplicate_6_q\);

-- Location: LCCOMB_X27_Y25_N8
\rx_ack_r_reg[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_ack_r_reg[3]~0_combout\ = (\rx_ack_r_reg[3]~_Duplicate_6_q\) # ((\Equal0~0_combout\ & (\Equal0~1_combout\ & \rx_data_reg[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \rx_ack_r_reg[3]~_Duplicate_6_q\,
	datad => \rx_data_reg[3]~0_combout\,
	combout => \rx_ack_r_reg[3]~0_combout\);

-- Location: DDIOOUTCELL_X30_Y29_N4
\rx_ack_r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rx_ack_r_reg[3]~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_ack_r_reg(3));

-- Location: DDIOOUTCELL_X37_Y29_N4
\rx_ack_r_reg[3]~_Duplicate_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALT_INV_rx_ack_r_reg[3]~0_combout\,
	asdata => VCC,
	aload => \reset_control_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_ack_r_reg[3]~_Duplicate_5_q\);

-- Location: DDIOOUTCELL_X39_Y29_N18
\rx_ack_r_reg[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rx_ack_r_reg[3]~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_ack_r_reg[3]~_Duplicate_1_q\);

-- Location: DDIOOUTCELL_X32_Y29_N11
\rx_ack_r_reg[3]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rx_ack_r_reg[3]~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_ack_r_reg[3]~_Duplicate_2_q\);

-- Location: DDIOOUTCELL_X32_Y29_N4
\rx_ack_r_reg[3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rx_ack_r_reg[3]~0_combout\,
	clrn => \reset_control_1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_ack_r_reg[3]~_Duplicate_3_q\);

-- Location: DDIOOUTCELL_X39_Y29_N32
\rx_ack_r_reg[3]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALT_INV_rx_ack_r_reg[3]~0_combout\,
	asdata => VCC,
	aload => \reset_control_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_ack_r_reg[3]~_Duplicate_4_q\);

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

-- Location: IOIBUF_X41_Y8_N1
\UART_TXD~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_TXD,
	o => \UART_TXD~input_o\);

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


