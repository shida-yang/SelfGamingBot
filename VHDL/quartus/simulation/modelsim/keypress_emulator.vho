-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "09/27/2020 13:30:22"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Keyboard_Controller IS
    PORT (
	strobe : IN std_logic;
	pressing : IN std_logic;
	key_map_in : IN std_logic_vector(7 DOWNTO 0);
	from_usb : IN std_logic_vector(17 DOWNTO 0);
	to_usb : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Keyboard_Controller;

-- Design Ports Information
-- to_usb[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_usb[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_usb[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_usb[3]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_usb[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_usb[5]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_usb[6]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_usb[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[0]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[3]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[6]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[17]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[16]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[8]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[11]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[10]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[13]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[12]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[15]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_usb[14]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pressing	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_map_in[4]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_map_in[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_map_in[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_map_in[3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_map_in[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_map_in[7]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_map_in[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_map_in[6]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- strobe	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Keyboard_Controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_strobe : std_logic;
SIGNAL ww_pressing : std_logic;
SIGNAL ww_key_map_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_from_usb : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_to_usb : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \to_usb[0]~output_o\ : std_logic;
SIGNAL \to_usb[1]~output_o\ : std_logic;
SIGNAL \to_usb[2]~output_o\ : std_logic;
SIGNAL \to_usb[3]~output_o\ : std_logic;
SIGNAL \to_usb[4]~output_o\ : std_logic;
SIGNAL \to_usb[5]~output_o\ : std_logic;
SIGNAL \to_usb[6]~output_o\ : std_logic;
SIGNAL \to_usb[7]~output_o\ : std_logic;
SIGNAL \from_usb[15]~input_o\ : std_logic;
SIGNAL \strobe~input_o\ : std_logic;
SIGNAL \key_map_in[6]~input_o\ : std_logic;
SIGNAL \key_map_in[5]~input_o\ : std_logic;
SIGNAL \key_map_in[7]~input_o\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \pressing~input_o\ : std_logic;
SIGNAL \key_map_in[4]~input_o\ : std_logic;
SIGNAL \key_map_in[3]~input_o\ : std_logic;
SIGNAL \key_map_in[2]~input_o\ : std_logic;
SIGNAL \key_map_in[1]~input_o\ : std_logic;
SIGNAL \Decoder0~24_combout\ : std_logic;
SIGNAL \key_map_in[0]~input_o\ : std_logic;
SIGNAL \Decoder0~26_combout\ : std_logic;
SIGNAL \key_status[15][0]~17_combout\ : std_logic;
SIGNAL \key_status[15][0]~q\ : std_logic;
SIGNAL \from_usb[14]~input_o\ : std_logic;
SIGNAL \Decoder0~25_combout\ : std_logic;
SIGNAL \key_status[14][0]~16_combout\ : std_logic;
SIGNAL \key_status[14][0]~q\ : std_logic;
SIGNAL \to_usb_and_temp~9_combout\ : std_logic;
SIGNAL \Decoder0~21_combout\ : std_logic;
SIGNAL \Decoder0~22_combout\ : std_logic;
SIGNAL \key_status[12][0]~14_combout\ : std_logic;
SIGNAL \key_status[12][0]~q\ : std_logic;
SIGNAL \from_usb[13]~input_o\ : std_logic;
SIGNAL \Decoder0~23_combout\ : std_logic;
SIGNAL \key_status[13][0]~15_combout\ : std_logic;
SIGNAL \key_status[13][0]~q\ : std_logic;
SIGNAL \from_usb[12]~input_o\ : std_logic;
SIGNAL \to_usb_and_temp~8_combout\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \Decoder0~17_combout\ : std_logic;
SIGNAL \key_status[9][0]~11_combout\ : std_logic;
SIGNAL \key_status[9][0]~q\ : std_logic;
SIGNAL \from_usb[8]~input_o\ : std_logic;
SIGNAL \Decoder0~16_combout\ : std_logic;
SIGNAL \key_status[8][0]~10_combout\ : std_logic;
SIGNAL \key_status[8][0]~q\ : std_logic;
SIGNAL \from_usb[9]~input_o\ : std_logic;
SIGNAL \to_usb_and_temp~6_combout\ : std_logic;
SIGNAL \Decoder0~18_combout\ : std_logic;
SIGNAL \Decoder0~20_combout\ : std_logic;
SIGNAL \key_status[11][0]~13_combout\ : std_logic;
SIGNAL \key_status[11][0]~q\ : std_logic;
SIGNAL \from_usb[10]~input_o\ : std_logic;
SIGNAL \from_usb[11]~input_o\ : std_logic;
SIGNAL \Decoder0~19_combout\ : std_logic;
SIGNAL \key_status[10][0]~12_combout\ : std_logic;
SIGNAL \key_status[10][0]~q\ : std_logic;
SIGNAL \to_usb_and_temp~7_combout\ : std_logic;
SIGNAL \to_usb_and_temp~10_combout\ : std_logic;
SIGNAL \from_usb[16]~input_o\ : std_logic;
SIGNAL \from_usb[17]~input_o\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \key_status[17][0]~9_combout\ : std_logic;
SIGNAL \key_status[17][0]~q\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \key_status[16][0]~8_combout\ : std_logic;
SIGNAL \key_status[16][0]~q\ : std_logic;
SIGNAL \to_usb_and_temp~5_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \key_status[6][0]~6_combout\ : std_logic;
SIGNAL \key_status[6][0]~q\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \key_status[7][0]~7_combout\ : std_logic;
SIGNAL \key_status[7][0]~q\ : std_logic;
SIGNAL \from_usb[6]~input_o\ : std_logic;
SIGNAL \from_usb[7]~input_o\ : std_logic;
SIGNAL \to_usb_and_temp~3_combout\ : std_logic;
SIGNAL \from_usb[1]~input_o\ : std_logic;
SIGNAL \from_usb[0]~input_o\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \key_status[0][0]~0_combout\ : std_logic;
SIGNAL \key_status[0][0]~q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \key_status[1][0]~1_combout\ : std_logic;
SIGNAL \key_status[1][0]~q\ : std_logic;
SIGNAL \to_usb_and_temp~0_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \key_status[4][0]~4_combout\ : std_logic;
SIGNAL \key_status[4][0]~q\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \key_status[5][0]~5_combout\ : std_logic;
SIGNAL \key_status[5][0]~q\ : std_logic;
SIGNAL \from_usb[5]~input_o\ : std_logic;
SIGNAL \from_usb[4]~input_o\ : std_logic;
SIGNAL \to_usb_and_temp~2_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \key_status[2][0]~2_combout\ : std_logic;
SIGNAL \key_status[2][0]~q\ : std_logic;
SIGNAL \from_usb[3]~input_o\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \key_status[3][0]~3_combout\ : std_logic;
SIGNAL \key_status[3][0]~q\ : std_logic;
SIGNAL \from_usb[2]~input_o\ : std_logic;
SIGNAL \to_usb_and_temp~1_combout\ : std_logic;
SIGNAL \to_usb_and_temp~4_combout\ : std_logic;
SIGNAL \to_usb_and_temp~11_combout\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \key_status[9][1]~28_combout\ : std_logic;
SIGNAL \key_status[9][1]~q\ : std_logic;
SIGNAL \key_status[8][1]~29_combout\ : std_logic;
SIGNAL \key_status[8][1]~q\ : std_logic;
SIGNAL \to_usb_and_temp~18_combout\ : std_logic;
SIGNAL \key_status[12][1]~33_combout\ : std_logic;
SIGNAL \key_status[12][1]~q\ : std_logic;
SIGNAL \key_status[13][1]~32_combout\ : std_logic;
SIGNAL \key_status[13][1]~q\ : std_logic;
SIGNAL \to_usb_and_temp~20_combout\ : std_logic;
SIGNAL \key_status[11][1]~30_combout\ : std_logic;
SIGNAL \key_status[11][1]~q\ : std_logic;
SIGNAL \key_status[10][1]~31_combout\ : std_logic;
SIGNAL \key_status[10][1]~q\ : std_logic;
SIGNAL \to_usb_and_temp~19_combout\ : std_logic;
SIGNAL \key_status[15][1]~34_combout\ : std_logic;
SIGNAL \key_status[15][1]~q\ : std_logic;
SIGNAL \key_status[14][1]~35_combout\ : std_logic;
SIGNAL \key_status[14][1]~q\ : std_logic;
SIGNAL \to_usb_and_temp~21_combout\ : std_logic;
SIGNAL \to_usb_and_temp~22_combout\ : std_logic;
SIGNAL \key_status[16][1]~27_combout\ : std_logic;
SIGNAL \key_status[16][1]~q\ : std_logic;
SIGNAL \key_status[17][1]~26_combout\ : std_logic;
SIGNAL \key_status[17][1]~q\ : std_logic;
SIGNAL \to_usb_and_temp~17_combout\ : std_logic;
SIGNAL \key_status[1][1]~18_combout\ : std_logic;
SIGNAL \key_status[1][1]~q\ : std_logic;
SIGNAL \key_status[0][1]~19_combout\ : std_logic;
SIGNAL \key_status[0][1]~q\ : std_logic;
SIGNAL \to_usb_and_temp~12_combout\ : std_logic;
SIGNAL \key_status[6][1]~25_combout\ : std_logic;
SIGNAL \key_status[6][1]~q\ : std_logic;
SIGNAL \key_status[7][1]~24_combout\ : std_logic;
SIGNAL \key_status[7][1]~q\ : std_logic;
SIGNAL \to_usb_and_temp~15_combout\ : std_logic;
SIGNAL \key_status[4][1]~23_combout\ : std_logic;
SIGNAL \key_status[4][1]~q\ : std_logic;
SIGNAL \key_status[5][1]~22_combout\ : std_logic;
SIGNAL \key_status[5][1]~q\ : std_logic;
SIGNAL \to_usb_and_temp~14_combout\ : std_logic;
SIGNAL \key_status[3][1]~20_combout\ : std_logic;
SIGNAL \key_status[3][1]~q\ : std_logic;
SIGNAL \key_status[2][1]~21_combout\ : std_logic;
SIGNAL \key_status[2][1]~q\ : std_logic;
SIGNAL \to_usb_and_temp~13_combout\ : std_logic;
SIGNAL \to_usb_and_temp~16_combout\ : std_logic;
SIGNAL \to_usb_and_temp~23_combout\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \key_status[12][2]~51_combout\ : std_logic;
SIGNAL \key_status[12][2]~q\ : std_logic;
SIGNAL \key_status[13][2]~50_combout\ : std_logic;
SIGNAL \key_status[13][2]~q\ : std_logic;
SIGNAL \to_usb_and_temp~32_combout\ : std_logic;
SIGNAL \key_status[9][2]~46_combout\ : std_logic;
SIGNAL \key_status[9][2]~q\ : std_logic;
SIGNAL \key_status[8][2]~47_combout\ : std_logic;
SIGNAL \key_status[8][2]~q\ : std_logic;
SIGNAL \to_usb_and_temp~30_combout\ : std_logic;
SIGNAL \key_status[14][2]~53_combout\ : std_logic;
SIGNAL \key_status[14][2]~q\ : std_logic;
SIGNAL \key_status[15][2]~52_combout\ : std_logic;
SIGNAL \key_status[15][2]~q\ : std_logic;
SIGNAL \to_usb_and_temp~33_combout\ : std_logic;
SIGNAL \key_status[11][2]~48_combout\ : std_logic;
SIGNAL \key_status[11][2]~q\ : std_logic;
SIGNAL \key_status[10][2]~49_combout\ : std_logic;
SIGNAL \key_status[10][2]~q\ : std_logic;
SIGNAL \to_usb_and_temp~31_combout\ : std_logic;
SIGNAL \to_usb_and_temp~34_combout\ : std_logic;
SIGNAL \key_status[16][2]~45_combout\ : std_logic;
SIGNAL \key_status[16][2]~q\ : std_logic;
SIGNAL \key_status[17][2]~44_combout\ : std_logic;
SIGNAL \key_status[17][2]~q\ : std_logic;
SIGNAL \to_usb_and_temp~29_combout\ : std_logic;
SIGNAL \key_status[0][2]~37_combout\ : std_logic;
SIGNAL \key_status[0][2]~q\ : std_logic;
SIGNAL \key_status[1][2]~36_combout\ : std_logic;
SIGNAL \key_status[1][2]~q\ : std_logic;
SIGNAL \to_usb_and_temp~24_combout\ : std_logic;
SIGNAL \key_status[5][2]~40_combout\ : std_logic;
SIGNAL \key_status[5][2]~q\ : std_logic;
SIGNAL \key_status[4][2]~41_combout\ : std_logic;
SIGNAL \key_status[4][2]~q\ : std_logic;
SIGNAL \to_usb_and_temp~26_combout\ : std_logic;
SIGNAL \key_status[6][2]~43_combout\ : std_logic;
SIGNAL \key_status[6][2]~q\ : std_logic;
SIGNAL \key_status[7][2]~42_combout\ : std_logic;
SIGNAL \key_status[7][2]~q\ : std_logic;
SIGNAL \to_usb_and_temp~27_combout\ : std_logic;
SIGNAL \key_status[2][2]~39_combout\ : std_logic;
SIGNAL \key_status[2][2]~q\ : std_logic;
SIGNAL \key_status[3][2]~38_combout\ : std_logic;
SIGNAL \key_status[3][2]~q\ : std_logic;
SIGNAL \to_usb_and_temp~25_combout\ : std_logic;
SIGNAL \to_usb_and_temp~28_combout\ : std_logic;
SIGNAL \to_usb_and_temp~35_combout\ : std_logic;
SIGNAL \Decoder1~3_combout\ : std_logic;
SIGNAL \key_status[16][3]~63_combout\ : std_logic;
SIGNAL \key_status[16][3]~q\ : std_logic;
SIGNAL \key_status[17][3]~62_combout\ : std_logic;
SIGNAL \key_status[17][3]~q\ : std_logic;
SIGNAL \to_usb_and_temp~41_combout\ : std_logic;
SIGNAL \key_status[11][3]~66_combout\ : std_logic;
SIGNAL \key_status[11][3]~q\ : std_logic;
SIGNAL \key_status[10][3]~67_combout\ : std_logic;
SIGNAL \key_status[10][3]~q\ : std_logic;
SIGNAL \to_usb_and_temp~43_combout\ : std_logic;
SIGNAL \key_status[13][3]~68_combout\ : std_logic;
SIGNAL \key_status[13][3]~q\ : std_logic;
SIGNAL \key_status[12][3]~69_combout\ : std_logic;
SIGNAL \key_status[12][3]~q\ : std_logic;
SIGNAL \to_usb_and_temp~44_combout\ : std_logic;
SIGNAL \key_status[8][3]~65_combout\ : std_logic;
SIGNAL \key_status[8][3]~q\ : std_logic;
SIGNAL \key_status[9][3]~64_combout\ : std_logic;
SIGNAL \key_status[9][3]~q\ : std_logic;
SIGNAL \to_usb_and_temp~42_combout\ : std_logic;
SIGNAL \key_status[15][3]~70_combout\ : std_logic;
SIGNAL \key_status[15][3]~q\ : std_logic;
SIGNAL \key_status[14][3]~71_combout\ : std_logic;
SIGNAL \key_status[14][3]~q\ : std_logic;
SIGNAL \to_usb_and_temp~45_combout\ : std_logic;
SIGNAL \to_usb_and_temp~46_combout\ : std_logic;
SIGNAL \key_status[4][3]~59_combout\ : std_logic;
SIGNAL \key_status[4][3]~q\ : std_logic;
SIGNAL \key_status[5][3]~58_combout\ : std_logic;
SIGNAL \key_status[5][3]~q\ : std_logic;
SIGNAL \to_usb_and_temp~38_combout\ : std_logic;
SIGNAL \key_status[7][3]~60_combout\ : std_logic;
SIGNAL \key_status[7][3]~q\ : std_logic;
SIGNAL \key_status[6][3]~61_combout\ : std_logic;
SIGNAL \key_status[6][3]~q\ : std_logic;
SIGNAL \to_usb_and_temp~39_combout\ : std_logic;
SIGNAL \key_status[2][3]~57_combout\ : std_logic;
SIGNAL \key_status[2][3]~q\ : std_logic;
SIGNAL \key_status[3][3]~56_combout\ : std_logic;
SIGNAL \key_status[3][3]~q\ : std_logic;
SIGNAL \to_usb_and_temp~37_combout\ : std_logic;
SIGNAL \key_status[1][3]~54_combout\ : std_logic;
SIGNAL \key_status[1][3]~q\ : std_logic;
SIGNAL \key_status[0][3]~55_combout\ : std_logic;
SIGNAL \key_status[0][3]~q\ : std_logic;
SIGNAL \to_usb_and_temp~36_combout\ : std_logic;
SIGNAL \to_usb_and_temp~40_combout\ : std_logic;
SIGNAL \to_usb_and_temp~47_combout\ : std_logic;
SIGNAL \Decoder1~4_combout\ : std_logic;
SIGNAL \key_status[7][4]~78_combout\ : std_logic;
SIGNAL \key_status[7][4]~q\ : std_logic;
SIGNAL \key_status[6][4]~79_combout\ : std_logic;
SIGNAL \key_status[6][4]~q\ : std_logic;
SIGNAL \to_usb_and_temp~51_combout\ : std_logic;
SIGNAL \key_status[5][4]~76_combout\ : std_logic;
SIGNAL \key_status[5][4]~q\ : std_logic;
SIGNAL \key_status[4][4]~77_combout\ : std_logic;
SIGNAL \key_status[4][4]~q\ : std_logic;
SIGNAL \to_usb_and_temp~50_combout\ : std_logic;
SIGNAL \key_status[2][4]~75_combout\ : std_logic;
SIGNAL \key_status[2][4]~q\ : std_logic;
SIGNAL \key_status[3][4]~74_combout\ : std_logic;
SIGNAL \key_status[3][4]~q\ : std_logic;
SIGNAL \to_usb_and_temp~49_combout\ : std_logic;
SIGNAL \key_status[0][4]~73_combout\ : std_logic;
SIGNAL \key_status[0][4]~q\ : std_logic;
SIGNAL \key_status[1][4]~72_combout\ : std_logic;
SIGNAL \key_status[1][4]~q\ : std_logic;
SIGNAL \to_usb_and_temp~48_combout\ : std_logic;
SIGNAL \to_usb_and_temp~52_combout\ : std_logic;
SIGNAL \key_status[16][4]~81_combout\ : std_logic;
SIGNAL \key_status[16][4]~q\ : std_logic;
SIGNAL \key_status[17][4]~80_combout\ : std_logic;
SIGNAL \key_status[17][4]~q\ : std_logic;
SIGNAL \to_usb_and_temp~53_combout\ : std_logic;
SIGNAL \key_status[12][4]~87_combout\ : std_logic;
SIGNAL \key_status[12][4]~q\ : std_logic;
SIGNAL \key_status[13][4]~86_combout\ : std_logic;
SIGNAL \key_status[13][4]~q\ : std_logic;
SIGNAL \to_usb_and_temp~56_combout\ : std_logic;
SIGNAL \key_status[15][4]~88_combout\ : std_logic;
SIGNAL \key_status[15][4]~q\ : std_logic;
SIGNAL \key_status[14][4]~89_combout\ : std_logic;
SIGNAL \key_status[14][4]~q\ : std_logic;
SIGNAL \to_usb_and_temp~57_combout\ : std_logic;
SIGNAL \key_status[10][4]~85_combout\ : std_logic;
SIGNAL \key_status[10][4]~q\ : std_logic;
SIGNAL \key_status[11][4]~84_combout\ : std_logic;
SIGNAL \key_status[11][4]~q\ : std_logic;
SIGNAL \to_usb_and_temp~55_combout\ : std_logic;
SIGNAL \key_status[8][4]~83_combout\ : std_logic;
SIGNAL \key_status[8][4]~q\ : std_logic;
SIGNAL \key_status[9][4]~82_combout\ : std_logic;
SIGNAL \key_status[9][4]~q\ : std_logic;
SIGNAL \to_usb_and_temp~54_combout\ : std_logic;
SIGNAL \to_usb_and_temp~58_combout\ : std_logic;
SIGNAL \to_usb_and_temp~59_combout\ : std_logic;
SIGNAL \Decoder1~5_combout\ : std_logic;
SIGNAL \key_status[17][5]~98_combout\ : std_logic;
SIGNAL \key_status[17][5]~q\ : std_logic;
SIGNAL \key_status[16][5]~99_combout\ : std_logic;
SIGNAL \key_status[16][5]~q\ : std_logic;
SIGNAL \to_usb_and_temp~65_combout\ : std_logic;
SIGNAL \key_status[10][5]~103_combout\ : std_logic;
SIGNAL \key_status[10][5]~q\ : std_logic;
SIGNAL \key_status[11][5]~102_combout\ : std_logic;
SIGNAL \key_status[11][5]~q\ : std_logic;
SIGNAL \to_usb_and_temp~67_combout\ : std_logic;
SIGNAL \key_status[12][5]~105_combout\ : std_logic;
SIGNAL \key_status[12][5]~q\ : std_logic;
SIGNAL \key_status[13][5]~104_combout\ : std_logic;
SIGNAL \key_status[13][5]~q\ : std_logic;
SIGNAL \to_usb_and_temp~68_combout\ : std_logic;
SIGNAL \key_status[14][5]~107_combout\ : std_logic;
SIGNAL \key_status[14][5]~q\ : std_logic;
SIGNAL \key_status[15][5]~106_combout\ : std_logic;
SIGNAL \key_status[15][5]~q\ : std_logic;
SIGNAL \to_usb_and_temp~69_combout\ : std_logic;
SIGNAL \key_status[8][5]~101_combout\ : std_logic;
SIGNAL \key_status[8][5]~q\ : std_logic;
SIGNAL \key_status[9][5]~100_combout\ : std_logic;
SIGNAL \key_status[9][5]~q\ : std_logic;
SIGNAL \to_usb_and_temp~66_combout\ : std_logic;
SIGNAL \to_usb_and_temp~70_combout\ : std_logic;
SIGNAL \key_status[7][5]~96_combout\ : std_logic;
SIGNAL \key_status[7][5]~q\ : std_logic;
SIGNAL \key_status[6][5]~97_combout\ : std_logic;
SIGNAL \key_status[6][5]~q\ : std_logic;
SIGNAL \to_usb_and_temp~63_combout\ : std_logic;
SIGNAL \key_status[0][5]~91_combout\ : std_logic;
SIGNAL \key_status[0][5]~q\ : std_logic;
SIGNAL \key_status[1][5]~90_combout\ : std_logic;
SIGNAL \key_status[1][5]~q\ : std_logic;
SIGNAL \to_usb_and_temp~60_combout\ : std_logic;
SIGNAL \key_status[2][5]~93_combout\ : std_logic;
SIGNAL \key_status[2][5]~q\ : std_logic;
SIGNAL \key_status[3][5]~92_combout\ : std_logic;
SIGNAL \key_status[3][5]~q\ : std_logic;
SIGNAL \to_usb_and_temp~61_combout\ : std_logic;
SIGNAL \key_status[4][5]~95_combout\ : std_logic;
SIGNAL \key_status[4][5]~q\ : std_logic;
SIGNAL \key_status[5][5]~94_combout\ : std_logic;
SIGNAL \key_status[5][5]~q\ : std_logic;
SIGNAL \to_usb_and_temp~62_combout\ : std_logic;
SIGNAL \to_usb_and_temp~64_combout\ : std_logic;
SIGNAL \to_usb_and_temp~71_combout\ : std_logic;
SIGNAL \Decoder1~6_combout\ : std_logic;
SIGNAL \key_status[16][6]~117_combout\ : std_logic;
SIGNAL \key_status[16][6]~q\ : std_logic;
SIGNAL \key_status[17][6]~116_combout\ : std_logic;
SIGNAL \key_status[17][6]~q\ : std_logic;
SIGNAL \to_usb_and_temp~77_combout\ : std_logic;
SIGNAL \key_status[15][6]~124_combout\ : std_logic;
SIGNAL \key_status[15][6]~q\ : std_logic;
SIGNAL \key_status[14][6]~125_combout\ : std_logic;
SIGNAL \key_status[14][6]~q\ : std_logic;
SIGNAL \to_usb_and_temp~81_combout\ : std_logic;
SIGNAL \key_status[13][6]~122_combout\ : std_logic;
SIGNAL \key_status[13][6]~q\ : std_logic;
SIGNAL \key_status[12][6]~123_combout\ : std_logic;
SIGNAL \key_status[12][6]~q\ : std_logic;
SIGNAL \to_usb_and_temp~80_combout\ : std_logic;
SIGNAL \key_status[10][6]~121_combout\ : std_logic;
SIGNAL \key_status[10][6]~q\ : std_logic;
SIGNAL \key_status[11][6]~120_combout\ : std_logic;
SIGNAL \key_status[11][6]~q\ : std_logic;
SIGNAL \to_usb_and_temp~79_combout\ : std_logic;
SIGNAL \key_status[8][6]~119_combout\ : std_logic;
SIGNAL \key_status[8][6]~q\ : std_logic;
SIGNAL \key_status[9][6]~118_combout\ : std_logic;
SIGNAL \key_status[9][6]~q\ : std_logic;
SIGNAL \to_usb_and_temp~78_combout\ : std_logic;
SIGNAL \to_usb_and_temp~82_combout\ : std_logic;
SIGNAL \key_status[1][6]~108_combout\ : std_logic;
SIGNAL \key_status[1][6]~q\ : std_logic;
SIGNAL \key_status[0][6]~109_combout\ : std_logic;
SIGNAL \key_status[0][6]~q\ : std_logic;
SIGNAL \to_usb_and_temp~72_combout\ : std_logic;
SIGNAL \key_status[6][6]~115_combout\ : std_logic;
SIGNAL \key_status[6][6]~q\ : std_logic;
SIGNAL \key_status[7][6]~114_combout\ : std_logic;
SIGNAL \key_status[7][6]~q\ : std_logic;
SIGNAL \to_usb_and_temp~75_combout\ : std_logic;
SIGNAL \key_status[5][6]~112_combout\ : std_logic;
SIGNAL \key_status[5][6]~q\ : std_logic;
SIGNAL \key_status[4][6]~113_combout\ : std_logic;
SIGNAL \key_status[4][6]~q\ : std_logic;
SIGNAL \to_usb_and_temp~74_combout\ : std_logic;
SIGNAL \key_status[3][6]~110_combout\ : std_logic;
SIGNAL \key_status[3][6]~q\ : std_logic;
SIGNAL \key_status[2][6]~111_combout\ : std_logic;
SIGNAL \key_status[2][6]~q\ : std_logic;
SIGNAL \to_usb_and_temp~73_combout\ : std_logic;
SIGNAL \to_usb_and_temp~76_combout\ : std_logic;
SIGNAL \to_usb_and_temp~83_combout\ : std_logic;
SIGNAL \Decoder1~7_combout\ : std_logic;
SIGNAL \key_status[9][7]~136_combout\ : std_logic;
SIGNAL \key_status[9][7]~q\ : std_logic;
SIGNAL \key_status[8][7]~137_combout\ : std_logic;
SIGNAL \key_status[8][7]~q\ : std_logic;
SIGNAL \to_usb_and_temp~90_combout\ : std_logic;
SIGNAL \key_status[14][7]~143_combout\ : std_logic;
SIGNAL \key_status[14][7]~q\ : std_logic;
SIGNAL \key_status[15][7]~142_combout\ : std_logic;
SIGNAL \key_status[15][7]~q\ : std_logic;
SIGNAL \to_usb_and_temp~93_combout\ : std_logic;
SIGNAL \key_status[11][7]~138_combout\ : std_logic;
SIGNAL \key_status[11][7]~q\ : std_logic;
SIGNAL \key_status[10][7]~139_combout\ : std_logic;
SIGNAL \key_status[10][7]~q\ : std_logic;
SIGNAL \to_usb_and_temp~91_combout\ : std_logic;
SIGNAL \key_status[12][7]~141_combout\ : std_logic;
SIGNAL \key_status[12][7]~q\ : std_logic;
SIGNAL \key_status[13][7]~140_combout\ : std_logic;
SIGNAL \key_status[13][7]~q\ : std_logic;
SIGNAL \to_usb_and_temp~92_combout\ : std_logic;
SIGNAL \to_usb_and_temp~94_combout\ : std_logic;
SIGNAL \key_status[2][7]~129_combout\ : std_logic;
SIGNAL \key_status[2][7]~q\ : std_logic;
SIGNAL \key_status[3][7]~128_combout\ : std_logic;
SIGNAL \key_status[3][7]~q\ : std_logic;
SIGNAL \to_usb_and_temp~85_combout\ : std_logic;
SIGNAL \key_status[0][7]~127_combout\ : std_logic;
SIGNAL \key_status[0][7]~q\ : std_logic;
SIGNAL \key_status[1][7]~126_combout\ : std_logic;
SIGNAL \key_status[1][7]~q\ : std_logic;
SIGNAL \to_usb_and_temp~84_combout\ : std_logic;
SIGNAL \key_status[4][7]~131_combout\ : std_logic;
SIGNAL \key_status[4][7]~q\ : std_logic;
SIGNAL \key_status[5][7]~130_combout\ : std_logic;
SIGNAL \key_status[5][7]~q\ : std_logic;
SIGNAL \to_usb_and_temp~86_combout\ : std_logic;
SIGNAL \key_status[7][7]~132_combout\ : std_logic;
SIGNAL \key_status[7][7]~q\ : std_logic;
SIGNAL \key_status[6][7]~133_combout\ : std_logic;
SIGNAL \key_status[6][7]~q\ : std_logic;
SIGNAL \to_usb_and_temp~87_combout\ : std_logic;
SIGNAL \to_usb_and_temp~88_combout\ : std_logic;
SIGNAL \key_status[16][7]~135_combout\ : std_logic;
SIGNAL \key_status[16][7]~q\ : std_logic;
SIGNAL \key_status[17][7]~134_combout\ : std_logic;
SIGNAL \key_status[17][7]~q\ : std_logic;
SIGNAL \to_usb_and_temp~89_combout\ : std_logic;
SIGNAL \to_usb_and_temp~95_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_strobe <= strobe;
ww_pressing <= pressing;
ww_key_map_in <= key_map_in;
ww_from_usb <= from_usb;
to_usb <= ww_to_usb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X18_Y0_N23
\to_usb[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_usb_and_temp~11_combout\,
	devoe => ww_devoe,
	o => \to_usb[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\to_usb[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_usb_and_temp~23_combout\,
	devoe => ww_devoe,
	o => \to_usb[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\to_usb[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_usb_and_temp~35_combout\,
	devoe => ww_devoe,
	o => \to_usb[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\to_usb[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_usb_and_temp~47_combout\,
	devoe => ww_devoe,
	o => \to_usb[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\to_usb[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_usb_and_temp~59_combout\,
	devoe => ww_devoe,
	o => \to_usb[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\to_usb[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_usb_and_temp~71_combout\,
	devoe => ww_devoe,
	o => \to_usb[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\to_usb[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_usb_and_temp~83_combout\,
	devoe => ww_devoe,
	o => \to_usb[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\to_usb[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \to_usb_and_temp~95_combout\,
	devoe => ww_devoe,
	o => \to_usb[7]~output_o\);

-- Location: IOIBUF_X20_Y0_N15
\from_usb[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(15),
	o => \from_usb[15]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\strobe~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_strobe,
	o => \strobe~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\key_map_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_map_in(6),
	o => \key_map_in[6]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\key_map_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_map_in(5),
	o => \key_map_in[5]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\key_map_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_map_in(7),
	o => \key_map_in[7]~input_o\);

-- Location: LCCOMB_X32_Y1_N14
\Decoder1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (!\key_map_in[6]~input_o\ & (!\key_map_in[5]~input_o\ & !\key_map_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[6]~input_o\,
	datac => \key_map_in[5]~input_o\,
	datad => \key_map_in[7]~input_o\,
	combout => \Decoder1~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\pressing~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pressing,
	o => \pressing~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\key_map_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_map_in(4),
	o => \key_map_in[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\key_map_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_map_in(3),
	o => \key_map_in[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N29
\key_map_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_map_in(2),
	o => \key_map_in[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\key_map_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_map_in(1),
	o => \key_map_in[1]~input_o\);

-- Location: LCCOMB_X38_Y1_N26
\Decoder0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~24_combout\ = (!\key_map_in[4]~input_o\ & (\key_map_in[3]~input_o\ & (\key_map_in[2]~input_o\ & \key_map_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[4]~input_o\,
	datab => \key_map_in[3]~input_o\,
	datac => \key_map_in[2]~input_o\,
	datad => \key_map_in[1]~input_o\,
	combout => \Decoder0~24_combout\);

-- Location: IOIBUF_X40_Y0_N15
\key_map_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_map_in(0),
	o => \key_map_in[0]~input_o\);

-- Location: LCCOMB_X38_Y1_N6
\Decoder0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~26_combout\ = (\Decoder0~24_combout\ & \key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~24_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~26_combout\);

-- Location: LCCOMB_X35_Y4_N20
\key_status[15][0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[15][0]~17_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~26_combout\ & (\pressing~input_o\)) # (!\Decoder0~26_combout\ & ((\key_status[15][0]~q\))))) # (!\Decoder1~0_combout\ & (((\key_status[15][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[15][0]~q\,
	datad => \Decoder0~26_combout\,
	combout => \key_status[15][0]~17_combout\);

-- Location: FF_X35_Y4_N21
\key_status[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[15][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[15][0]~q\);

-- Location: IOIBUF_X20_Y0_N22
\from_usb[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(14),
	o => \from_usb[14]~input_o\);

-- Location: LCCOMB_X38_Y1_N12
\Decoder0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~25_combout\ = (\Decoder0~24_combout\ & !\key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~24_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~25_combout\);

-- Location: LCCOMB_X36_Y4_N24
\key_status[14][0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[14][0]~16_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~25_combout\ & (\pressing~input_o\)) # (!\Decoder0~25_combout\ & ((\key_status[14][0]~q\))))) # (!\Decoder1~0_combout\ & (((\key_status[14][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[14][0]~q\,
	datad => \Decoder0~25_combout\,
	combout => \key_status[14][0]~16_combout\);

-- Location: FF_X36_Y4_N25
\key_status[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[14][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[14][0]~q\);

-- Location: LCCOMB_X35_Y4_N22
\to_usb_and_temp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~9_combout\ = (\from_usb[15]~input_o\ & (((\from_usb[14]~input_o\) # (!\key_status[14][0]~q\)))) # (!\from_usb[15]~input_o\ & (!\key_status[15][0]~q\ & ((\from_usb[14]~input_o\) # (!\key_status[14][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[15]~input_o\,
	datab => \key_status[15][0]~q\,
	datac => \from_usb[14]~input_o\,
	datad => \key_status[14][0]~q\,
	combout => \to_usb_and_temp~9_combout\);

-- Location: LCCOMB_X38_Y1_N2
\Decoder0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~21_combout\ = (!\key_map_in[4]~input_o\ & (\key_map_in[3]~input_o\ & (\key_map_in[2]~input_o\ & !\key_map_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[4]~input_o\,
	datab => \key_map_in[3]~input_o\,
	datac => \key_map_in[2]~input_o\,
	datad => \key_map_in[1]~input_o\,
	combout => \Decoder0~21_combout\);

-- Location: LCCOMB_X38_Y1_N24
\Decoder0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~22_combout\ = (\Decoder0~21_combout\ & !\key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~21_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~22_combout\);

-- Location: LCCOMB_X35_Y2_N4
\key_status[12][0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[12][0]~14_combout\ = (\Decoder0~22_combout\ & ((\Decoder1~0_combout\ & (\pressing~input_o\)) # (!\Decoder1~0_combout\ & ((\key_status[12][0]~q\))))) # (!\Decoder0~22_combout\ & (((\key_status[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~22_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[12][0]~q\,
	datad => \Decoder1~0_combout\,
	combout => \key_status[12][0]~14_combout\);

-- Location: FF_X35_Y2_N5
\key_status[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[12][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[12][0]~q\);

-- Location: IOIBUF_X16_Y0_N29
\from_usb[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(13),
	o => \from_usb[13]~input_o\);

-- Location: LCCOMB_X34_Y1_N6
\Decoder0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~23_combout\ = (\Decoder0~21_combout\ & \key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~21_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~23_combout\);

-- Location: LCCOMB_X35_Y2_N14
\key_status[13][0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[13][0]~15_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~23_combout\ & ((\pressing~input_o\))) # (!\Decoder0~23_combout\ & (\key_status[13][0]~q\)))) # (!\Decoder1~0_combout\ & (((\key_status[13][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \Decoder0~23_combout\,
	datac => \key_status[13][0]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[13][0]~15_combout\);

-- Location: FF_X35_Y2_N15
\key_status[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[13][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[13][0]~q\);

-- Location: IOIBUF_X14_Y0_N1
\from_usb[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(12),
	o => \from_usb[12]~input_o\);

-- Location: LCCOMB_X34_Y2_N28
\to_usb_and_temp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~8_combout\ = (\key_status[12][0]~q\ & (\from_usb[12]~input_o\ & ((\from_usb[13]~input_o\) # (!\key_status[13][0]~q\)))) # (!\key_status[12][0]~q\ & ((\from_usb[13]~input_o\) # ((!\key_status[13][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[12][0]~q\,
	datab => \from_usb[13]~input_o\,
	datac => \key_status[13][0]~q\,
	datad => \from_usb[12]~input_o\,
	combout => \to_usb_and_temp~8_combout\);

-- Location: LCCOMB_X38_Y1_N0
\Decoder0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (!\key_map_in[4]~input_o\ & (\key_map_in[3]~input_o\ & (!\key_map_in[2]~input_o\ & !\key_map_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[4]~input_o\,
	datab => \key_map_in[3]~input_o\,
	datac => \key_map_in[2]~input_o\,
	datad => \key_map_in[1]~input_o\,
	combout => \Decoder0~15_combout\);

-- Location: LCCOMB_X35_Y3_N6
\Decoder0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~17_combout\ = (\key_map_in[0]~input_o\ & \Decoder0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[0]~input_o\,
	datac => \Decoder0~15_combout\,
	combout => \Decoder0~17_combout\);

-- Location: LCCOMB_X35_Y3_N30
\key_status[9][0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[9][0]~11_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~17_combout\ & (\pressing~input_o\)) # (!\Decoder0~17_combout\ & ((\key_status[9][0]~q\))))) # (!\Decoder1~0_combout\ & (((\key_status[9][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~0_combout\,
	datac => \key_status[9][0]~q\,
	datad => \Decoder0~17_combout\,
	combout => \key_status[9][0]~11_combout\);

-- Location: FF_X35_Y3_N31
\key_status[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[9][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[9][0]~q\);

-- Location: IOIBUF_X38_Y0_N8
\from_usb[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(8),
	o => \from_usb[8]~input_o\);

-- Location: LCCOMB_X35_Y3_N16
\Decoder0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~16_combout\ = (!\key_map_in[0]~input_o\ & \Decoder0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[0]~input_o\,
	datac => \Decoder0~15_combout\,
	combout => \Decoder0~16_combout\);

-- Location: LCCOMB_X35_Y3_N8
\key_status[8][0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[8][0]~10_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~16_combout\ & (\pressing~input_o\)) # (!\Decoder0~16_combout\ & ((\key_status[8][0]~q\))))) # (!\Decoder1~0_combout\ & (((\key_status[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~0_combout\,
	datac => \key_status[8][0]~q\,
	datad => \Decoder0~16_combout\,
	combout => \key_status[8][0]~10_combout\);

-- Location: FF_X35_Y3_N9
\key_status[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[8][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[8][0]~q\);

-- Location: IOIBUF_X40_Y0_N22
\from_usb[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(9),
	o => \from_usb[9]~input_o\);

-- Location: LCCOMB_X35_Y3_N24
\to_usb_and_temp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~6_combout\ = (\key_status[9][0]~q\ & (\from_usb[9]~input_o\ & ((\from_usb[8]~input_o\) # (!\key_status[8][0]~q\)))) # (!\key_status[9][0]~q\ & ((\from_usb[8]~input_o\) # ((!\key_status[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[9][0]~q\,
	datab => \from_usb[8]~input_o\,
	datac => \key_status[8][0]~q\,
	datad => \from_usb[9]~input_o\,
	combout => \to_usb_and_temp~6_combout\);

-- Location: LCCOMB_X38_Y1_N22
\Decoder0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~18_combout\ = (!\key_map_in[4]~input_o\ & (\key_map_in[3]~input_o\ & (!\key_map_in[2]~input_o\ & \key_map_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[4]~input_o\,
	datab => \key_map_in[3]~input_o\,
	datac => \key_map_in[2]~input_o\,
	datad => \key_map_in[1]~input_o\,
	combout => \Decoder0~18_combout\);

-- Location: LCCOMB_X34_Y1_N8
\Decoder0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~20_combout\ = (\Decoder0~18_combout\ & \key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~18_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~20_combout\);

-- Location: LCCOMB_X34_Y1_N26
\key_status[11][0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[11][0]~13_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~20_combout\ & ((\pressing~input_o\))) # (!\Decoder0~20_combout\ & (\key_status[11][0]~q\)))) # (!\Decoder1~0_combout\ & (((\key_status[11][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \Decoder0~20_combout\,
	datac => \key_status[11][0]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[11][0]~13_combout\);

-- Location: FF_X34_Y1_N27
\key_status[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[11][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[11][0]~q\);

-- Location: IOIBUF_X46_Y0_N8
\from_usb[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(10),
	o => \from_usb[10]~input_o\);

-- Location: IOIBUF_X51_Y0_N22
\from_usb[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(11),
	o => \from_usb[11]~input_o\);

-- Location: LCCOMB_X38_Y1_N28
\Decoder0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~19_combout\ = (\Decoder0~18_combout\ & !\key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~18_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~19_combout\);

-- Location: LCCOMB_X34_Y1_N12
\key_status[10][0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[10][0]~12_combout\ = (\Decoder0~19_combout\ & ((\Decoder1~0_combout\ & ((\pressing~input_o\))) # (!\Decoder1~0_combout\ & (\key_status[10][0]~q\)))) # (!\Decoder0~19_combout\ & (((\key_status[10][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~19_combout\,
	datab => \Decoder1~0_combout\,
	datac => \key_status[10][0]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[10][0]~12_combout\);

-- Location: FF_X34_Y1_N13
\key_status[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[10][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[10][0]~q\);

-- Location: LCCOMB_X34_Y1_N0
\to_usb_and_temp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~7_combout\ = (\key_status[11][0]~q\ & (\from_usb[11]~input_o\ & ((\from_usb[10]~input_o\) # (!\key_status[10][0]~q\)))) # (!\key_status[11][0]~q\ & ((\from_usb[10]~input_o\) # ((!\key_status[10][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[11][0]~q\,
	datab => \from_usb[10]~input_o\,
	datac => \from_usb[11]~input_o\,
	datad => \key_status[10][0]~q\,
	combout => \to_usb_and_temp~7_combout\);

-- Location: LCCOMB_X34_Y2_N18
\to_usb_and_temp~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~10_combout\ = (\to_usb_and_temp~9_combout\ & (\to_usb_and_temp~8_combout\ & (\to_usb_and_temp~6_combout\ & \to_usb_and_temp~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~9_combout\,
	datab => \to_usb_and_temp~8_combout\,
	datac => \to_usb_and_temp~6_combout\,
	datad => \to_usb_and_temp~7_combout\,
	combout => \to_usb_and_temp~10_combout\);

-- Location: IOIBUF_X31_Y0_N29
\from_usb[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(16),
	o => \from_usb[16]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\from_usb[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(17),
	o => \from_usb[17]~input_o\);

-- Location: LCCOMB_X38_Y1_N14
\Decoder0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (\key_map_in[4]~input_o\ & (!\key_map_in[3]~input_o\ & (!\key_map_in[2]~input_o\ & !\key_map_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[4]~input_o\,
	datab => \key_map_in[3]~input_o\,
	datac => \key_map_in[2]~input_o\,
	datad => \key_map_in[1]~input_o\,
	combout => \Decoder0~12_combout\);

-- Location: LCCOMB_X38_Y1_N18
\Decoder0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (\Decoder0~12_combout\ & \key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~12_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~14_combout\);

-- Location: LCCOMB_X36_Y4_N22
\key_status[17][0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[17][0]~9_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~14_combout\ & (\pressing~input_o\)) # (!\Decoder0~14_combout\ & ((\key_status[17][0]~q\))))) # (!\Decoder1~0_combout\ & (((\key_status[17][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[17][0]~q\,
	datad => \Decoder0~14_combout\,
	combout => \key_status[17][0]~9_combout\);

-- Location: FF_X36_Y4_N23
\key_status[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[17][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[17][0]~q\);

-- Location: LCCOMB_X38_Y1_N20
\Decoder0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (\Decoder0~12_combout\ & !\key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~12_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~13_combout\);

-- Location: LCCOMB_X36_Y4_N12
\key_status[16][0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[16][0]~8_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~13_combout\ & (\pressing~input_o\)) # (!\Decoder0~13_combout\ & ((\key_status[16][0]~q\))))) # (!\Decoder1~0_combout\ & (((\key_status[16][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[16][0]~q\,
	datad => \Decoder0~13_combout\,
	combout => \key_status[16][0]~8_combout\);

-- Location: FF_X36_Y4_N13
\key_status[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[16][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[16][0]~q\);

-- Location: LCCOMB_X32_Y4_N4
\to_usb_and_temp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~5_combout\ = (\from_usb[16]~input_o\ & ((\from_usb[17]~input_o\) # ((!\key_status[17][0]~q\)))) # (!\from_usb[16]~input_o\ & (!\key_status[16][0]~q\ & ((\from_usb[17]~input_o\) # (!\key_status[17][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[16]~input_o\,
	datab => \from_usb[17]~input_o\,
	datac => \key_status[17][0]~q\,
	datad => \key_status[16][0]~q\,
	combout => \to_usb_and_temp~5_combout\);

-- Location: LCCOMB_X38_Y1_N4
\Decoder0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (!\key_map_in[4]~input_o\ & (!\key_map_in[3]~input_o\ & (\key_map_in[2]~input_o\ & \key_map_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[4]~input_o\,
	datab => \key_map_in[3]~input_o\,
	datac => \key_map_in[2]~input_o\,
	datad => \key_map_in[1]~input_o\,
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X37_Y2_N20
\Decoder0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (!\key_map_in[0]~input_o\ & \Decoder0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_map_in[0]~input_o\,
	datad => \Decoder0~9_combout\,
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X37_Y2_N6
\key_status[6][0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[6][0]~6_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~10_combout\ & (\pressing~input_o\)) # (!\Decoder0~10_combout\ & ((\key_status[6][0]~q\))))) # (!\Decoder1~0_combout\ & (((\key_status[6][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[6][0]~q\,
	datad => \Decoder0~10_combout\,
	combout => \key_status[6][0]~6_combout\);

-- Location: FF_X37_Y2_N7
\key_status[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[6][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[6][0]~q\);

-- Location: LCCOMB_X37_Y2_N18
\Decoder0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (\key_map_in[0]~input_o\ & \Decoder0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_map_in[0]~input_o\,
	datad => \Decoder0~9_combout\,
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X37_Y2_N4
\key_status[7][0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[7][0]~7_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~11_combout\ & (\pressing~input_o\)) # (!\Decoder0~11_combout\ & ((\key_status[7][0]~q\))))) # (!\Decoder1~0_combout\ & (((\key_status[7][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[7][0]~q\,
	datad => \Decoder0~11_combout\,
	combout => \key_status[7][0]~7_combout\);

-- Location: FF_X37_Y2_N5
\key_status[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[7][0]~q\);

-- Location: IOIBUF_X34_Y0_N22
\from_usb[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(6),
	o => \from_usb[6]~input_o\);

-- Location: IOIBUF_X38_Y0_N15
\from_usb[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(7),
	o => \from_usb[7]~input_o\);

-- Location: LCCOMB_X37_Y2_N14
\to_usb_and_temp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~3_combout\ = (\key_status[6][0]~q\ & (\from_usb[6]~input_o\ & ((\from_usb[7]~input_o\) # (!\key_status[7][0]~q\)))) # (!\key_status[6][0]~q\ & (((\from_usb[7]~input_o\)) # (!\key_status[7][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[6][0]~q\,
	datab => \key_status[7][0]~q\,
	datac => \from_usb[6]~input_o\,
	datad => \from_usb[7]~input_o\,
	combout => \to_usb_and_temp~3_combout\);

-- Location: IOIBUF_X22_Y0_N8
\from_usb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(1),
	o => \from_usb[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\from_usb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(0),
	o => \from_usb[0]~input_o\);

-- Location: LCCOMB_X38_Y1_N30
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\key_map_in[4]~input_o\ & (!\key_map_in[3]~input_o\ & (!\key_map_in[2]~input_o\ & !\key_map_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[4]~input_o\,
	datab => \key_map_in[3]~input_o\,
	datac => \key_map_in[2]~input_o\,
	datad => \key_map_in[1]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X37_Y1_N24
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\Decoder0~0_combout\ & !\key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~0_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X37_Y1_N8
\key_status[0][0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[0][0]~0_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~1_combout\ & (\pressing~input_o\)) # (!\Decoder0~1_combout\ & ((\key_status[0][0]~q\))))) # (!\Decoder1~0_combout\ & (((\key_status[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[0][0]~q\,
	datad => \Decoder0~1_combout\,
	combout => \key_status[0][0]~0_combout\);

-- Location: FF_X37_Y1_N9
\key_status[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[0][0]~q\);

-- Location: LCCOMB_X37_Y1_N18
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\Decoder0~0_combout\ & \key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~0_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X37_Y1_N2
\key_status[1][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[1][0]~1_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~2_combout\ & (\pressing~input_o\)) # (!\Decoder0~2_combout\ & ((\key_status[1][0]~q\))))) # (!\Decoder1~0_combout\ & (((\key_status[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[1][0]~q\,
	datad => \Decoder0~2_combout\,
	combout => \key_status[1][0]~1_combout\);

-- Location: FF_X37_Y1_N3
\key_status[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[1][0]~q\);

-- Location: LCCOMB_X37_Y1_N0
\to_usb_and_temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~0_combout\ = (\from_usb[1]~input_o\ & ((\from_usb[0]~input_o\) # ((!\key_status[0][0]~q\)))) # (!\from_usb[1]~input_o\ & (!\key_status[1][0]~q\ & ((\from_usb[0]~input_o\) # (!\key_status[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[1]~input_o\,
	datab => \from_usb[0]~input_o\,
	datac => \key_status[0][0]~q\,
	datad => \key_status[1][0]~q\,
	combout => \to_usb_and_temp~0_combout\);

-- Location: LCCOMB_X38_Y1_N10
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\key_map_in[4]~input_o\ & (!\key_map_in[3]~input_o\ & (\key_map_in[2]~input_o\ & !\key_map_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[4]~input_o\,
	datab => \key_map_in[3]~input_o\,
	datac => \key_map_in[2]~input_o\,
	datad => \key_map_in[1]~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X37_Y1_N4
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\Decoder0~6_combout\ & !\key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~6_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X37_Y2_N12
\key_status[4][0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[4][0]~4_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~7_combout\ & (\pressing~input_o\)) # (!\Decoder0~7_combout\ & ((\key_status[4][0]~q\))))) # (!\Decoder1~0_combout\ & (((\key_status[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[4][0]~q\,
	datad => \Decoder0~7_combout\,
	combout => \key_status[4][0]~4_combout\);

-- Location: FF_X37_Y2_N13
\key_status[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[4][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[4][0]~q\);

-- Location: LCCOMB_X37_Y1_N22
\Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (\Decoder0~6_combout\ & \key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~6_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X36_Y2_N24
\key_status[5][0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[5][0]~5_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~8_combout\ & (\pressing~input_o\)) # (!\Decoder0~8_combout\ & ((\key_status[5][0]~q\))))) # (!\Decoder1~0_combout\ & (((\key_status[5][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[5][0]~q\,
	datad => \Decoder0~8_combout\,
	combout => \key_status[5][0]~5_combout\);

-- Location: FF_X36_Y2_N25
\key_status[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[5][0]~q\);

-- Location: IOIBUF_X31_Y0_N15
\from_usb[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(5),
	o => \from_usb[5]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\from_usb[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(4),
	o => \from_usb[4]~input_o\);

-- Location: LCCOMB_X36_Y2_N2
\to_usb_and_temp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~2_combout\ = (\key_status[4][0]~q\ & (\from_usb[4]~input_o\ & ((\from_usb[5]~input_o\) # (!\key_status[5][0]~q\)))) # (!\key_status[4][0]~q\ & (((\from_usb[5]~input_o\)) # (!\key_status[5][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[4][0]~q\,
	datab => \key_status[5][0]~q\,
	datac => \from_usb[5]~input_o\,
	datad => \from_usb[4]~input_o\,
	combout => \to_usb_and_temp~2_combout\);

-- Location: LCCOMB_X38_Y1_N16
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!\key_map_in[4]~input_o\ & (!\key_map_in[3]~input_o\ & (!\key_map_in[2]~input_o\ & \key_map_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[4]~input_o\,
	datab => \key_map_in[3]~input_o\,
	datac => \key_map_in[2]~input_o\,
	datad => \key_map_in[1]~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X37_Y3_N10
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\Decoder0~3_combout\ & !\key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~3_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X37_Y4_N12
\key_status[2][0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[2][0]~2_combout\ = (\Decoder0~4_combout\ & ((\Decoder1~0_combout\ & (\pressing~input_o\)) # (!\Decoder1~0_combout\ & ((\key_status[2][0]~q\))))) # (!\Decoder0~4_combout\ & (((\key_status[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~4_combout\,
	datac => \key_status[2][0]~q\,
	datad => \Decoder1~0_combout\,
	combout => \key_status[2][0]~2_combout\);

-- Location: FF_X37_Y4_N13
\key_status[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[2][0]~q\);

-- Location: IOIBUF_X29_Y0_N22
\from_usb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(3),
	o => \from_usb[3]~input_o\);

-- Location: LCCOMB_X38_Y3_N24
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\Decoder0~3_combout\ & \key_map_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~3_combout\,
	datad => \key_map_in[0]~input_o\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X37_Y4_N30
\key_status[3][0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[3][0]~3_combout\ = (\Decoder1~0_combout\ & ((\Decoder0~5_combout\ & (\pressing~input_o\)) # (!\Decoder0~5_combout\ & ((\key_status[3][0]~q\))))) # (!\Decoder1~0_combout\ & (((\key_status[3][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~0_combout\,
	datac => \key_status[3][0]~q\,
	datad => \Decoder0~5_combout\,
	combout => \key_status[3][0]~3_combout\);

-- Location: FF_X37_Y4_N31
\key_status[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[3][0]~q\);

-- Location: IOIBUF_X26_Y0_N1
\from_usb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_usb(2),
	o => \from_usb[2]~input_o\);

-- Location: LCCOMB_X37_Y4_N8
\to_usb_and_temp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~1_combout\ = (\key_status[2][0]~q\ & (\from_usb[2]~input_o\ & ((\from_usb[3]~input_o\) # (!\key_status[3][0]~q\)))) # (!\key_status[2][0]~q\ & ((\from_usb[3]~input_o\) # ((!\key_status[3][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[2][0]~q\,
	datab => \from_usb[3]~input_o\,
	datac => \key_status[3][0]~q\,
	datad => \from_usb[2]~input_o\,
	combout => \to_usb_and_temp~1_combout\);

-- Location: LCCOMB_X38_Y2_N28
\to_usb_and_temp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~4_combout\ = (\to_usb_and_temp~3_combout\ & (\to_usb_and_temp~0_combout\ & (\to_usb_and_temp~2_combout\ & \to_usb_and_temp~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~3_combout\,
	datab => \to_usb_and_temp~0_combout\,
	datac => \to_usb_and_temp~2_combout\,
	datad => \to_usb_and_temp~1_combout\,
	combout => \to_usb_and_temp~4_combout\);

-- Location: LCCOMB_X34_Y2_N4
\to_usb_and_temp~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~11_combout\ = (\to_usb_and_temp~10_combout\ & (\to_usb_and_temp~5_combout\ & \to_usb_and_temp~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \to_usb_and_temp~10_combout\,
	datac => \to_usb_and_temp~5_combout\,
	datad => \to_usb_and_temp~4_combout\,
	combout => \to_usb_and_temp~11_combout\);

-- Location: LCCOMB_X32_Y1_N8
\Decoder1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~1_combout\ = (!\key_map_in[6]~input_o\ & (\key_map_in[5]~input_o\ & !\key_map_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[6]~input_o\,
	datac => \key_map_in[5]~input_o\,
	datad => \key_map_in[7]~input_o\,
	combout => \Decoder1~1_combout\);

-- Location: LCCOMB_X35_Y3_N10
\key_status[9][1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[9][1]~28_combout\ = (\Decoder1~1_combout\ & ((\Decoder0~17_combout\ & (\pressing~input_o\)) # (!\Decoder0~17_combout\ & ((\key_status[9][1]~q\))))) # (!\Decoder1~1_combout\ & (((\key_status[9][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~1_combout\,
	datac => \key_status[9][1]~q\,
	datad => \Decoder0~17_combout\,
	combout => \key_status[9][1]~28_combout\);

-- Location: FF_X35_Y3_N11
\key_status[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[9][1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[9][1]~q\);

-- Location: LCCOMB_X35_Y3_N28
\key_status[8][1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[8][1]~29_combout\ = (\Decoder1~1_combout\ & ((\Decoder0~16_combout\ & (\pressing~input_o\)) # (!\Decoder0~16_combout\ & ((\key_status[8][1]~q\))))) # (!\Decoder1~1_combout\ & (((\key_status[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~1_combout\,
	datac => \key_status[8][1]~q\,
	datad => \Decoder0~16_combout\,
	combout => \key_status[8][1]~29_combout\);

-- Location: FF_X35_Y3_N29
\key_status[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[8][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[8][1]~q\);

-- Location: LCCOMB_X35_Y3_N14
\to_usb_and_temp~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~18_combout\ = (\key_status[9][1]~q\ & (\from_usb[9]~input_o\ & ((\from_usb[8]~input_o\) # (!\key_status[8][1]~q\)))) # (!\key_status[9][1]~q\ & (((\from_usb[8]~input_o\)) # (!\key_status[8][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[9][1]~q\,
	datab => \key_status[8][1]~q\,
	datac => \from_usb[8]~input_o\,
	datad => \from_usb[9]~input_o\,
	combout => \to_usb_and_temp~18_combout\);

-- Location: LCCOMB_X35_Y1_N10
\key_status[12][1]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[12][1]~33_combout\ = (\Decoder1~1_combout\ & ((\Decoder0~22_combout\ & (\pressing~input_o\)) # (!\Decoder0~22_combout\ & ((\key_status[12][1]~q\))))) # (!\Decoder1~1_combout\ & (((\key_status[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~1_combout\,
	datac => \key_status[12][1]~q\,
	datad => \Decoder0~22_combout\,
	combout => \key_status[12][1]~33_combout\);

-- Location: FF_X35_Y1_N11
\key_status[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[12][1]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[12][1]~q\);

-- Location: LCCOMB_X35_Y1_N28
\key_status[13][1]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[13][1]~32_combout\ = (\Decoder0~23_combout\ & ((\Decoder1~1_combout\ & ((\pressing~input_o\))) # (!\Decoder1~1_combout\ & (\key_status[13][1]~q\)))) # (!\Decoder0~23_combout\ & (((\key_status[13][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~23_combout\,
	datab => \Decoder1~1_combout\,
	datac => \key_status[13][1]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[13][1]~32_combout\);

-- Location: FF_X35_Y1_N29
\key_status[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[13][1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[13][1]~q\);

-- Location: LCCOMB_X34_Y1_N28
\to_usb_and_temp~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~20_combout\ = (\from_usb[13]~input_o\ & ((\from_usb[12]~input_o\) # ((!\key_status[12][1]~q\)))) # (!\from_usb[13]~input_o\ & (!\key_status[13][1]~q\ & ((\from_usb[12]~input_o\) # (!\key_status[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[13]~input_o\,
	datab => \from_usb[12]~input_o\,
	datac => \key_status[12][1]~q\,
	datad => \key_status[13][1]~q\,
	combout => \to_usb_and_temp~20_combout\);

-- Location: LCCOMB_X35_Y1_N4
\key_status[11][1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[11][1]~30_combout\ = (\Decoder0~20_combout\ & ((\Decoder1~1_combout\ & ((\pressing~input_o\))) # (!\Decoder1~1_combout\ & (\key_status[11][1]~q\)))) # (!\Decoder0~20_combout\ & (((\key_status[11][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~20_combout\,
	datab => \Decoder1~1_combout\,
	datac => \key_status[11][1]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[11][1]~30_combout\);

-- Location: FF_X35_Y1_N5
\key_status[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[11][1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[11][1]~q\);

-- Location: LCCOMB_X35_Y1_N22
\key_status[10][1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[10][1]~31_combout\ = (\Decoder1~1_combout\ & ((\Decoder0~19_combout\ & (\pressing~input_o\)) # (!\Decoder0~19_combout\ & ((\key_status[10][1]~q\))))) # (!\Decoder1~1_combout\ & (((\key_status[10][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~1_combout\,
	datac => \key_status[10][1]~q\,
	datad => \Decoder0~19_combout\,
	combout => \key_status[10][1]~31_combout\);

-- Location: FF_X35_Y1_N23
\key_status[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[10][1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[10][1]~q\);

-- Location: LCCOMB_X34_Y1_N22
\to_usb_and_temp~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~19_combout\ = (\key_status[11][1]~q\ & (\from_usb[11]~input_o\ & ((\from_usb[10]~input_o\) # (!\key_status[10][1]~q\)))) # (!\key_status[11][1]~q\ & (((\from_usb[10]~input_o\)) # (!\key_status[10][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[11][1]~q\,
	datab => \key_status[10][1]~q\,
	datac => \from_usb[11]~input_o\,
	datad => \from_usb[10]~input_o\,
	combout => \to_usb_and_temp~19_combout\);

-- Location: LCCOMB_X35_Y4_N16
\key_status[15][1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[15][1]~34_combout\ = (\Decoder1~1_combout\ & ((\Decoder0~26_combout\ & (\pressing~input_o\)) # (!\Decoder0~26_combout\ & ((\key_status[15][1]~q\))))) # (!\Decoder1~1_combout\ & (((\key_status[15][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~1_combout\,
	datac => \key_status[15][1]~q\,
	datad => \Decoder0~26_combout\,
	combout => \key_status[15][1]~34_combout\);

-- Location: FF_X35_Y4_N17
\key_status[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[15][1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[15][1]~q\);

-- Location: LCCOMB_X35_Y4_N6
\key_status[14][1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[14][1]~35_combout\ = (\Decoder1~1_combout\ & ((\Decoder0~25_combout\ & (\pressing~input_o\)) # (!\Decoder0~25_combout\ & ((\key_status[14][1]~q\))))) # (!\Decoder1~1_combout\ & (((\key_status[14][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~1_combout\,
	datac => \key_status[14][1]~q\,
	datad => \Decoder0~25_combout\,
	combout => \key_status[14][1]~35_combout\);

-- Location: FF_X35_Y4_N7
\key_status[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[14][1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[14][1]~q\);

-- Location: LCCOMB_X35_Y4_N4
\to_usb_and_temp~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~21_combout\ = (\from_usb[15]~input_o\ & (((\from_usb[14]~input_o\) # (!\key_status[14][1]~q\)))) # (!\from_usb[15]~input_o\ & (!\key_status[15][1]~q\ & ((\from_usb[14]~input_o\) # (!\key_status[14][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[15]~input_o\,
	datab => \key_status[15][1]~q\,
	datac => \from_usb[14]~input_o\,
	datad => \key_status[14][1]~q\,
	combout => \to_usb_and_temp~21_combout\);

-- Location: LCCOMB_X34_Y1_N14
\to_usb_and_temp~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~22_combout\ = (\to_usb_and_temp~18_combout\ & (\to_usb_and_temp~20_combout\ & (\to_usb_and_temp~19_combout\ & \to_usb_and_temp~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~18_combout\,
	datab => \to_usb_and_temp~20_combout\,
	datac => \to_usb_and_temp~19_combout\,
	datad => \to_usb_and_temp~21_combout\,
	combout => \to_usb_and_temp~22_combout\);

-- Location: LCCOMB_X36_Y4_N10
\key_status[16][1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[16][1]~27_combout\ = (\Decoder1~1_combout\ & ((\Decoder0~13_combout\ & (\pressing~input_o\)) # (!\Decoder0~13_combout\ & ((\key_status[16][1]~q\))))) # (!\Decoder1~1_combout\ & (((\key_status[16][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~1_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[16][1]~q\,
	datad => \Decoder0~13_combout\,
	combout => \key_status[16][1]~27_combout\);

-- Location: FF_X36_Y4_N11
\key_status[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[16][1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[16][1]~q\);

-- Location: LCCOMB_X36_Y4_N20
\key_status[17][1]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[17][1]~26_combout\ = (\Decoder1~1_combout\ & ((\Decoder0~14_combout\ & (\pressing~input_o\)) # (!\Decoder0~14_combout\ & ((\key_status[17][1]~q\))))) # (!\Decoder1~1_combout\ & (((\key_status[17][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~1_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[17][1]~q\,
	datad => \Decoder0~14_combout\,
	combout => \key_status[17][1]~26_combout\);

-- Location: FF_X36_Y4_N21
\key_status[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[17][1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[17][1]~q\);

-- Location: LCCOMB_X32_Y4_N18
\to_usb_and_temp~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~17_combout\ = (\from_usb[16]~input_o\ & (((\from_usb[17]~input_o\) # (!\key_status[17][1]~q\)))) # (!\from_usb[16]~input_o\ & (!\key_status[16][1]~q\ & ((\from_usb[17]~input_o\) # (!\key_status[17][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[16]~input_o\,
	datab => \key_status[16][1]~q\,
	datac => \from_usb[17]~input_o\,
	datad => \key_status[17][1]~q\,
	combout => \to_usb_and_temp~17_combout\);

-- Location: LCCOMB_X37_Y1_N26
\key_status[1][1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[1][1]~18_combout\ = (\Decoder1~1_combout\ & ((\Decoder0~2_combout\ & (\pressing~input_o\)) # (!\Decoder0~2_combout\ & ((\key_status[1][1]~q\))))) # (!\Decoder1~1_combout\ & (((\key_status[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~1_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[1][1]~q\,
	datad => \Decoder0~2_combout\,
	combout => \key_status[1][1]~18_combout\);

-- Location: FF_X37_Y1_N27
\key_status[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[1][1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[1][1]~q\);

-- Location: LCCOMB_X37_Y1_N28
\key_status[0][1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[0][1]~19_combout\ = (\Decoder1~1_combout\ & ((\Decoder0~1_combout\ & (\pressing~input_o\)) # (!\Decoder0~1_combout\ & ((\key_status[0][1]~q\))))) # (!\Decoder1~1_combout\ & (((\key_status[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~1_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[0][1]~q\,
	datad => \Decoder0~1_combout\,
	combout => \key_status[0][1]~19_combout\);

-- Location: FF_X37_Y1_N29
\key_status[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[0][1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[0][1]~q\);

-- Location: LCCOMB_X37_Y1_N14
\to_usb_and_temp~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~12_combout\ = (\key_status[1][1]~q\ & (\from_usb[1]~input_o\ & ((\from_usb[0]~input_o\) # (!\key_status[0][1]~q\)))) # (!\key_status[1][1]~q\ & ((\from_usb[0]~input_o\) # ((!\key_status[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[1][1]~q\,
	datab => \from_usb[0]~input_o\,
	datac => \from_usb[1]~input_o\,
	datad => \key_status[0][1]~q\,
	combout => \to_usb_and_temp~12_combout\);

-- Location: LCCOMB_X37_Y2_N26
\key_status[6][1]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[6][1]~25_combout\ = (\Decoder1~1_combout\ & ((\Decoder0~10_combout\ & (\pressing~input_o\)) # (!\Decoder0~10_combout\ & ((\key_status[6][1]~q\))))) # (!\Decoder1~1_combout\ & (((\key_status[6][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~1_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[6][1]~q\,
	datad => \Decoder0~10_combout\,
	combout => \key_status[6][1]~25_combout\);

-- Location: FF_X37_Y2_N27
\key_status[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[6][1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[6][1]~q\);

-- Location: LCCOMB_X37_Y2_N28
\key_status[7][1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[7][1]~24_combout\ = (\Decoder1~1_combout\ & ((\Decoder0~11_combout\ & (\pressing~input_o\)) # (!\Decoder0~11_combout\ & ((\key_status[7][1]~q\))))) # (!\Decoder1~1_combout\ & (((\key_status[7][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~1_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[7][1]~q\,
	datad => \Decoder0~11_combout\,
	combout => \key_status[7][1]~24_combout\);

-- Location: FF_X37_Y2_N29
\key_status[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[7][1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[7][1]~q\);

-- Location: LCCOMB_X37_Y2_N24
\to_usb_and_temp~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~15_combout\ = (\key_status[6][1]~q\ & (\from_usb[6]~input_o\ & ((\from_usb[7]~input_o\) # (!\key_status[7][1]~q\)))) # (!\key_status[6][1]~q\ & (((\from_usb[7]~input_o\)) # (!\key_status[7][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[6][1]~q\,
	datab => \key_status[7][1]~q\,
	datac => \from_usb[6]~input_o\,
	datad => \from_usb[7]~input_o\,
	combout => \to_usb_and_temp~15_combout\);

-- Location: LCCOMB_X36_Y2_N10
\key_status[4][1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[4][1]~23_combout\ = (\Decoder1~1_combout\ & ((\Decoder0~7_combout\ & ((\pressing~input_o\))) # (!\Decoder0~7_combout\ & (\key_status[4][1]~q\)))) # (!\Decoder1~1_combout\ & (((\key_status[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~1_combout\,
	datab => \Decoder0~7_combout\,
	datac => \key_status[4][1]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[4][1]~23_combout\);

-- Location: FF_X36_Y2_N11
\key_status[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[4][1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[4][1]~q\);

-- Location: LCCOMB_X36_Y2_N28
\key_status[5][1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[5][1]~22_combout\ = (\Decoder0~8_combout\ & ((\Decoder1~1_combout\ & ((\pressing~input_o\))) # (!\Decoder1~1_combout\ & (\key_status[5][1]~q\)))) # (!\Decoder0~8_combout\ & (((\key_status[5][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~8_combout\,
	datab => \Decoder1~1_combout\,
	datac => \key_status[5][1]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[5][1]~22_combout\);

-- Location: FF_X36_Y2_N29
\key_status[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[5][1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[5][1]~q\);

-- Location: LCCOMB_X36_Y2_N16
\to_usb_and_temp~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~14_combout\ = (\key_status[4][1]~q\ & (\from_usb[4]~input_o\ & ((\from_usb[5]~input_o\) # (!\key_status[5][1]~q\)))) # (!\key_status[4][1]~q\ & ((\from_usb[5]~input_o\) # ((!\key_status[5][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[4][1]~q\,
	datab => \from_usb[5]~input_o\,
	datac => \from_usb[4]~input_o\,
	datad => \key_status[5][1]~q\,
	combout => \to_usb_and_temp~14_combout\);

-- Location: LCCOMB_X36_Y4_N14
\key_status[3][1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[3][1]~20_combout\ = (\Decoder0~5_combout\ & ((\Decoder1~1_combout\ & (\pressing~input_o\)) # (!\Decoder1~1_combout\ & ((\key_status[3][1]~q\))))) # (!\Decoder0~5_combout\ & (((\key_status[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[3][1]~q\,
	datad => \Decoder1~1_combout\,
	combout => \key_status[3][1]~20_combout\);

-- Location: FF_X36_Y4_N15
\key_status[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[3][1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[3][1]~q\);

-- Location: LCCOMB_X37_Y4_N6
\key_status[2][1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[2][1]~21_combout\ = (\Decoder0~4_combout\ & ((\Decoder1~1_combout\ & (\pressing~input_o\)) # (!\Decoder1~1_combout\ & ((\key_status[2][1]~q\))))) # (!\Decoder0~4_combout\ & (((\key_status[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~4_combout\,
	datac => \key_status[2][1]~q\,
	datad => \Decoder1~1_combout\,
	combout => \key_status[2][1]~21_combout\);

-- Location: FF_X37_Y4_N7
\key_status[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[2][1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[2][1]~q\);

-- Location: LCCOMB_X37_Y4_N20
\to_usb_and_temp~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~13_combout\ = (\key_status[3][1]~q\ & (\from_usb[3]~input_o\ & ((\from_usb[2]~input_o\) # (!\key_status[2][1]~q\)))) # (!\key_status[3][1]~q\ & (((\from_usb[2]~input_o\) # (!\key_status[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[3][1]~q\,
	datab => \from_usb[3]~input_o\,
	datac => \key_status[2][1]~q\,
	datad => \from_usb[2]~input_o\,
	combout => \to_usb_and_temp~13_combout\);

-- Location: LCCOMB_X38_Y1_N8
\to_usb_and_temp~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~16_combout\ = (\to_usb_and_temp~12_combout\ & (\to_usb_and_temp~15_combout\ & (\to_usb_and_temp~14_combout\ & \to_usb_and_temp~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~12_combout\,
	datab => \to_usb_and_temp~15_combout\,
	datac => \to_usb_and_temp~14_combout\,
	datad => \to_usb_and_temp~13_combout\,
	combout => \to_usb_and_temp~16_combout\);

-- Location: LCCOMB_X31_Y1_N0
\to_usb_and_temp~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~23_combout\ = (\to_usb_and_temp~22_combout\ & (\to_usb_and_temp~17_combout\ & \to_usb_and_temp~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \to_usb_and_temp~22_combout\,
	datac => \to_usb_and_temp~17_combout\,
	datad => \to_usb_and_temp~16_combout\,
	combout => \to_usb_and_temp~23_combout\);

-- Location: LCCOMB_X32_Y1_N22
\Decoder1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~2_combout\ = (\key_map_in[6]~input_o\ & (!\key_map_in[5]~input_o\ & !\key_map_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[6]~input_o\,
	datac => \key_map_in[5]~input_o\,
	datad => \key_map_in[7]~input_o\,
	combout => \Decoder1~2_combout\);

-- Location: LCCOMB_X35_Y2_N30
\key_status[12][2]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[12][2]~51_combout\ = (\Decoder0~22_combout\ & ((\Decoder1~2_combout\ & ((\pressing~input_o\))) # (!\Decoder1~2_combout\ & (\key_status[12][2]~q\)))) # (!\Decoder0~22_combout\ & (((\key_status[12][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~22_combout\,
	datab => \Decoder1~2_combout\,
	datac => \key_status[12][2]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[12][2]~51_combout\);

-- Location: FF_X35_Y2_N31
\key_status[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[12][2]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[12][2]~q\);

-- Location: LCCOMB_X35_Y1_N16
\key_status[13][2]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[13][2]~50_combout\ = (\Decoder1~2_combout\ & ((\Decoder0~23_combout\ & ((\pressing~input_o\))) # (!\Decoder0~23_combout\ & (\key_status[13][2]~q\)))) # (!\Decoder1~2_combout\ & (((\key_status[13][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~2_combout\,
	datab => \Decoder0~23_combout\,
	datac => \key_status[13][2]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[13][2]~50_combout\);

-- Location: FF_X35_Y1_N17
\key_status[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[13][2]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[13][2]~q\);

-- Location: LCCOMB_X34_Y1_N2
\to_usb_and_temp~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~32_combout\ = (\from_usb[13]~input_o\ & ((\from_usb[12]~input_o\) # ((!\key_status[12][2]~q\)))) # (!\from_usb[13]~input_o\ & (!\key_status[13][2]~q\ & ((\from_usb[12]~input_o\) # (!\key_status[12][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[13]~input_o\,
	datab => \from_usb[12]~input_o\,
	datac => \key_status[12][2]~q\,
	datad => \key_status[13][2]~q\,
	combout => \to_usb_and_temp~32_combout\);

-- Location: LCCOMB_X37_Y3_N20
\key_status[9][2]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[9][2]~46_combout\ = (\Decoder1~2_combout\ & ((\Decoder0~17_combout\ & (\pressing~input_o\)) # (!\Decoder0~17_combout\ & ((\key_status[9][2]~q\))))) # (!\Decoder1~2_combout\ & (((\key_status[9][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~2_combout\,
	datac => \key_status[9][2]~q\,
	datad => \Decoder0~17_combout\,
	combout => \key_status[9][2]~46_combout\);

-- Location: FF_X37_Y3_N21
\key_status[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[9][2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[9][2]~q\);

-- Location: LCCOMB_X36_Y3_N28
\key_status[8][2]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[8][2]~47_combout\ = (\Decoder0~16_combout\ & ((\Decoder1~2_combout\ & (\pressing~input_o\)) # (!\Decoder1~2_combout\ & ((\key_status[8][2]~q\))))) # (!\Decoder0~16_combout\ & (((\key_status[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~16_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[8][2]~q\,
	datad => \Decoder1~2_combout\,
	combout => \key_status[8][2]~47_combout\);

-- Location: FF_X36_Y3_N29
\key_status[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[8][2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[8][2]~q\);

-- Location: LCCOMB_X36_Y3_N10
\to_usb_and_temp~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~30_combout\ = (\key_status[9][2]~q\ & (\from_usb[9]~input_o\ & ((\from_usb[8]~input_o\) # (!\key_status[8][2]~q\)))) # (!\key_status[9][2]~q\ & ((\from_usb[8]~input_o\) # ((!\key_status[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[9][2]~q\,
	datab => \from_usb[8]~input_o\,
	datac => \from_usb[9]~input_o\,
	datad => \key_status[8][2]~q\,
	combout => \to_usb_and_temp~30_combout\);

-- Location: LCCOMB_X36_Y4_N18
\key_status[14][2]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[14][2]~53_combout\ = (\Decoder1~2_combout\ & ((\Decoder0~25_combout\ & (\pressing~input_o\)) # (!\Decoder0~25_combout\ & ((\key_status[14][2]~q\))))) # (!\Decoder1~2_combout\ & (((\key_status[14][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~2_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[14][2]~q\,
	datad => \Decoder0~25_combout\,
	combout => \key_status[14][2]~53_combout\);

-- Location: FF_X36_Y4_N19
\key_status[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[14][2]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[14][2]~q\);

-- Location: LCCOMB_X36_Y4_N4
\key_status[15][2]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[15][2]~52_combout\ = (\Decoder1~2_combout\ & ((\Decoder0~26_combout\ & (\pressing~input_o\)) # (!\Decoder0~26_combout\ & ((\key_status[15][2]~q\))))) # (!\Decoder1~2_combout\ & (((\key_status[15][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~2_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[15][2]~q\,
	datad => \Decoder0~26_combout\,
	combout => \key_status[15][2]~52_combout\);

-- Location: FF_X36_Y4_N5
\key_status[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[15][2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[15][2]~q\);

-- Location: LCCOMB_X35_Y4_N30
\to_usb_and_temp~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~33_combout\ = (\from_usb[15]~input_o\ & (((\from_usb[14]~input_o\)) # (!\key_status[14][2]~q\))) # (!\from_usb[15]~input_o\ & (!\key_status[15][2]~q\ & ((\from_usb[14]~input_o\) # (!\key_status[14][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[15]~input_o\,
	datab => \key_status[14][2]~q\,
	datac => \from_usb[14]~input_o\,
	datad => \key_status[15][2]~q\,
	combout => \to_usb_and_temp~33_combout\);

-- Location: LCCOMB_X35_Y1_N20
\key_status[11][2]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[11][2]~48_combout\ = (\Decoder1~2_combout\ & ((\Decoder0~20_combout\ & ((\pressing~input_o\))) # (!\Decoder0~20_combout\ & (\key_status[11][2]~q\)))) # (!\Decoder1~2_combout\ & (((\key_status[11][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~2_combout\,
	datab => \Decoder0~20_combout\,
	datac => \key_status[11][2]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[11][2]~48_combout\);

-- Location: FF_X35_Y1_N21
\key_status[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[11][2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[11][2]~q\);

-- Location: LCCOMB_X35_Y1_N26
\key_status[10][2]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[10][2]~49_combout\ = (\Decoder1~2_combout\ & ((\Decoder0~19_combout\ & ((\pressing~input_o\))) # (!\Decoder0~19_combout\ & (\key_status[10][2]~q\)))) # (!\Decoder1~2_combout\ & (((\key_status[10][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~2_combout\,
	datab => \Decoder0~19_combout\,
	datac => \key_status[10][2]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[10][2]~49_combout\);

-- Location: FF_X35_Y1_N27
\key_status[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[10][2]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[10][2]~q\);

-- Location: LCCOMB_X34_Y1_N4
\to_usb_and_temp~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~31_combout\ = (\key_status[11][2]~q\ & (\from_usb[11]~input_o\ & ((\from_usb[10]~input_o\) # (!\key_status[10][2]~q\)))) # (!\key_status[11][2]~q\ & (((\from_usb[10]~input_o\)) # (!\key_status[10][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[11][2]~q\,
	datab => \key_status[10][2]~q\,
	datac => \from_usb[11]~input_o\,
	datad => \from_usb[10]~input_o\,
	combout => \to_usb_and_temp~31_combout\);

-- Location: LCCOMB_X34_Y4_N16
\to_usb_and_temp~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~34_combout\ = (\to_usb_and_temp~32_combout\ & (\to_usb_and_temp~30_combout\ & (\to_usb_and_temp~33_combout\ & \to_usb_and_temp~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~32_combout\,
	datab => \to_usb_and_temp~30_combout\,
	datac => \to_usb_and_temp~33_combout\,
	datad => \to_usb_and_temp~31_combout\,
	combout => \to_usb_and_temp~34_combout\);

-- Location: LCCOMB_X36_Y4_N26
\key_status[16][2]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[16][2]~45_combout\ = (\Decoder1~2_combout\ & ((\Decoder0~13_combout\ & (\pressing~input_o\)) # (!\Decoder0~13_combout\ & ((\key_status[16][2]~q\))))) # (!\Decoder1~2_combout\ & (((\key_status[16][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~2_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[16][2]~q\,
	datad => \Decoder0~13_combout\,
	combout => \key_status[16][2]~45_combout\);

-- Location: FF_X36_Y4_N27
\key_status[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[16][2]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[16][2]~q\);

-- Location: LCCOMB_X36_Y4_N28
\key_status[17][2]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[17][2]~44_combout\ = (\Decoder1~2_combout\ & ((\Decoder0~14_combout\ & (\pressing~input_o\)) # (!\Decoder0~14_combout\ & ((\key_status[17][2]~q\))))) # (!\Decoder1~2_combout\ & (((\key_status[17][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~2_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[17][2]~q\,
	datad => \Decoder0~14_combout\,
	combout => \key_status[17][2]~44_combout\);

-- Location: FF_X36_Y4_N29
\key_status[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[17][2]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[17][2]~q\);

-- Location: LCCOMB_X32_Y4_N20
\to_usb_and_temp~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~29_combout\ = (\from_usb[16]~input_o\ & (((\from_usb[17]~input_o\) # (!\key_status[17][2]~q\)))) # (!\from_usb[16]~input_o\ & (!\key_status[16][2]~q\ & ((\from_usb[17]~input_o\) # (!\key_status[17][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[16]~input_o\,
	datab => \key_status[16][2]~q\,
	datac => \from_usb[17]~input_o\,
	datad => \key_status[17][2]~q\,
	combout => \to_usb_and_temp~29_combout\);

-- Location: LCCOMB_X37_Y1_N30
\key_status[0][2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[0][2]~37_combout\ = (\Decoder0~1_combout\ & ((\Decoder1~2_combout\ & (\pressing~input_o\)) # (!\Decoder1~2_combout\ & ((\key_status[0][2]~q\))))) # (!\Decoder0~1_combout\ & (((\key_status[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~1_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[0][2]~q\,
	datad => \Decoder1~2_combout\,
	combout => \key_status[0][2]~37_combout\);

-- Location: FF_X37_Y1_N31
\key_status[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[0][2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[0][2]~q\);

-- Location: LCCOMB_X37_Y1_N12
\key_status[1][2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[1][2]~36_combout\ = (\Decoder0~2_combout\ & ((\Decoder1~2_combout\ & (\pressing~input_o\)) # (!\Decoder1~2_combout\ & ((\key_status[1][2]~q\))))) # (!\Decoder0~2_combout\ & (((\key_status[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[1][2]~q\,
	datad => \Decoder1~2_combout\,
	combout => \key_status[1][2]~36_combout\);

-- Location: FF_X37_Y1_N13
\key_status[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[1][2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[1][2]~q\);

-- Location: LCCOMB_X37_Y1_N20
\to_usb_and_temp~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~24_combout\ = (\from_usb[1]~input_o\ & ((\from_usb[0]~input_o\) # ((!\key_status[0][2]~q\)))) # (!\from_usb[1]~input_o\ & (!\key_status[1][2]~q\ & ((\from_usb[0]~input_o\) # (!\key_status[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[1]~input_o\,
	datab => \from_usb[0]~input_o\,
	datac => \key_status[0][2]~q\,
	datad => \key_status[1][2]~q\,
	combout => \to_usb_and_temp~24_combout\);

-- Location: LCCOMB_X36_Y2_N30
\key_status[5][2]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[5][2]~40_combout\ = (\Decoder0~8_combout\ & ((\Decoder1~2_combout\ & ((\pressing~input_o\))) # (!\Decoder1~2_combout\ & (\key_status[5][2]~q\)))) # (!\Decoder0~8_combout\ & (((\key_status[5][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~8_combout\,
	datab => \Decoder1~2_combout\,
	datac => \key_status[5][2]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[5][2]~40_combout\);

-- Location: FF_X36_Y2_N31
\key_status[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[5][2]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[5][2]~q\);

-- Location: LCCOMB_X36_Y2_N20
\key_status[4][2]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[4][2]~41_combout\ = (\Decoder0~7_combout\ & ((\Decoder1~2_combout\ & ((\pressing~input_o\))) # (!\Decoder1~2_combout\ & (\key_status[4][2]~q\)))) # (!\Decoder0~7_combout\ & (((\key_status[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~7_combout\,
	datab => \Decoder1~2_combout\,
	datac => \key_status[4][2]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[4][2]~41_combout\);

-- Location: FF_X36_Y2_N21
\key_status[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[4][2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[4][2]~q\);

-- Location: LCCOMB_X36_Y2_N6
\to_usb_and_temp~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~26_combout\ = (\key_status[5][2]~q\ & (\from_usb[5]~input_o\ & ((\from_usb[4]~input_o\) # (!\key_status[4][2]~q\)))) # (!\key_status[5][2]~q\ & (((\from_usb[4]~input_o\) # (!\key_status[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[5][2]~q\,
	datab => \from_usb[5]~input_o\,
	datac => \from_usb[4]~input_o\,
	datad => \key_status[4][2]~q\,
	combout => \to_usb_and_temp~26_combout\);

-- Location: LCCOMB_X35_Y2_N10
\key_status[6][2]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[6][2]~43_combout\ = (\Decoder0~10_combout\ & ((\Decoder1~2_combout\ & ((\pressing~input_o\))) # (!\Decoder1~2_combout\ & (\key_status[6][2]~q\)))) # (!\Decoder0~10_combout\ & (((\key_status[6][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~10_combout\,
	datab => \Decoder1~2_combout\,
	datac => \key_status[6][2]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[6][2]~43_combout\);

-- Location: FF_X35_Y2_N11
\key_status[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[6][2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[6][2]~q\);

-- Location: LCCOMB_X35_Y2_N24
\key_status[7][2]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[7][2]~42_combout\ = (\Decoder0~11_combout\ & ((\Decoder1~2_combout\ & ((\pressing~input_o\))) # (!\Decoder1~2_combout\ & (\key_status[7][2]~q\)))) # (!\Decoder0~11_combout\ & (((\key_status[7][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~11_combout\,
	datab => \Decoder1~2_combout\,
	datac => \key_status[7][2]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[7][2]~42_combout\);

-- Location: FF_X35_Y2_N25
\key_status[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[7][2]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[7][2]~q\);

-- Location: LCCOMB_X35_Y2_N0
\to_usb_and_temp~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~27_combout\ = (\key_status[6][2]~q\ & (\from_usb[6]~input_o\ & ((\from_usb[7]~input_o\) # (!\key_status[7][2]~q\)))) # (!\key_status[6][2]~q\ & (((\from_usb[7]~input_o\) # (!\key_status[7][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[6][2]~q\,
	datab => \from_usb[6]~input_o\,
	datac => \from_usb[7]~input_o\,
	datad => \key_status[7][2]~q\,
	combout => \to_usb_and_temp~27_combout\);

-- Location: LCCOMB_X37_Y4_N16
\key_status[2][2]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[2][2]~39_combout\ = (\Decoder0~4_combout\ & ((\Decoder1~2_combout\ & (\pressing~input_o\)) # (!\Decoder1~2_combout\ & ((\key_status[2][2]~q\))))) # (!\Decoder0~4_combout\ & (((\key_status[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~4_combout\,
	datac => \key_status[2][2]~q\,
	datad => \Decoder1~2_combout\,
	combout => \key_status[2][2]~39_combout\);

-- Location: FF_X37_Y4_N17
\key_status[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[2][2]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[2][2]~q\);

-- Location: LCCOMB_X37_Y4_N14
\key_status[3][2]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[3][2]~38_combout\ = (\Decoder1~2_combout\ & ((\Decoder0~5_combout\ & (\pressing~input_o\)) # (!\Decoder0~5_combout\ & ((\key_status[3][2]~q\))))) # (!\Decoder1~2_combout\ & (((\key_status[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~2_combout\,
	datac => \key_status[3][2]~q\,
	datad => \Decoder0~5_combout\,
	combout => \key_status[3][2]~38_combout\);

-- Location: FF_X37_Y4_N15
\key_status[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[3][2]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[3][2]~q\);

-- Location: LCCOMB_X37_Y4_N18
\to_usb_and_temp~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~25_combout\ = (\from_usb[2]~input_o\ & (((\from_usb[3]~input_o\) # (!\key_status[3][2]~q\)))) # (!\from_usb[2]~input_o\ & (!\key_status[2][2]~q\ & ((\from_usb[3]~input_o\) # (!\key_status[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[2]~input_o\,
	datab => \key_status[2][2]~q\,
	datac => \key_status[3][2]~q\,
	datad => \from_usb[3]~input_o\,
	combout => \to_usb_and_temp~25_combout\);

-- Location: LCCOMB_X38_Y4_N24
\to_usb_and_temp~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~28_combout\ = (\to_usb_and_temp~24_combout\ & (\to_usb_and_temp~26_combout\ & (\to_usb_and_temp~27_combout\ & \to_usb_and_temp~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~24_combout\,
	datab => \to_usb_and_temp~26_combout\,
	datac => \to_usb_and_temp~27_combout\,
	datad => \to_usb_and_temp~25_combout\,
	combout => \to_usb_and_temp~28_combout\);

-- Location: LCCOMB_X31_Y4_N4
\to_usb_and_temp~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~35_combout\ = (\to_usb_and_temp~34_combout\ & (\to_usb_and_temp~29_combout\ & \to_usb_and_temp~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~34_combout\,
	datac => \to_usb_and_temp~29_combout\,
	datad => \to_usb_and_temp~28_combout\,
	combout => \to_usb_and_temp~35_combout\);

-- Location: LCCOMB_X32_Y1_N24
\Decoder1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~3_combout\ = (\key_map_in[6]~input_o\ & (\key_map_in[5]~input_o\ & !\key_map_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[6]~input_o\,
	datac => \key_map_in[5]~input_o\,
	datad => \key_map_in[7]~input_o\,
	combout => \Decoder1~3_combout\);

-- Location: LCCOMB_X35_Y4_N2
\key_status[16][3]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[16][3]~63_combout\ = (\Decoder1~3_combout\ & ((\Decoder0~13_combout\ & (\pressing~input_o\)) # (!\Decoder0~13_combout\ & ((\key_status[16][3]~q\))))) # (!\Decoder1~3_combout\ & (((\key_status[16][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~3_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[16][3]~q\,
	datad => \Decoder0~13_combout\,
	combout => \key_status[16][3]~63_combout\);

-- Location: FF_X35_Y4_N3
\key_status[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[16][3]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[16][3]~q\);

-- Location: LCCOMB_X35_Y4_N8
\key_status[17][3]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[17][3]~62_combout\ = (\Decoder1~3_combout\ & ((\Decoder0~14_combout\ & (\pressing~input_o\)) # (!\Decoder0~14_combout\ & ((\key_status[17][3]~q\))))) # (!\Decoder1~3_combout\ & (((\key_status[17][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~3_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[17][3]~q\,
	datad => \Decoder0~14_combout\,
	combout => \key_status[17][3]~62_combout\);

-- Location: FF_X35_Y4_N9
\key_status[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[17][3]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[17][3]~q\);

-- Location: LCCOMB_X32_Y4_N2
\to_usb_and_temp~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~41_combout\ = (\from_usb[16]~input_o\ & (((\from_usb[17]~input_o\) # (!\key_status[17][3]~q\)))) # (!\from_usb[16]~input_o\ & (!\key_status[16][3]~q\ & ((\from_usb[17]~input_o\) # (!\key_status[17][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[16]~input_o\,
	datab => \key_status[16][3]~q\,
	datac => \from_usb[17]~input_o\,
	datad => \key_status[17][3]~q\,
	combout => \to_usb_and_temp~41_combout\);

-- Location: LCCOMB_X35_Y1_N6
\key_status[11][3]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[11][3]~66_combout\ = (\Decoder1~3_combout\ & ((\Decoder0~20_combout\ & ((\pressing~input_o\))) # (!\Decoder0~20_combout\ & (\key_status[11][3]~q\)))) # (!\Decoder1~3_combout\ & (((\key_status[11][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~3_combout\,
	datab => \Decoder0~20_combout\,
	datac => \key_status[11][3]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[11][3]~66_combout\);

-- Location: FF_X35_Y1_N7
\key_status[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[11][3]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[11][3]~q\);

-- Location: LCCOMB_X35_Y1_N8
\key_status[10][3]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[10][3]~67_combout\ = (\Decoder1~3_combout\ & ((\Decoder0~19_combout\ & ((\pressing~input_o\))) # (!\Decoder0~19_combout\ & (\key_status[10][3]~q\)))) # (!\Decoder1~3_combout\ & (((\key_status[10][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~3_combout\,
	datab => \Decoder0~19_combout\,
	datac => \key_status[10][3]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[10][3]~67_combout\);

-- Location: FF_X35_Y1_N9
\key_status[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[10][3]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[10][3]~q\);

-- Location: LCCOMB_X32_Y1_N4
\to_usb_and_temp~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~43_combout\ = (\from_usb[10]~input_o\ & (((\from_usb[11]~input_o\)) # (!\key_status[11][3]~q\))) # (!\from_usb[10]~input_o\ & (!\key_status[10][3]~q\ & ((\from_usb[11]~input_o\) # (!\key_status[11][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[10]~input_o\,
	datab => \key_status[11][3]~q\,
	datac => \from_usb[11]~input_o\,
	datad => \key_status[10][3]~q\,
	combout => \to_usb_and_temp~43_combout\);

-- Location: LCCOMB_X35_Y1_N14
\key_status[13][3]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[13][3]~68_combout\ = (\Decoder1~3_combout\ & ((\Decoder0~23_combout\ & ((\pressing~input_o\))) # (!\Decoder0~23_combout\ & (\key_status[13][3]~q\)))) # (!\Decoder1~3_combout\ & (((\key_status[13][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~3_combout\,
	datab => \Decoder0~23_combout\,
	datac => \key_status[13][3]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[13][3]~68_combout\);

-- Location: FF_X35_Y1_N15
\key_status[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[13][3]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[13][3]~q\);

-- Location: LCCOMB_X35_Y1_N24
\key_status[12][3]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[12][3]~69_combout\ = (\Decoder1~3_combout\ & ((\Decoder0~22_combout\ & ((\pressing~input_o\))) # (!\Decoder0~22_combout\ & (\key_status[12][3]~q\)))) # (!\Decoder1~3_combout\ & (((\key_status[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~3_combout\,
	datab => \Decoder0~22_combout\,
	datac => \key_status[12][3]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[12][3]~69_combout\);

-- Location: FF_X35_Y1_N25
\key_status[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[12][3]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[12][3]~q\);

-- Location: LCCOMB_X34_Y1_N16
\to_usb_and_temp~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~44_combout\ = (\from_usb[13]~input_o\ & ((\from_usb[12]~input_o\) # ((!\key_status[12][3]~q\)))) # (!\from_usb[13]~input_o\ & (!\key_status[13][3]~q\ & ((\from_usb[12]~input_o\) # (!\key_status[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[13]~input_o\,
	datab => \from_usb[12]~input_o\,
	datac => \key_status[13][3]~q\,
	datad => \key_status[12][3]~q\,
	combout => \to_usb_and_temp~44_combout\);

-- Location: LCCOMB_X36_Y3_N22
\key_status[8][3]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[8][3]~65_combout\ = (\Decoder0~16_combout\ & ((\Decoder1~3_combout\ & (\pressing~input_o\)) # (!\Decoder1~3_combout\ & ((\key_status[8][3]~q\))))) # (!\Decoder0~16_combout\ & (((\key_status[8][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~16_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[8][3]~q\,
	datad => \Decoder1~3_combout\,
	combout => \key_status[8][3]~65_combout\);

-- Location: FF_X36_Y3_N23
\key_status[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[8][3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[8][3]~q\);

-- Location: LCCOMB_X36_Y3_N0
\key_status[9][3]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[9][3]~64_combout\ = (\Decoder1~3_combout\ & ((\Decoder0~17_combout\ & ((\pressing~input_o\))) # (!\Decoder0~17_combout\ & (\key_status[9][3]~q\)))) # (!\Decoder1~3_combout\ & (((\key_status[9][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~3_combout\,
	datab => \Decoder0~17_combout\,
	datac => \key_status[9][3]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[9][3]~64_combout\);

-- Location: FF_X36_Y3_N1
\key_status[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[9][3]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[9][3]~q\);

-- Location: LCCOMB_X35_Y3_N0
\to_usb_and_temp~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~42_combout\ = (\key_status[8][3]~q\ & (\from_usb[8]~input_o\ & ((\from_usb[9]~input_o\) # (!\key_status[9][3]~q\)))) # (!\key_status[8][3]~q\ & (((\from_usb[9]~input_o\)) # (!\key_status[9][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[8][3]~q\,
	datab => \key_status[9][3]~q\,
	datac => \from_usb[8]~input_o\,
	datad => \from_usb[9]~input_o\,
	combout => \to_usb_and_temp~42_combout\);

-- Location: LCCOMB_X35_Y4_N0
\key_status[15][3]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[15][3]~70_combout\ = (\Decoder1~3_combout\ & ((\Decoder0~26_combout\ & (\pressing~input_o\)) # (!\Decoder0~26_combout\ & ((\key_status[15][3]~q\))))) # (!\Decoder1~3_combout\ & (((\key_status[15][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~3_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[15][3]~q\,
	datad => \Decoder0~26_combout\,
	combout => \key_status[15][3]~70_combout\);

-- Location: FF_X35_Y4_N1
\key_status[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[15][3]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[15][3]~q\);

-- Location: LCCOMB_X35_Y4_N26
\key_status[14][3]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[14][3]~71_combout\ = (\Decoder1~3_combout\ & ((\Decoder0~25_combout\ & (\pressing~input_o\)) # (!\Decoder0~25_combout\ & ((\key_status[14][3]~q\))))) # (!\Decoder1~3_combout\ & (((\key_status[14][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~3_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[14][3]~q\,
	datad => \Decoder0~25_combout\,
	combout => \key_status[14][3]~71_combout\);

-- Location: FF_X35_Y4_N27
\key_status[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[14][3]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[14][3]~q\);

-- Location: LCCOMB_X35_Y4_N24
\to_usb_and_temp~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~45_combout\ = (\from_usb[14]~input_o\ & (((\from_usb[15]~input_o\)) # (!\key_status[15][3]~q\))) # (!\from_usb[14]~input_o\ & (!\key_status[14][3]~q\ & ((\from_usb[15]~input_o\) # (!\key_status[15][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[14]~input_o\,
	datab => \key_status[15][3]~q\,
	datac => \key_status[14][3]~q\,
	datad => \from_usb[15]~input_o\,
	combout => \to_usb_and_temp~45_combout\);

-- Location: LCCOMB_X34_Y4_N18
\to_usb_and_temp~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~46_combout\ = (\to_usb_and_temp~43_combout\ & (\to_usb_and_temp~44_combout\ & (\to_usb_and_temp~42_combout\ & \to_usb_and_temp~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~43_combout\,
	datab => \to_usb_and_temp~44_combout\,
	datac => \to_usb_and_temp~42_combout\,
	datad => \to_usb_and_temp~45_combout\,
	combout => \to_usb_and_temp~46_combout\);

-- Location: LCCOMB_X36_Y2_N22
\key_status[4][3]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[4][3]~59_combout\ = (\Decoder1~3_combout\ & ((\Decoder0~7_combout\ & ((\pressing~input_o\))) # (!\Decoder0~7_combout\ & (\key_status[4][3]~q\)))) # (!\Decoder1~3_combout\ & (((\key_status[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~3_combout\,
	datab => \Decoder0~7_combout\,
	datac => \key_status[4][3]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[4][3]~59_combout\);

-- Location: FF_X36_Y2_N23
\key_status[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[4][3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[4][3]~q\);

-- Location: LCCOMB_X36_Y2_N4
\key_status[5][3]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[5][3]~58_combout\ = (\Decoder0~8_combout\ & ((\Decoder1~3_combout\ & ((\pressing~input_o\))) # (!\Decoder1~3_combout\ & (\key_status[5][3]~q\)))) # (!\Decoder0~8_combout\ & (((\key_status[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~8_combout\,
	datab => \Decoder1~3_combout\,
	datac => \key_status[5][3]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[5][3]~58_combout\);

-- Location: FF_X36_Y2_N5
\key_status[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[5][3]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[5][3]~q\);

-- Location: LCCOMB_X36_Y2_N8
\to_usb_and_temp~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~38_combout\ = (\key_status[4][3]~q\ & (\from_usb[4]~input_o\ & ((\from_usb[5]~input_o\) # (!\key_status[5][3]~q\)))) # (!\key_status[4][3]~q\ & ((\from_usb[5]~input_o\) # ((!\key_status[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[4][3]~q\,
	datab => \from_usb[5]~input_o\,
	datac => \key_status[5][3]~q\,
	datad => \from_usb[4]~input_o\,
	combout => \to_usb_and_temp~38_combout\);

-- Location: LCCOMB_X35_Y2_N8
\key_status[7][3]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[7][3]~60_combout\ = (\Decoder0~11_combout\ & ((\Decoder1~3_combout\ & ((\pressing~input_o\))) # (!\Decoder1~3_combout\ & (\key_status[7][3]~q\)))) # (!\Decoder0~11_combout\ & (((\key_status[7][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~11_combout\,
	datab => \Decoder1~3_combout\,
	datac => \key_status[7][3]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[7][3]~60_combout\);

-- Location: FF_X35_Y2_N9
\key_status[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[7][3]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[7][3]~q\);

-- Location: LCCOMB_X35_Y2_N18
\key_status[6][3]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[6][3]~61_combout\ = (\Decoder0~10_combout\ & ((\Decoder1~3_combout\ & ((\pressing~input_o\))) # (!\Decoder1~3_combout\ & (\key_status[6][3]~q\)))) # (!\Decoder0~10_combout\ & (((\key_status[6][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~10_combout\,
	datab => \Decoder1~3_combout\,
	datac => \key_status[6][3]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[6][3]~61_combout\);

-- Location: FF_X35_Y2_N19
\key_status[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[6][3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[6][3]~q\);

-- Location: LCCOMB_X35_Y2_N12
\to_usb_and_temp~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~39_combout\ = (\from_usb[7]~input_o\ & (((\from_usb[6]~input_o\) # (!\key_status[6][3]~q\)))) # (!\from_usb[7]~input_o\ & (!\key_status[7][3]~q\ & ((\from_usb[6]~input_o\) # (!\key_status[6][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[7]~input_o\,
	datab => \key_status[7][3]~q\,
	datac => \from_usb[6]~input_o\,
	datad => \key_status[6][3]~q\,
	combout => \to_usb_and_temp~39_combout\);

-- Location: LCCOMB_X37_Y4_N10
\key_status[2][3]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[2][3]~57_combout\ = (\Decoder0~4_combout\ & ((\Decoder1~3_combout\ & (\pressing~input_o\)) # (!\Decoder1~3_combout\ & ((\key_status[2][3]~q\))))) # (!\Decoder0~4_combout\ & (((\key_status[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~4_combout\,
	datac => \key_status[2][3]~q\,
	datad => \Decoder1~3_combout\,
	combout => \key_status[2][3]~57_combout\);

-- Location: FF_X37_Y4_N11
\key_status[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[2][3]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[2][3]~q\);

-- Location: LCCOMB_X37_Y4_N28
\key_status[3][3]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[3][3]~56_combout\ = (\Decoder1~3_combout\ & ((\Decoder0~5_combout\ & (\pressing~input_o\)) # (!\Decoder0~5_combout\ & ((\key_status[3][3]~q\))))) # (!\Decoder1~3_combout\ & (((\key_status[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~3_combout\,
	datac => \key_status[3][3]~q\,
	datad => \Decoder0~5_combout\,
	combout => \key_status[3][3]~56_combout\);

-- Location: FF_X37_Y4_N29
\key_status[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[3][3]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[3][3]~q\);

-- Location: LCCOMB_X37_Y4_N0
\to_usb_and_temp~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~37_combout\ = (\key_status[2][3]~q\ & (\from_usb[2]~input_o\ & ((\from_usb[3]~input_o\) # (!\key_status[3][3]~q\)))) # (!\key_status[2][3]~q\ & (((\from_usb[3]~input_o\)) # (!\key_status[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[2][3]~q\,
	datab => \key_status[3][3]~q\,
	datac => \from_usb[2]~input_o\,
	datad => \from_usb[3]~input_o\,
	combout => \to_usb_and_temp~37_combout\);

-- Location: LCCOMB_X37_Y1_N10
\key_status[1][3]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[1][3]~54_combout\ = (\Decoder1~3_combout\ & ((\Decoder0~2_combout\ & (\pressing~input_o\)) # (!\Decoder0~2_combout\ & ((\key_status[1][3]~q\))))) # (!\Decoder1~3_combout\ & (((\key_status[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~3_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[1][3]~q\,
	datad => \Decoder0~2_combout\,
	combout => \key_status[1][3]~54_combout\);

-- Location: FF_X37_Y1_N11
\key_status[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[1][3]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[1][3]~q\);

-- Location: LCCOMB_X37_Y1_N16
\key_status[0][3]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[0][3]~55_combout\ = (\Decoder1~3_combout\ & ((\Decoder0~1_combout\ & (\pressing~input_o\)) # (!\Decoder0~1_combout\ & ((\key_status[0][3]~q\))))) # (!\Decoder1~3_combout\ & (((\key_status[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~3_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[0][3]~q\,
	datad => \Decoder0~1_combout\,
	combout => \key_status[0][3]~55_combout\);

-- Location: FF_X37_Y1_N17
\key_status[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[0][3]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[0][3]~q\);

-- Location: LCCOMB_X37_Y1_N6
\to_usb_and_temp~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~36_combout\ = (\key_status[1][3]~q\ & (\from_usb[1]~input_o\ & ((\from_usb[0]~input_o\) # (!\key_status[0][3]~q\)))) # (!\key_status[1][3]~q\ & ((\from_usb[0]~input_o\) # ((!\key_status[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[1][3]~q\,
	datab => \from_usb[0]~input_o\,
	datac => \from_usb[1]~input_o\,
	datad => \key_status[0][3]~q\,
	combout => \to_usb_and_temp~36_combout\);

-- Location: LCCOMB_X36_Y4_N0
\to_usb_and_temp~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~40_combout\ = (\to_usb_and_temp~38_combout\ & (\to_usb_and_temp~39_combout\ & (\to_usb_and_temp~37_combout\ & \to_usb_and_temp~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~38_combout\,
	datab => \to_usb_and_temp~39_combout\,
	datac => \to_usb_and_temp~37_combout\,
	datad => \to_usb_and_temp~36_combout\,
	combout => \to_usb_and_temp~40_combout\);

-- Location: LCCOMB_X31_Y4_N22
\to_usb_and_temp~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~47_combout\ = (\to_usb_and_temp~41_combout\ & (\to_usb_and_temp~46_combout\ & \to_usb_and_temp~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~41_combout\,
	datac => \to_usb_and_temp~46_combout\,
	datad => \to_usb_and_temp~40_combout\,
	combout => \to_usb_and_temp~47_combout\);

-- Location: LCCOMB_X32_Y1_N26
\Decoder1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~4_combout\ = (!\key_map_in[6]~input_o\ & (!\key_map_in[5]~input_o\ & \key_map_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[6]~input_o\,
	datac => \key_map_in[5]~input_o\,
	datad => \key_map_in[7]~input_o\,
	combout => \Decoder1~4_combout\);

-- Location: LCCOMB_X35_Y2_N6
\key_status[7][4]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[7][4]~78_combout\ = (\Decoder0~11_combout\ & ((\Decoder1~4_combout\ & ((\pressing~input_o\))) # (!\Decoder1~4_combout\ & (\key_status[7][4]~q\)))) # (!\Decoder0~11_combout\ & (((\key_status[7][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~11_combout\,
	datab => \Decoder1~4_combout\,
	datac => \key_status[7][4]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[7][4]~78_combout\);

-- Location: FF_X35_Y2_N7
\key_status[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[7][4]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[7][4]~q\);

-- Location: LCCOMB_X35_Y2_N20
\key_status[6][4]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[6][4]~79_combout\ = (\Decoder0~10_combout\ & ((\Decoder1~4_combout\ & ((\pressing~input_o\))) # (!\Decoder1~4_combout\ & (\key_status[6][4]~q\)))) # (!\Decoder0~10_combout\ & (((\key_status[6][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~10_combout\,
	datab => \Decoder1~4_combout\,
	datac => \key_status[6][4]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[6][4]~79_combout\);

-- Location: FF_X35_Y2_N21
\key_status[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[6][4]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[6][4]~q\);

-- Location: LCCOMB_X35_Y2_N26
\to_usb_and_temp~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~51_combout\ = (\key_status[7][4]~q\ & (\from_usb[7]~input_o\ & ((\from_usb[6]~input_o\) # (!\key_status[6][4]~q\)))) # (!\key_status[7][4]~q\ & ((\from_usb[6]~input_o\) # ((!\key_status[6][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[7][4]~q\,
	datab => \from_usb[6]~input_o\,
	datac => \from_usb[7]~input_o\,
	datad => \key_status[6][4]~q\,
	combout => \to_usb_and_temp~51_combout\);

-- Location: LCCOMB_X36_Y1_N22
\key_status[5][4]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[5][4]~76_combout\ = (\Decoder1~4_combout\ & ((\Decoder0~8_combout\ & ((\pressing~input_o\))) # (!\Decoder0~8_combout\ & (\key_status[5][4]~q\)))) # (!\Decoder1~4_combout\ & (((\key_status[5][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~4_combout\,
	datab => \Decoder0~8_combout\,
	datac => \key_status[5][4]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[5][4]~76_combout\);

-- Location: FF_X36_Y1_N23
\key_status[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[5][4]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[5][4]~q\);

-- Location: LCCOMB_X35_Y1_N18
\key_status[4][4]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[4][4]~77_combout\ = (\Decoder1~4_combout\ & ((\Decoder0~7_combout\ & ((\pressing~input_o\))) # (!\Decoder0~7_combout\ & (\key_status[4][4]~q\)))) # (!\Decoder1~4_combout\ & (((\key_status[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~4_combout\,
	datab => \Decoder0~7_combout\,
	datac => \key_status[4][4]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[4][4]~77_combout\);

-- Location: FF_X35_Y1_N19
\key_status[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[4][4]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[4][4]~q\);

-- Location: LCCOMB_X36_Y1_N24
\to_usb_and_temp~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~50_combout\ = (\from_usb[5]~input_o\ & ((\from_usb[4]~input_o\) # ((!\key_status[4][4]~q\)))) # (!\from_usb[5]~input_o\ & (!\key_status[5][4]~q\ & ((\from_usb[4]~input_o\) # (!\key_status[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[5]~input_o\,
	datab => \from_usb[4]~input_o\,
	datac => \key_status[5][4]~q\,
	datad => \key_status[4][4]~q\,
	combout => \to_usb_and_temp~50_combout\);

-- Location: LCCOMB_X32_Y3_N22
\key_status[2][4]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[2][4]~75_combout\ = (\Decoder0~4_combout\ & ((\Decoder1~4_combout\ & (\pressing~input_o\)) # (!\Decoder1~4_combout\ & ((\key_status[2][4]~q\))))) # (!\Decoder0~4_combout\ & (((\key_status[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~4_combout\,
	datac => \key_status[2][4]~q\,
	datad => \Decoder1~4_combout\,
	combout => \key_status[2][4]~75_combout\);

-- Location: FF_X32_Y3_N23
\key_status[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[2][4]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[2][4]~q\);

-- Location: LCCOMB_X32_Y3_N16
\key_status[3][4]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[3][4]~74_combout\ = (\Decoder0~5_combout\ & ((\Decoder1~4_combout\ & (\pressing~input_o\)) # (!\Decoder1~4_combout\ & ((\key_status[3][4]~q\))))) # (!\Decoder0~5_combout\ & (((\key_status[3][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~5_combout\,
	datac => \key_status[3][4]~q\,
	datad => \Decoder1~4_combout\,
	combout => \key_status[3][4]~74_combout\);

-- Location: FF_X32_Y3_N17
\key_status[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[3][4]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[3][4]~q\);

-- Location: LCCOMB_X32_Y3_N24
\to_usb_and_temp~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~49_combout\ = (\key_status[2][4]~q\ & (\from_usb[2]~input_o\ & ((\from_usb[3]~input_o\) # (!\key_status[3][4]~q\)))) # (!\key_status[2][4]~q\ & (((\from_usb[3]~input_o\)) # (!\key_status[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[2][4]~q\,
	datab => \key_status[3][4]~q\,
	datac => \from_usb[3]~input_o\,
	datad => \from_usb[2]~input_o\,
	combout => \to_usb_and_temp~49_combout\);

-- Location: LCCOMB_X36_Y1_N14
\key_status[0][4]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[0][4]~73_combout\ = (\Decoder1~4_combout\ & ((\Decoder0~1_combout\ & ((\pressing~input_o\))) # (!\Decoder0~1_combout\ & (\key_status[0][4]~q\)))) # (!\Decoder1~4_combout\ & (((\key_status[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~4_combout\,
	datab => \Decoder0~1_combout\,
	datac => \key_status[0][4]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[0][4]~73_combout\);

-- Location: FF_X36_Y1_N15
\key_status[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[0][4]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[0][4]~q\);

-- Location: LCCOMB_X36_Y1_N0
\key_status[1][4]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[1][4]~72_combout\ = (\Decoder1~4_combout\ & ((\Decoder0~2_combout\ & ((\pressing~input_o\))) # (!\Decoder0~2_combout\ & (\key_status[1][4]~q\)))) # (!\Decoder1~4_combout\ & (((\key_status[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~4_combout\,
	datab => \Decoder0~2_combout\,
	datac => \key_status[1][4]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[1][4]~72_combout\);

-- Location: FF_X36_Y1_N1
\key_status[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[1][4]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[1][4]~q\);

-- Location: LCCOMB_X36_Y1_N16
\to_usb_and_temp~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~48_combout\ = (\from_usb[0]~input_o\ & (((\from_usb[1]~input_o\) # (!\key_status[1][4]~q\)))) # (!\from_usb[0]~input_o\ & (!\key_status[0][4]~q\ & ((\from_usb[1]~input_o\) # (!\key_status[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[0]~input_o\,
	datab => \key_status[0][4]~q\,
	datac => \from_usb[1]~input_o\,
	datad => \key_status[1][4]~q\,
	combout => \to_usb_and_temp~48_combout\);

-- Location: LCCOMB_X34_Y1_N30
\to_usb_and_temp~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~52_combout\ = (\to_usb_and_temp~51_combout\ & (\to_usb_and_temp~50_combout\ & (\to_usb_and_temp~49_combout\ & \to_usb_and_temp~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~51_combout\,
	datab => \to_usb_and_temp~50_combout\,
	datac => \to_usb_and_temp~49_combout\,
	datad => \to_usb_and_temp~48_combout\,
	combout => \to_usb_and_temp~52_combout\);

-- Location: LCCOMB_X36_Y3_N6
\key_status[16][4]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[16][4]~81_combout\ = (\Decoder0~13_combout\ & ((\Decoder1~4_combout\ & ((\pressing~input_o\))) # (!\Decoder1~4_combout\ & (\key_status[16][4]~q\)))) # (!\Decoder0~13_combout\ & (((\key_status[16][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~13_combout\,
	datab => \Decoder1~4_combout\,
	datac => \key_status[16][4]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[16][4]~81_combout\);

-- Location: FF_X36_Y3_N7
\key_status[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[16][4]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[16][4]~q\);

-- Location: LCCOMB_X36_Y3_N8
\key_status[17][4]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[17][4]~80_combout\ = (\Decoder0~14_combout\ & ((\Decoder1~4_combout\ & ((\pressing~input_o\))) # (!\Decoder1~4_combout\ & (\key_status[17][4]~q\)))) # (!\Decoder0~14_combout\ & (((\key_status[17][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~14_combout\,
	datab => \Decoder1~4_combout\,
	datac => \key_status[17][4]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[17][4]~80_combout\);

-- Location: FF_X36_Y3_N9
\key_status[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[17][4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[17][4]~q\);

-- Location: LCCOMB_X32_Y3_N26
\to_usb_and_temp~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~53_combout\ = (\from_usb[16]~input_o\ & (((\from_usb[17]~input_o\) # (!\key_status[17][4]~q\)))) # (!\from_usb[16]~input_o\ & (!\key_status[16][4]~q\ & ((\from_usb[17]~input_o\) # (!\key_status[17][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[16]~input_o\,
	datab => \key_status[16][4]~q\,
	datac => \from_usb[17]~input_o\,
	datad => \key_status[17][4]~q\,
	combout => \to_usb_and_temp~53_combout\);

-- Location: LCCOMB_X35_Y3_N4
\key_status[12][4]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[12][4]~87_combout\ = (\Decoder1~4_combout\ & ((\Decoder0~22_combout\ & (\pressing~input_o\)) # (!\Decoder0~22_combout\ & ((\key_status[12][4]~q\))))) # (!\Decoder1~4_combout\ & (((\key_status[12][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~4_combout\,
	datac => \key_status[12][4]~q\,
	datad => \Decoder0~22_combout\,
	combout => \key_status[12][4]~87_combout\);

-- Location: FF_X35_Y3_N5
\key_status[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[12][4]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[12][4]~q\);

-- Location: LCCOMB_X34_Y3_N24
\key_status[13][4]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[13][4]~86_combout\ = (\Decoder0~23_combout\ & ((\Decoder1~4_combout\ & ((\pressing~input_o\))) # (!\Decoder1~4_combout\ & (\key_status[13][4]~q\)))) # (!\Decoder0~23_combout\ & (((\key_status[13][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~23_combout\,
	datab => \Decoder1~4_combout\,
	datac => \key_status[13][4]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[13][4]~86_combout\);

-- Location: FF_X34_Y3_N25
\key_status[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[13][4]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[13][4]~q\);

-- Location: LCCOMB_X34_Y3_N22
\to_usb_and_temp~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~56_combout\ = (\key_status[12][4]~q\ & (\from_usb[12]~input_o\ & ((\from_usb[13]~input_o\) # (!\key_status[13][4]~q\)))) # (!\key_status[12][4]~q\ & (((\from_usb[13]~input_o\)) # (!\key_status[13][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[12][4]~q\,
	datab => \key_status[13][4]~q\,
	datac => \from_usb[12]~input_o\,
	datad => \from_usb[13]~input_o\,
	combout => \to_usb_and_temp~56_combout\);

-- Location: LCCOMB_X35_Y3_N2
\key_status[15][4]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[15][4]~88_combout\ = (\Decoder1~4_combout\ & ((\Decoder0~26_combout\ & (\pressing~input_o\)) # (!\Decoder0~26_combout\ & ((\key_status[15][4]~q\))))) # (!\Decoder1~4_combout\ & (((\key_status[15][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~4_combout\,
	datac => \key_status[15][4]~q\,
	datad => \Decoder0~26_combout\,
	combout => \key_status[15][4]~88_combout\);

-- Location: FF_X35_Y3_N3
\key_status[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[15][4]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[15][4]~q\);

-- Location: LCCOMB_X35_Y3_N20
\key_status[14][4]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[14][4]~89_combout\ = (\Decoder1~4_combout\ & ((\Decoder0~25_combout\ & (\pressing~input_o\)) # (!\Decoder0~25_combout\ & ((\key_status[14][4]~q\))))) # (!\Decoder1~4_combout\ & (((\key_status[14][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~4_combout\,
	datac => \key_status[14][4]~q\,
	datad => \Decoder0~25_combout\,
	combout => \key_status[14][4]~89_combout\);

-- Location: FF_X35_Y3_N21
\key_status[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[14][4]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[14][4]~q\);

-- Location: LCCOMB_X34_Y3_N4
\to_usb_and_temp~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~57_combout\ = (\key_status[15][4]~q\ & (\from_usb[15]~input_o\ & ((\from_usb[14]~input_o\) # (!\key_status[14][4]~q\)))) # (!\key_status[15][4]~q\ & ((\from_usb[14]~input_o\) # ((!\key_status[14][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[15][4]~q\,
	datab => \from_usb[14]~input_o\,
	datac => \from_usb[15]~input_o\,
	datad => \key_status[14][4]~q\,
	combout => \to_usb_and_temp~57_combout\);

-- Location: LCCOMB_X35_Y1_N2
\key_status[10][4]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[10][4]~85_combout\ = (\Decoder1~4_combout\ & ((\Decoder0~19_combout\ & ((\pressing~input_o\))) # (!\Decoder0~19_combout\ & (\key_status[10][4]~q\)))) # (!\Decoder1~4_combout\ & (((\key_status[10][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~4_combout\,
	datab => \Decoder0~19_combout\,
	datac => \key_status[10][4]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[10][4]~85_combout\);

-- Location: FF_X35_Y1_N3
\key_status[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[10][4]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[10][4]~q\);

-- Location: LCCOMB_X35_Y1_N12
\key_status[11][4]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[11][4]~84_combout\ = (\Decoder1~4_combout\ & ((\Decoder0~20_combout\ & ((\pressing~input_o\))) # (!\Decoder0~20_combout\ & (\key_status[11][4]~q\)))) # (!\Decoder1~4_combout\ & (((\key_status[11][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~4_combout\,
	datab => \Decoder0~20_combout\,
	datac => \key_status[11][4]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[11][4]~84_combout\);

-- Location: FF_X35_Y1_N13
\key_status[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[11][4]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[11][4]~q\);

-- Location: LCCOMB_X32_Y1_N30
\to_usb_and_temp~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~55_combout\ = (\from_usb[10]~input_o\ & (((\from_usb[11]~input_o\) # (!\key_status[11][4]~q\)))) # (!\from_usb[10]~input_o\ & (!\key_status[10][4]~q\ & ((\from_usb[11]~input_o\) # (!\key_status[11][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[10]~input_o\,
	datab => \key_status[10][4]~q\,
	datac => \from_usb[11]~input_o\,
	datad => \key_status[11][4]~q\,
	combout => \to_usb_and_temp~55_combout\);

-- Location: LCCOMB_X35_Y3_N12
\key_status[8][4]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[8][4]~83_combout\ = (\Decoder1~4_combout\ & ((\Decoder0~16_combout\ & (\pressing~input_o\)) # (!\Decoder0~16_combout\ & ((\key_status[8][4]~q\))))) # (!\Decoder1~4_combout\ & (((\key_status[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~4_combout\,
	datac => \key_status[8][4]~q\,
	datad => \Decoder0~16_combout\,
	combout => \key_status[8][4]~83_combout\);

-- Location: FF_X35_Y3_N13
\key_status[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[8][4]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[8][4]~q\);

-- Location: LCCOMB_X35_Y3_N26
\key_status[9][4]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[9][4]~82_combout\ = (\Decoder1~4_combout\ & ((\Decoder0~17_combout\ & (\pressing~input_o\)) # (!\Decoder0~17_combout\ & ((\key_status[9][4]~q\))))) # (!\Decoder1~4_combout\ & (((\key_status[9][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~4_combout\,
	datac => \key_status[9][4]~q\,
	datad => \Decoder0~17_combout\,
	combout => \key_status[9][4]~82_combout\);

-- Location: FF_X35_Y3_N27
\key_status[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[9][4]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[9][4]~q\);

-- Location: LCCOMB_X35_Y3_N22
\to_usb_and_temp~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~54_combout\ = (\key_status[8][4]~q\ & (\from_usb[8]~input_o\ & ((\from_usb[9]~input_o\) # (!\key_status[9][4]~q\)))) # (!\key_status[8][4]~q\ & (((\from_usb[9]~input_o\) # (!\key_status[9][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[8][4]~q\,
	datab => \from_usb[8]~input_o\,
	datac => \key_status[9][4]~q\,
	datad => \from_usb[9]~input_o\,
	combout => \to_usb_and_temp~54_combout\);

-- Location: LCCOMB_X34_Y3_N30
\to_usb_and_temp~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~58_combout\ = (\to_usb_and_temp~56_combout\ & (\to_usb_and_temp~57_combout\ & (\to_usb_and_temp~55_combout\ & \to_usb_and_temp~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~56_combout\,
	datab => \to_usb_and_temp~57_combout\,
	datac => \to_usb_and_temp~55_combout\,
	datad => \to_usb_and_temp~54_combout\,
	combout => \to_usb_and_temp~58_combout\);

-- Location: LCCOMB_X31_Y1_N2
\to_usb_and_temp~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~59_combout\ = (\to_usb_and_temp~52_combout\ & (\to_usb_and_temp~53_combout\ & \to_usb_and_temp~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \to_usb_and_temp~52_combout\,
	datac => \to_usb_and_temp~53_combout\,
	datad => \to_usb_and_temp~58_combout\,
	combout => \to_usb_and_temp~59_combout\);

-- Location: LCCOMB_X32_Y1_N0
\Decoder1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~5_combout\ = (!\key_map_in[6]~input_o\ & (\key_map_in[5]~input_o\ & \key_map_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[6]~input_o\,
	datac => \key_map_in[5]~input_o\,
	datad => \key_map_in[7]~input_o\,
	combout => \Decoder1~5_combout\);

-- Location: LCCOMB_X37_Y3_N26
\key_status[17][5]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[17][5]~98_combout\ = (\Decoder0~14_combout\ & ((\Decoder1~5_combout\ & (\pressing~input_o\)) # (!\Decoder1~5_combout\ & ((\key_status[17][5]~q\))))) # (!\Decoder0~14_combout\ & (((\key_status[17][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~14_combout\,
	datac => \key_status[17][5]~q\,
	datad => \Decoder1~5_combout\,
	combout => \key_status[17][5]~98_combout\);

-- Location: FF_X37_Y3_N27
\key_status[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[17][5]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[17][5]~q\);

-- Location: LCCOMB_X36_Y4_N30
\key_status[16][5]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[16][5]~99_combout\ = (\Decoder0~13_combout\ & ((\Decoder1~5_combout\ & ((\pressing~input_o\))) # (!\Decoder1~5_combout\ & (\key_status[16][5]~q\)))) # (!\Decoder0~13_combout\ & (((\key_status[16][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~13_combout\,
	datab => \Decoder1~5_combout\,
	datac => \key_status[16][5]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[16][5]~99_combout\);

-- Location: FF_X36_Y4_N31
\key_status[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[16][5]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[16][5]~q\);

-- Location: LCCOMB_X32_Y3_N12
\to_usb_and_temp~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~65_combout\ = (\from_usb[16]~input_o\ & ((\from_usb[17]~input_o\) # ((!\key_status[17][5]~q\)))) # (!\from_usb[16]~input_o\ & (!\key_status[16][5]~q\ & ((\from_usb[17]~input_o\) # (!\key_status[17][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[16]~input_o\,
	datab => \from_usb[17]~input_o\,
	datac => \key_status[17][5]~q\,
	datad => \key_status[16][5]~q\,
	combout => \to_usb_and_temp~65_combout\);

-- Location: LCCOMB_X32_Y1_N18
\key_status[10][5]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[10][5]~103_combout\ = (\Decoder1~5_combout\ & ((\Decoder0~19_combout\ & (\pressing~input_o\)) # (!\Decoder0~19_combout\ & ((\key_status[10][5]~q\))))) # (!\Decoder1~5_combout\ & (((\key_status[10][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~5_combout\,
	datac => \key_status[10][5]~q\,
	datad => \Decoder0~19_combout\,
	combout => \key_status[10][5]~103_combout\);

-- Location: FF_X32_Y1_N19
\key_status[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[10][5]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[10][5]~q\);

-- Location: LCCOMB_X32_Y1_N12
\key_status[11][5]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[11][5]~102_combout\ = (\Decoder1~5_combout\ & ((\Decoder0~20_combout\ & (\pressing~input_o\)) # (!\Decoder0~20_combout\ & ((\key_status[11][5]~q\))))) # (!\Decoder1~5_combout\ & (((\key_status[11][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~5_combout\,
	datac => \key_status[11][5]~q\,
	datad => \Decoder0~20_combout\,
	combout => \key_status[11][5]~102_combout\);

-- Location: FF_X32_Y1_N13
\key_status[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[11][5]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[11][5]~q\);

-- Location: LCCOMB_X32_Y1_N28
\to_usb_and_temp~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~67_combout\ = (\from_usb[10]~input_o\ & (((\from_usb[11]~input_o\) # (!\key_status[11][5]~q\)))) # (!\from_usb[10]~input_o\ & (!\key_status[10][5]~q\ & ((\from_usb[11]~input_o\) # (!\key_status[11][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[10]~input_o\,
	datab => \key_status[10][5]~q\,
	datac => \from_usb[11]~input_o\,
	datad => \key_status[11][5]~q\,
	combout => \to_usb_and_temp~67_combout\);

-- Location: LCCOMB_X37_Y3_N22
\key_status[12][5]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[12][5]~105_combout\ = (\Decoder0~22_combout\ & ((\Decoder1~5_combout\ & (\pressing~input_o\)) # (!\Decoder1~5_combout\ & ((\key_status[12][5]~q\))))) # (!\Decoder0~22_combout\ & (((\key_status[12][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~22_combout\,
	datac => \key_status[12][5]~q\,
	datad => \Decoder1~5_combout\,
	combout => \key_status[12][5]~105_combout\);

-- Location: FF_X37_Y3_N23
\key_status[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[12][5]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[12][5]~q\);

-- Location: LCCOMB_X37_Y3_N28
\key_status[13][5]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[13][5]~104_combout\ = (\Decoder0~23_combout\ & ((\Decoder1~5_combout\ & (\pressing~input_o\)) # (!\Decoder1~5_combout\ & ((\key_status[13][5]~q\))))) # (!\Decoder0~23_combout\ & (((\key_status[13][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~23_combout\,
	datac => \key_status[13][5]~q\,
	datad => \Decoder1~5_combout\,
	combout => \key_status[13][5]~104_combout\);

-- Location: FF_X37_Y3_N29
\key_status[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[13][5]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[13][5]~q\);

-- Location: LCCOMB_X34_Y3_N16
\to_usb_and_temp~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~68_combout\ = (\key_status[12][5]~q\ & (\from_usb[12]~input_o\ & ((\from_usb[13]~input_o\) # (!\key_status[13][5]~q\)))) # (!\key_status[12][5]~q\ & ((\from_usb[13]~input_o\) # ((!\key_status[13][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[12][5]~q\,
	datab => \from_usb[13]~input_o\,
	datac => \from_usb[12]~input_o\,
	datad => \key_status[13][5]~q\,
	combout => \to_usb_and_temp~68_combout\);

-- Location: LCCOMB_X37_Y3_N2
\key_status[14][5]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[14][5]~107_combout\ = (\Decoder0~25_combout\ & ((\Decoder1~5_combout\ & (\pressing~input_o\)) # (!\Decoder1~5_combout\ & ((\key_status[14][5]~q\))))) # (!\Decoder0~25_combout\ & (((\key_status[14][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~25_combout\,
	datac => \key_status[14][5]~q\,
	datad => \Decoder1~5_combout\,
	combout => \key_status[14][5]~107_combout\);

-- Location: FF_X37_Y3_N3
\key_status[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[14][5]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[14][5]~q\);

-- Location: LCCOMB_X37_Y3_N12
\key_status[15][5]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[15][5]~106_combout\ = (\Decoder0~26_combout\ & ((\Decoder1~5_combout\ & (\pressing~input_o\)) # (!\Decoder1~5_combout\ & ((\key_status[15][5]~q\))))) # (!\Decoder0~26_combout\ & (((\key_status[15][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~26_combout\,
	datac => \key_status[15][5]~q\,
	datad => \Decoder1~5_combout\,
	combout => \key_status[15][5]~106_combout\);

-- Location: FF_X37_Y3_N13
\key_status[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[15][5]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[15][5]~q\);

-- Location: LCCOMB_X34_Y3_N14
\to_usb_and_temp~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~69_combout\ = (\from_usb[15]~input_o\ & ((\from_usb[14]~input_o\) # ((!\key_status[14][5]~q\)))) # (!\from_usb[15]~input_o\ & (!\key_status[15][5]~q\ & ((\from_usb[14]~input_o\) # (!\key_status[14][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[15]~input_o\,
	datab => \from_usb[14]~input_o\,
	datac => \key_status[14][5]~q\,
	datad => \key_status[15][5]~q\,
	combout => \to_usb_and_temp~69_combout\);

-- Location: LCCOMB_X36_Y3_N30
\key_status[8][5]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[8][5]~101_combout\ = (\Decoder0~16_combout\ & ((\Decoder1~5_combout\ & (\pressing~input_o\)) # (!\Decoder1~5_combout\ & ((\key_status[8][5]~q\))))) # (!\Decoder0~16_combout\ & (((\key_status[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~16_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[8][5]~q\,
	datad => \Decoder1~5_combout\,
	combout => \key_status[8][5]~101_combout\);

-- Location: FF_X36_Y3_N31
\key_status[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[8][5]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[8][5]~q\);

-- Location: LCCOMB_X36_Y3_N4
\key_status[9][5]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[9][5]~100_combout\ = (\Decoder1~5_combout\ & ((\Decoder0~17_combout\ & ((\pressing~input_o\))) # (!\Decoder0~17_combout\ & (\key_status[9][5]~q\)))) # (!\Decoder1~5_combout\ & (((\key_status[9][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~5_combout\,
	datab => \Decoder0~17_combout\,
	datac => \key_status[9][5]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[9][5]~100_combout\);

-- Location: FF_X36_Y3_N5
\key_status[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[9][5]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[9][5]~q\);

-- Location: LCCOMB_X35_Y3_N18
\to_usb_and_temp~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~66_combout\ = (\key_status[8][5]~q\ & (\from_usb[8]~input_o\ & ((\from_usb[9]~input_o\) # (!\key_status[9][5]~q\)))) # (!\key_status[8][5]~q\ & ((\from_usb[9]~input_o\) # ((!\key_status[9][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[8][5]~q\,
	datab => \from_usb[9]~input_o\,
	datac => \from_usb[8]~input_o\,
	datad => \key_status[9][5]~q\,
	combout => \to_usb_and_temp~66_combout\);

-- Location: LCCOMB_X34_Y3_N28
\to_usb_and_temp~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~70_combout\ = (\to_usb_and_temp~67_combout\ & (\to_usb_and_temp~68_combout\ & (\to_usb_and_temp~69_combout\ & \to_usb_and_temp~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~67_combout\,
	datab => \to_usb_and_temp~68_combout\,
	datac => \to_usb_and_temp~69_combout\,
	datad => \to_usb_and_temp~66_combout\,
	combout => \to_usb_and_temp~70_combout\);

-- Location: LCCOMB_X35_Y2_N22
\key_status[7][5]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[7][5]~96_combout\ = (\Decoder0~11_combout\ & ((\Decoder1~5_combout\ & ((\pressing~input_o\))) # (!\Decoder1~5_combout\ & (\key_status[7][5]~q\)))) # (!\Decoder0~11_combout\ & (((\key_status[7][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~11_combout\,
	datab => \Decoder1~5_combout\,
	datac => \key_status[7][5]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[7][5]~96_combout\);

-- Location: FF_X35_Y2_N23
\key_status[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[7][5]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[7][5]~q\);

-- Location: LCCOMB_X35_Y2_N28
\key_status[6][5]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[6][5]~97_combout\ = (\Decoder0~10_combout\ & ((\Decoder1~5_combout\ & ((\pressing~input_o\))) # (!\Decoder1~5_combout\ & (\key_status[6][5]~q\)))) # (!\Decoder0~10_combout\ & (((\key_status[6][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~10_combout\,
	datab => \Decoder1~5_combout\,
	datac => \key_status[6][5]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[6][5]~97_combout\);

-- Location: FF_X35_Y2_N29
\key_status[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[6][5]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[6][5]~q\);

-- Location: LCCOMB_X35_Y2_N2
\to_usb_and_temp~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~63_combout\ = (\key_status[7][5]~q\ & (\from_usb[7]~input_o\ & ((\from_usb[6]~input_o\) # (!\key_status[6][5]~q\)))) # (!\key_status[7][5]~q\ & ((\from_usb[6]~input_o\) # ((!\key_status[6][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[7][5]~q\,
	datab => \from_usb[6]~input_o\,
	datac => \from_usb[7]~input_o\,
	datad => \key_status[6][5]~q\,
	combout => \to_usb_and_temp~63_combout\);

-- Location: LCCOMB_X36_Y1_N4
\key_status[0][5]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[0][5]~91_combout\ = (\Decoder1~5_combout\ & ((\Decoder0~1_combout\ & (\pressing~input_o\)) # (!\Decoder0~1_combout\ & ((\key_status[0][5]~q\))))) # (!\Decoder1~5_combout\ & (((\key_status[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~5_combout\,
	datac => \key_status[0][5]~q\,
	datad => \Decoder0~1_combout\,
	combout => \key_status[0][5]~91_combout\);

-- Location: FF_X36_Y1_N5
\key_status[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[0][5]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[0][5]~q\);

-- Location: LCCOMB_X36_Y1_N10
\key_status[1][5]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[1][5]~90_combout\ = (\Decoder1~5_combout\ & ((\Decoder0~2_combout\ & (\pressing~input_o\)) # (!\Decoder0~2_combout\ & ((\key_status[1][5]~q\))))) # (!\Decoder1~5_combout\ & (((\key_status[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~5_combout\,
	datac => \key_status[1][5]~q\,
	datad => \Decoder0~2_combout\,
	combout => \key_status[1][5]~90_combout\);

-- Location: FF_X36_Y1_N11
\key_status[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[1][5]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[1][5]~q\);

-- Location: LCCOMB_X36_Y1_N26
\to_usb_and_temp~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~60_combout\ = (\from_usb[1]~input_o\ & (((\from_usb[0]~input_o\)) # (!\key_status[0][5]~q\))) # (!\from_usb[1]~input_o\ & (!\key_status[1][5]~q\ & ((\from_usb[0]~input_o\) # (!\key_status[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[1]~input_o\,
	datab => \key_status[0][5]~q\,
	datac => \from_usb[0]~input_o\,
	datad => \key_status[1][5]~q\,
	combout => \to_usb_and_temp~60_combout\);

-- Location: LCCOMB_X37_Y3_N4
\key_status[2][5]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[2][5]~93_combout\ = (\Decoder0~4_combout\ & ((\Decoder1~5_combout\ & (\pressing~input_o\)) # (!\Decoder1~5_combout\ & ((\key_status[2][5]~q\))))) # (!\Decoder0~4_combout\ & (((\key_status[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~4_combout\,
	datac => \key_status[2][5]~q\,
	datad => \Decoder1~5_combout\,
	combout => \key_status[2][5]~93_combout\);

-- Location: FF_X37_Y3_N5
\key_status[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[2][5]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[2][5]~q\);

-- Location: LCCOMB_X37_Y3_N14
\key_status[3][5]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[3][5]~92_combout\ = (\Decoder0~5_combout\ & ((\Decoder1~5_combout\ & (\pressing~input_o\)) # (!\Decoder1~5_combout\ & ((\key_status[3][5]~q\))))) # (!\Decoder0~5_combout\ & (((\key_status[3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~5_combout\,
	datac => \key_status[3][5]~q\,
	datad => \Decoder1~5_combout\,
	combout => \key_status[3][5]~92_combout\);

-- Location: FF_X37_Y3_N15
\key_status[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[3][5]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[3][5]~q\);

-- Location: LCCOMB_X32_Y3_N4
\to_usb_and_temp~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~61_combout\ = (\from_usb[3]~input_o\ & (((\from_usb[2]~input_o\)) # (!\key_status[2][5]~q\))) # (!\from_usb[3]~input_o\ & (!\key_status[3][5]~q\ & ((\from_usb[2]~input_o\) # (!\key_status[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[3]~input_o\,
	datab => \key_status[2][5]~q\,
	datac => \key_status[3][5]~q\,
	datad => \from_usb[2]~input_o\,
	combout => \to_usb_and_temp~61_combout\);

-- Location: LCCOMB_X35_Y2_N16
\key_status[4][5]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[4][5]~95_combout\ = (\Decoder0~7_combout\ & ((\Decoder1~5_combout\ & ((\pressing~input_o\))) # (!\Decoder1~5_combout\ & (\key_status[4][5]~q\)))) # (!\Decoder0~7_combout\ & (((\key_status[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~7_combout\,
	datab => \Decoder1~5_combout\,
	datac => \key_status[4][5]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[4][5]~95_combout\);

-- Location: FF_X35_Y2_N17
\key_status[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[4][5]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[4][5]~q\);

-- Location: LCCOMB_X36_Y2_N14
\key_status[5][5]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[5][5]~94_combout\ = (\Decoder1~5_combout\ & ((\Decoder0~8_combout\ & (\pressing~input_o\)) # (!\Decoder0~8_combout\ & ((\key_status[5][5]~q\))))) # (!\Decoder1~5_combout\ & (((\key_status[5][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~5_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[5][5]~q\,
	datad => \Decoder0~8_combout\,
	combout => \key_status[5][5]~94_combout\);

-- Location: FF_X36_Y2_N15
\key_status[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[5][5]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[5][5]~q\);

-- Location: LCCOMB_X36_Y2_N0
\to_usb_and_temp~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~62_combout\ = (\key_status[4][5]~q\ & (\from_usb[4]~input_o\ & ((\from_usb[5]~input_o\) # (!\key_status[5][5]~q\)))) # (!\key_status[4][5]~q\ & ((\from_usb[5]~input_o\) # ((!\key_status[5][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[4][5]~q\,
	datab => \from_usb[5]~input_o\,
	datac => \key_status[5][5]~q\,
	datad => \from_usb[4]~input_o\,
	combout => \to_usb_and_temp~62_combout\);

-- Location: LCCOMB_X32_Y3_N10
\to_usb_and_temp~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~64_combout\ = (\to_usb_and_temp~63_combout\ & (\to_usb_and_temp~60_combout\ & (\to_usb_and_temp~61_combout\ & \to_usb_and_temp~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~63_combout\,
	datab => \to_usb_and_temp~60_combout\,
	datac => \to_usb_and_temp~61_combout\,
	datad => \to_usb_and_temp~62_combout\,
	combout => \to_usb_and_temp~64_combout\);

-- Location: LCCOMB_X32_Y3_N18
\to_usb_and_temp~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~71_combout\ = (\to_usb_and_temp~65_combout\ & (\to_usb_and_temp~70_combout\ & \to_usb_and_temp~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~65_combout\,
	datac => \to_usb_and_temp~70_combout\,
	datad => \to_usb_and_temp~64_combout\,
	combout => \to_usb_and_temp~71_combout\);

-- Location: LCCOMB_X32_Y1_N6
\Decoder1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~6_combout\ = (\key_map_in[6]~input_o\ & (!\key_map_in[5]~input_o\ & \key_map_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[6]~input_o\,
	datac => \key_map_in[5]~input_o\,
	datad => \key_map_in[7]~input_o\,
	combout => \Decoder1~6_combout\);

-- Location: LCCOMB_X35_Y4_N28
\key_status[16][6]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[16][6]~117_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~13_combout\ & (\pressing~input_o\)) # (!\Decoder0~13_combout\ & ((\key_status[16][6]~q\))))) # (!\Decoder1~6_combout\ & (((\key_status[16][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~6_combout\,
	datac => \key_status[16][6]~q\,
	datad => \Decoder0~13_combout\,
	combout => \key_status[16][6]~117_combout\);

-- Location: FF_X35_Y4_N29
\key_status[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[16][6]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[16][6]~q\);

-- Location: LCCOMB_X35_Y4_N10
\key_status[17][6]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[17][6]~116_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~14_combout\ & (\pressing~input_o\)) # (!\Decoder0~14_combout\ & ((\key_status[17][6]~q\))))) # (!\Decoder1~6_combout\ & (((\key_status[17][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~6_combout\,
	datac => \key_status[17][6]~q\,
	datad => \Decoder0~14_combout\,
	combout => \key_status[17][6]~116_combout\);

-- Location: FF_X35_Y4_N11
\key_status[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[17][6]~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[17][6]~q\);

-- Location: LCCOMB_X32_Y4_N28
\to_usb_and_temp~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~77_combout\ = (\from_usb[16]~input_o\ & (((\from_usb[17]~input_o\) # (!\key_status[17][6]~q\)))) # (!\from_usb[16]~input_o\ & (!\key_status[16][6]~q\ & ((\from_usb[17]~input_o\) # (!\key_status[17][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[16]~input_o\,
	datab => \key_status[16][6]~q\,
	datac => \from_usb[17]~input_o\,
	datad => \key_status[17][6]~q\,
	combout => \to_usb_and_temp~77_combout\);

-- Location: LCCOMB_X35_Y4_N18
\key_status[15][6]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[15][6]~124_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~26_combout\ & (\pressing~input_o\)) # (!\Decoder0~26_combout\ & ((\key_status[15][6]~q\))))) # (!\Decoder1~6_combout\ & (((\key_status[15][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~6_combout\,
	datac => \key_status[15][6]~q\,
	datad => \Decoder0~26_combout\,
	combout => \key_status[15][6]~124_combout\);

-- Location: FF_X35_Y4_N19
\key_status[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[15][6]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[15][6]~q\);

-- Location: LCCOMB_X35_Y4_N12
\key_status[14][6]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[14][6]~125_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~25_combout\ & (\pressing~input_o\)) # (!\Decoder0~25_combout\ & ((\key_status[14][6]~q\))))) # (!\Decoder1~6_combout\ & (((\key_status[14][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~6_combout\,
	datac => \key_status[14][6]~q\,
	datad => \Decoder0~25_combout\,
	combout => \key_status[14][6]~125_combout\);

-- Location: FF_X35_Y4_N13
\key_status[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[14][6]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[14][6]~q\);

-- Location: LCCOMB_X35_Y4_N14
\to_usb_and_temp~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~81_combout\ = (\from_usb[15]~input_o\ & (((\from_usb[14]~input_o\) # (!\key_status[14][6]~q\)))) # (!\from_usb[15]~input_o\ & (!\key_status[15][6]~q\ & ((\from_usb[14]~input_o\) # (!\key_status[14][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[15]~input_o\,
	datab => \key_status[15][6]~q\,
	datac => \from_usb[14]~input_o\,
	datad => \key_status[14][6]~q\,
	combout => \to_usb_and_temp~81_combout\);

-- Location: LCCOMB_X37_Y3_N18
\key_status[13][6]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[13][6]~122_combout\ = (\Decoder0~23_combout\ & ((\Decoder1~6_combout\ & (\pressing~input_o\)) # (!\Decoder1~6_combout\ & ((\key_status[13][6]~q\))))) # (!\Decoder0~23_combout\ & (((\key_status[13][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~23_combout\,
	datac => \key_status[13][6]~q\,
	datad => \Decoder1~6_combout\,
	combout => \key_status[13][6]~122_combout\);

-- Location: FF_X37_Y3_N19
\key_status[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[13][6]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[13][6]~q\);

-- Location: LCCOMB_X37_Y3_N0
\key_status[12][6]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[12][6]~123_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~22_combout\ & (\pressing~input_o\)) # (!\Decoder0~22_combout\ & ((\key_status[12][6]~q\))))) # (!\Decoder1~6_combout\ & (((\key_status[12][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~6_combout\,
	datac => \key_status[12][6]~q\,
	datad => \Decoder0~22_combout\,
	combout => \key_status[12][6]~123_combout\);

-- Location: FF_X37_Y3_N1
\key_status[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[12][6]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[12][6]~q\);

-- Location: LCCOMB_X34_Y3_N26
\to_usb_and_temp~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~80_combout\ = (\from_usb[12]~input_o\ & ((\from_usb[13]~input_o\) # ((!\key_status[13][6]~q\)))) # (!\from_usb[12]~input_o\ & (!\key_status[12][6]~q\ & ((\from_usb[13]~input_o\) # (!\key_status[13][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[12]~input_o\,
	datab => \from_usb[13]~input_o\,
	datac => \key_status[13][6]~q\,
	datad => \key_status[12][6]~q\,
	combout => \to_usb_and_temp~80_combout\);

-- Location: LCCOMB_X35_Y1_N30
\key_status[10][6]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[10][6]~121_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~19_combout\ & (\pressing~input_o\)) # (!\Decoder0~19_combout\ & ((\key_status[10][6]~q\))))) # (!\Decoder1~6_combout\ & (((\key_status[10][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~6_combout\,
	datac => \key_status[10][6]~q\,
	datad => \Decoder0~19_combout\,
	combout => \key_status[10][6]~121_combout\);

-- Location: FF_X35_Y1_N31
\key_status[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[10][6]~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[10][6]~q\);

-- Location: LCCOMB_X35_Y1_N0
\key_status[11][6]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[11][6]~120_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~20_combout\ & ((\pressing~input_o\))) # (!\Decoder0~20_combout\ & (\key_status[11][6]~q\)))) # (!\Decoder1~6_combout\ & (((\key_status[11][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~6_combout\,
	datab => \Decoder0~20_combout\,
	datac => \key_status[11][6]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[11][6]~120_combout\);

-- Location: FF_X35_Y1_N1
\key_status[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[11][6]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[11][6]~q\);

-- Location: LCCOMB_X34_Y1_N20
\to_usb_and_temp~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~79_combout\ = (\key_status[10][6]~q\ & (\from_usb[10]~input_o\ & ((\from_usb[11]~input_o\) # (!\key_status[11][6]~q\)))) # (!\key_status[10][6]~q\ & (((\from_usb[11]~input_o\)) # (!\key_status[11][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[10][6]~q\,
	datab => \key_status[11][6]~q\,
	datac => \from_usb[11]~input_o\,
	datad => \from_usb[10]~input_o\,
	combout => \to_usb_and_temp~79_combout\);

-- Location: LCCOMB_X36_Y3_N24
\key_status[8][6]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[8][6]~119_combout\ = (\Decoder0~16_combout\ & ((\Decoder1~6_combout\ & ((\pressing~input_o\))) # (!\Decoder1~6_combout\ & (\key_status[8][6]~q\)))) # (!\Decoder0~16_combout\ & (((\key_status[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~16_combout\,
	datab => \Decoder1~6_combout\,
	datac => \key_status[8][6]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[8][6]~119_combout\);

-- Location: FF_X36_Y3_N25
\key_status[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[8][6]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[8][6]~q\);

-- Location: LCCOMB_X37_Y3_N24
\key_status[9][6]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[9][6]~118_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~17_combout\ & (\pressing~input_o\)) # (!\Decoder0~17_combout\ & ((\key_status[9][6]~q\))))) # (!\Decoder1~6_combout\ & (((\key_status[9][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~6_combout\,
	datac => \key_status[9][6]~q\,
	datad => \Decoder0~17_combout\,
	combout => \key_status[9][6]~118_combout\);

-- Location: FF_X37_Y3_N25
\key_status[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[9][6]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[9][6]~q\);

-- Location: LCCOMB_X36_Y3_N26
\to_usb_and_temp~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~78_combout\ = (\from_usb[9]~input_o\ & (((\from_usb[8]~input_o\)) # (!\key_status[8][6]~q\))) # (!\from_usb[9]~input_o\ & (!\key_status[9][6]~q\ & ((\from_usb[8]~input_o\) # (!\key_status[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[9]~input_o\,
	datab => \key_status[8][6]~q\,
	datac => \from_usb[8]~input_o\,
	datad => \key_status[9][6]~q\,
	combout => \to_usb_and_temp~78_combout\);

-- Location: LCCOMB_X36_Y4_N6
\to_usb_and_temp~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~82_combout\ = (\to_usb_and_temp~81_combout\ & (\to_usb_and_temp~80_combout\ & (\to_usb_and_temp~79_combout\ & \to_usb_and_temp~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~81_combout\,
	datab => \to_usb_and_temp~80_combout\,
	datac => \to_usb_and_temp~79_combout\,
	datad => \to_usb_and_temp~78_combout\,
	combout => \to_usb_and_temp~82_combout\);

-- Location: LCCOMB_X36_Y1_N8
\key_status[1][6]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[1][6]~108_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~2_combout\ & (\pressing~input_o\)) # (!\Decoder0~2_combout\ & ((\key_status[1][6]~q\))))) # (!\Decoder1~6_combout\ & (((\key_status[1][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~6_combout\,
	datac => \key_status[1][6]~q\,
	datad => \Decoder0~2_combout\,
	combout => \key_status[1][6]~108_combout\);

-- Location: FF_X36_Y1_N9
\key_status[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[1][6]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[1][6]~q\);

-- Location: LCCOMB_X36_Y1_N18
\key_status[0][6]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[0][6]~109_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~1_combout\ & (\pressing~input_o\)) # (!\Decoder0~1_combout\ & ((\key_status[0][6]~q\))))) # (!\Decoder1~6_combout\ & (((\key_status[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~6_combout\,
	datac => \key_status[0][6]~q\,
	datad => \Decoder0~1_combout\,
	combout => \key_status[0][6]~109_combout\);

-- Location: FF_X36_Y1_N19
\key_status[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[0][6]~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[0][6]~q\);

-- Location: LCCOMB_X36_Y1_N28
\to_usb_and_temp~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~72_combout\ = (\from_usb[1]~input_o\ & (((\from_usb[0]~input_o\) # (!\key_status[0][6]~q\)))) # (!\from_usb[1]~input_o\ & (!\key_status[1][6]~q\ & ((\from_usb[0]~input_o\) # (!\key_status[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[1]~input_o\,
	datab => \key_status[1][6]~q\,
	datac => \from_usb[0]~input_o\,
	datad => \key_status[0][6]~q\,
	combout => \to_usb_and_temp~72_combout\);

-- Location: LCCOMB_X37_Y2_N10
\key_status[6][6]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[6][6]~115_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~10_combout\ & (\pressing~input_o\)) # (!\Decoder0~10_combout\ & ((\key_status[6][6]~q\))))) # (!\Decoder1~6_combout\ & (((\key_status[6][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~6_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[6][6]~q\,
	datad => \Decoder0~10_combout\,
	combout => \key_status[6][6]~115_combout\);

-- Location: FF_X37_Y2_N11
\key_status[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[6][6]~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[6][6]~q\);

-- Location: LCCOMB_X37_Y2_N0
\key_status[7][6]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[7][6]~114_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~11_combout\ & (\pressing~input_o\)) # (!\Decoder0~11_combout\ & ((\key_status[7][6]~q\))))) # (!\Decoder1~6_combout\ & (((\key_status[7][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~6_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[7][6]~q\,
	datad => \Decoder0~11_combout\,
	combout => \key_status[7][6]~114_combout\);

-- Location: FF_X37_Y2_N1
\key_status[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[7][6]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[7][6]~q\);

-- Location: LCCOMB_X37_Y2_N16
\to_usb_and_temp~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~75_combout\ = (\key_status[6][6]~q\ & (\from_usb[6]~input_o\ & ((\from_usb[7]~input_o\) # (!\key_status[7][6]~q\)))) # (!\key_status[6][6]~q\ & (((\from_usb[7]~input_o\)) # (!\key_status[7][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[6][6]~q\,
	datab => \key_status[7][6]~q\,
	datac => \from_usb[6]~input_o\,
	datad => \from_usb[7]~input_o\,
	combout => \to_usb_and_temp~75_combout\);

-- Location: LCCOMB_X36_Y1_N6
\key_status[5][6]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[5][6]~112_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~8_combout\ & (\pressing~input_o\)) # (!\Decoder0~8_combout\ & ((\key_status[5][6]~q\))))) # (!\Decoder1~6_combout\ & (((\key_status[5][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~6_combout\,
	datac => \key_status[5][6]~q\,
	datad => \Decoder0~8_combout\,
	combout => \key_status[5][6]~112_combout\);

-- Location: FF_X36_Y1_N7
\key_status[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[5][6]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[5][6]~q\);

-- Location: LCCOMB_X37_Y2_N2
\key_status[4][6]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[4][6]~113_combout\ = (\Decoder0~7_combout\ & ((\Decoder1~6_combout\ & (\pressing~input_o\)) # (!\Decoder1~6_combout\ & ((\key_status[4][6]~q\))))) # (!\Decoder0~7_combout\ & (((\key_status[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~7_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[4][6]~q\,
	datad => \Decoder1~6_combout\,
	combout => \key_status[4][6]~113_combout\);

-- Location: FF_X37_Y2_N3
\key_status[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[4][6]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[4][6]~q\);

-- Location: LCCOMB_X36_Y1_N12
\to_usb_and_temp~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~74_combout\ = (\key_status[5][6]~q\ & (\from_usb[5]~input_o\ & ((\from_usb[4]~input_o\) # (!\key_status[4][6]~q\)))) # (!\key_status[5][6]~q\ & ((\from_usb[4]~input_o\) # ((!\key_status[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[5][6]~q\,
	datab => \from_usb[4]~input_o\,
	datac => \from_usb[5]~input_o\,
	datad => \key_status[4][6]~q\,
	combout => \to_usb_and_temp~74_combout\);

-- Location: LCCOMB_X37_Y4_N22
\key_status[3][6]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[3][6]~110_combout\ = (\Decoder1~6_combout\ & ((\Decoder0~5_combout\ & (\pressing~input_o\)) # (!\Decoder0~5_combout\ & ((\key_status[3][6]~q\))))) # (!\Decoder1~6_combout\ & (((\key_status[3][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~6_combout\,
	datac => \key_status[3][6]~q\,
	datad => \Decoder0~5_combout\,
	combout => \key_status[3][6]~110_combout\);

-- Location: FF_X37_Y4_N23
\key_status[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[3][6]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[3][6]~q\);

-- Location: LCCOMB_X37_Y4_N4
\key_status[2][6]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[2][6]~111_combout\ = (\Decoder0~4_combout\ & ((\Decoder1~6_combout\ & (\pressing~input_o\)) # (!\Decoder1~6_combout\ & ((\key_status[2][6]~q\))))) # (!\Decoder0~4_combout\ & (((\key_status[2][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~4_combout\,
	datac => \key_status[2][6]~q\,
	datad => \Decoder1~6_combout\,
	combout => \key_status[2][6]~111_combout\);

-- Location: FF_X37_Y4_N5
\key_status[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[2][6]~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[2][6]~q\);

-- Location: LCCOMB_X37_Y4_N26
\to_usb_and_temp~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~73_combout\ = (\key_status[3][6]~q\ & (\from_usb[3]~input_o\ & ((\from_usb[2]~input_o\) # (!\key_status[2][6]~q\)))) # (!\key_status[3][6]~q\ & (((\from_usb[2]~input_o\) # (!\key_status[2][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[3][6]~q\,
	datab => \from_usb[3]~input_o\,
	datac => \key_status[2][6]~q\,
	datad => \from_usb[2]~input_o\,
	combout => \to_usb_and_temp~73_combout\);

-- Location: LCCOMB_X36_Y4_N8
\to_usb_and_temp~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~76_combout\ = (\to_usb_and_temp~72_combout\ & (\to_usb_and_temp~75_combout\ & (\to_usb_and_temp~74_combout\ & \to_usb_and_temp~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~72_combout\,
	datab => \to_usb_and_temp~75_combout\,
	datac => \to_usb_and_temp~74_combout\,
	datad => \to_usb_and_temp~73_combout\,
	combout => \to_usb_and_temp~76_combout\);

-- Location: LCCOMB_X32_Y4_N14
\to_usb_and_temp~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~83_combout\ = (\to_usb_and_temp~77_combout\ & (\to_usb_and_temp~82_combout\ & \to_usb_and_temp~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \to_usb_and_temp~77_combout\,
	datac => \to_usb_and_temp~82_combout\,
	datad => \to_usb_and_temp~76_combout\,
	combout => \to_usb_and_temp~83_combout\);

-- Location: LCCOMB_X32_Y1_N16
\Decoder1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~7_combout\ = (\key_map_in[6]~input_o\ & (\key_map_in[5]~input_o\ & \key_map_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_map_in[6]~input_o\,
	datac => \key_map_in[5]~input_o\,
	datad => \key_map_in[7]~input_o\,
	combout => \Decoder1~7_combout\);

-- Location: LCCOMB_X37_Y3_N30
\key_status[9][7]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[9][7]~136_combout\ = (\Decoder1~7_combout\ & ((\Decoder0~17_combout\ & (\pressing~input_o\)) # (!\Decoder0~17_combout\ & ((\key_status[9][7]~q\))))) # (!\Decoder1~7_combout\ & (((\key_status[9][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~7_combout\,
	datac => \key_status[9][7]~q\,
	datad => \Decoder0~17_combout\,
	combout => \key_status[9][7]~136_combout\);

-- Location: FF_X37_Y3_N31
\key_status[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[9][7]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[9][7]~q\);

-- Location: LCCOMB_X36_Y3_N12
\key_status[8][7]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[8][7]~137_combout\ = (\Decoder0~16_combout\ & ((\Decoder1~7_combout\ & ((\pressing~input_o\))) # (!\Decoder1~7_combout\ & (\key_status[8][7]~q\)))) # (!\Decoder0~16_combout\ & (((\key_status[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~16_combout\,
	datab => \Decoder1~7_combout\,
	datac => \key_status[8][7]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[8][7]~137_combout\);

-- Location: FF_X36_Y3_N13
\key_status[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[8][7]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[8][7]~q\);

-- Location: LCCOMB_X36_Y3_N14
\to_usb_and_temp~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~90_combout\ = (\key_status[9][7]~q\ & (\from_usb[9]~input_o\ & ((\from_usb[8]~input_o\) # (!\key_status[8][7]~q\)))) # (!\key_status[9][7]~q\ & ((\from_usb[8]~input_o\) # ((!\key_status[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[9][7]~q\,
	datab => \from_usb[8]~input_o\,
	datac => \from_usb[9]~input_o\,
	datad => \key_status[8][7]~q\,
	combout => \to_usb_and_temp~90_combout\);

-- Location: LCCOMB_X37_Y3_N8
\key_status[14][7]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[14][7]~143_combout\ = (\Decoder1~7_combout\ & ((\Decoder0~25_combout\ & (\pressing~input_o\)) # (!\Decoder0~25_combout\ & ((\key_status[14][7]~q\))))) # (!\Decoder1~7_combout\ & (((\key_status[14][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~7_combout\,
	datac => \key_status[14][7]~q\,
	datad => \Decoder0~25_combout\,
	combout => \key_status[14][7]~143_combout\);

-- Location: FF_X37_Y3_N9
\key_status[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[14][7]~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[14][7]~q\);

-- Location: LCCOMB_X37_Y3_N6
\key_status[15][7]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[15][7]~142_combout\ = (\Decoder0~26_combout\ & ((\Decoder1~7_combout\ & (\pressing~input_o\)) # (!\Decoder1~7_combout\ & ((\key_status[15][7]~q\))))) # (!\Decoder0~26_combout\ & (((\key_status[15][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~26_combout\,
	datac => \key_status[15][7]~q\,
	datad => \Decoder1~7_combout\,
	combout => \key_status[15][7]~142_combout\);

-- Location: FF_X37_Y3_N7
\key_status[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[15][7]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[15][7]~q\);

-- Location: LCCOMB_X34_Y3_N20
\to_usb_and_temp~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~93_combout\ = (\from_usb[15]~input_o\ & ((\from_usb[14]~input_o\) # ((!\key_status[14][7]~q\)))) # (!\from_usb[15]~input_o\ & (!\key_status[15][7]~q\ & ((\from_usb[14]~input_o\) # (!\key_status[14][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[15]~input_o\,
	datab => \from_usb[14]~input_o\,
	datac => \key_status[14][7]~q\,
	datad => \key_status[15][7]~q\,
	combout => \to_usb_and_temp~93_combout\);

-- Location: LCCOMB_X34_Y1_N10
\key_status[11][7]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[11][7]~138_combout\ = (\Decoder1~7_combout\ & ((\Decoder0~20_combout\ & ((\pressing~input_o\))) # (!\Decoder0~20_combout\ & (\key_status[11][7]~q\)))) # (!\Decoder1~7_combout\ & (((\key_status[11][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~7_combout\,
	datab => \Decoder0~20_combout\,
	datac => \key_status[11][7]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[11][7]~138_combout\);

-- Location: FF_X34_Y1_N11
\key_status[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[11][7]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[11][7]~q\);

-- Location: LCCOMB_X34_Y1_N24
\key_status[10][7]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[10][7]~139_combout\ = (\Decoder0~19_combout\ & ((\Decoder1~7_combout\ & ((\pressing~input_o\))) # (!\Decoder1~7_combout\ & (\key_status[10][7]~q\)))) # (!\Decoder0~19_combout\ & (((\key_status[10][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~19_combout\,
	datab => \Decoder1~7_combout\,
	datac => \key_status[10][7]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[10][7]~139_combout\);

-- Location: FF_X34_Y1_N25
\key_status[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[10][7]~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[10][7]~q\);

-- Location: LCCOMB_X34_Y1_N18
\to_usb_and_temp~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~91_combout\ = (\key_status[11][7]~q\ & (\from_usb[11]~input_o\ & ((\from_usb[10]~input_o\) # (!\key_status[10][7]~q\)))) # (!\key_status[11][7]~q\ & (((\from_usb[10]~input_o\)) # (!\key_status[10][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[11][7]~q\,
	datab => \key_status[10][7]~q\,
	datac => \from_usb[11]~input_o\,
	datad => \from_usb[10]~input_o\,
	combout => \to_usb_and_temp~91_combout\);

-- Location: LCCOMB_X37_Y3_N16
\key_status[12][7]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[12][7]~141_combout\ = (\Decoder1~7_combout\ & ((\Decoder0~22_combout\ & (\pressing~input_o\)) # (!\Decoder0~22_combout\ & ((\key_status[12][7]~q\))))) # (!\Decoder1~7_combout\ & (((\key_status[12][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~7_combout\,
	datac => \key_status[12][7]~q\,
	datad => \Decoder0~22_combout\,
	combout => \key_status[12][7]~141_combout\);

-- Location: FF_X37_Y3_N17
\key_status[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[12][7]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[12][7]~q\);

-- Location: LCCOMB_X34_Y3_N8
\key_status[13][7]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[13][7]~140_combout\ = (\Decoder1~7_combout\ & ((\Decoder0~23_combout\ & (\pressing~input_o\)) # (!\Decoder0~23_combout\ & ((\key_status[13][7]~q\))))) # (!\Decoder1~7_combout\ & (((\key_status[13][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~7_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[13][7]~q\,
	datad => \Decoder0~23_combout\,
	combout => \key_status[13][7]~140_combout\);

-- Location: FF_X34_Y3_N9
\key_status[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[13][7]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[13][7]~q\);

-- Location: LCCOMB_X34_Y3_N18
\to_usb_and_temp~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~92_combout\ = (\key_status[12][7]~q\ & (\from_usb[12]~input_o\ & ((\from_usb[13]~input_o\) # (!\key_status[13][7]~q\)))) # (!\key_status[12][7]~q\ & (((\from_usb[13]~input_o\)) # (!\key_status[13][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[12][7]~q\,
	datab => \key_status[13][7]~q\,
	datac => \from_usb[12]~input_o\,
	datad => \from_usb[13]~input_o\,
	combout => \to_usb_and_temp~92_combout\);

-- Location: LCCOMB_X34_Y3_N10
\to_usb_and_temp~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~94_combout\ = (\to_usb_and_temp~90_combout\ & (\to_usb_and_temp~93_combout\ & (\to_usb_and_temp~91_combout\ & \to_usb_and_temp~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~90_combout\,
	datab => \to_usb_and_temp~93_combout\,
	datac => \to_usb_and_temp~91_combout\,
	datad => \to_usb_and_temp~92_combout\,
	combout => \to_usb_and_temp~94_combout\);

-- Location: LCCOMB_X32_Y3_N28
\key_status[2][7]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[2][7]~129_combout\ = (\Decoder0~4_combout\ & ((\Decoder1~7_combout\ & (\pressing~input_o\)) # (!\Decoder1~7_combout\ & ((\key_status[2][7]~q\))))) # (!\Decoder0~4_combout\ & (((\key_status[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder0~4_combout\,
	datac => \key_status[2][7]~q\,
	datad => \Decoder1~7_combout\,
	combout => \key_status[2][7]~129_combout\);

-- Location: FF_X32_Y3_N29
\key_status[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[2][7]~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[2][7]~q\);

-- Location: LCCOMB_X36_Y3_N16
\key_status[3][7]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[3][7]~128_combout\ = (\Decoder0~5_combout\ & ((\Decoder1~7_combout\ & ((\pressing~input_o\))) # (!\Decoder1~7_combout\ & (\key_status[3][7]~q\)))) # (!\Decoder0~5_combout\ & (((\key_status[3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => \Decoder1~7_combout\,
	datac => \key_status[3][7]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[3][7]~128_combout\);

-- Location: FF_X36_Y3_N17
\key_status[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[3][7]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[3][7]~q\);

-- Location: LCCOMB_X32_Y3_N14
\to_usb_and_temp~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~85_combout\ = (\from_usb[3]~input_o\ & (((\from_usb[2]~input_o\)) # (!\key_status[2][7]~q\))) # (!\from_usb[3]~input_o\ & (!\key_status[3][7]~q\ & ((\from_usb[2]~input_o\) # (!\key_status[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[3]~input_o\,
	datab => \key_status[2][7]~q\,
	datac => \key_status[3][7]~q\,
	datad => \from_usb[2]~input_o\,
	combout => \to_usb_and_temp~85_combout\);

-- Location: LCCOMB_X36_Y1_N20
\key_status[0][7]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[0][7]~127_combout\ = (\Decoder1~7_combout\ & ((\Decoder0~1_combout\ & (\pressing~input_o\)) # (!\Decoder0~1_combout\ & ((\key_status[0][7]~q\))))) # (!\Decoder1~7_combout\ & (((\key_status[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~7_combout\,
	datac => \key_status[0][7]~q\,
	datad => \Decoder0~1_combout\,
	combout => \key_status[0][7]~127_combout\);

-- Location: FF_X36_Y1_N21
\key_status[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[0][7]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[0][7]~q\);

-- Location: LCCOMB_X36_Y1_N30
\key_status[1][7]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[1][7]~126_combout\ = (\Decoder1~7_combout\ & ((\Decoder0~2_combout\ & (\pressing~input_o\)) # (!\Decoder0~2_combout\ & ((\key_status[1][7]~q\))))) # (!\Decoder1~7_combout\ & (((\key_status[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressing~input_o\,
	datab => \Decoder1~7_combout\,
	datac => \key_status[1][7]~q\,
	datad => \Decoder0~2_combout\,
	combout => \key_status[1][7]~126_combout\);

-- Location: FF_X36_Y1_N31
\key_status[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[1][7]~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[1][7]~q\);

-- Location: LCCOMB_X36_Y1_N2
\to_usb_and_temp~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~84_combout\ = (\from_usb[0]~input_o\ & (((\from_usb[1]~input_o\) # (!\key_status[1][7]~q\)))) # (!\from_usb[0]~input_o\ & (!\key_status[0][7]~q\ & ((\from_usb[1]~input_o\) # (!\key_status[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[0]~input_o\,
	datab => \key_status[0][7]~q\,
	datac => \from_usb[1]~input_o\,
	datad => \key_status[1][7]~q\,
	combout => \to_usb_and_temp~84_combout\);

-- Location: LCCOMB_X36_Y2_N12
\key_status[4][7]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[4][7]~131_combout\ = (\Decoder1~7_combout\ & ((\Decoder0~7_combout\ & ((\pressing~input_o\))) # (!\Decoder0~7_combout\ & (\key_status[4][7]~q\)))) # (!\Decoder1~7_combout\ & (((\key_status[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~7_combout\,
	datab => \Decoder0~7_combout\,
	datac => \key_status[4][7]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[4][7]~131_combout\);

-- Location: FF_X36_Y2_N13
\key_status[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[4][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[4][7]~q\);

-- Location: LCCOMB_X36_Y2_N26
\key_status[5][7]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[5][7]~130_combout\ = (\Decoder0~8_combout\ & ((\Decoder1~7_combout\ & ((\pressing~input_o\))) # (!\Decoder1~7_combout\ & (\key_status[5][7]~q\)))) # (!\Decoder0~8_combout\ & (((\key_status[5][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~8_combout\,
	datab => \Decoder1~7_combout\,
	datac => \key_status[5][7]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[5][7]~130_combout\);

-- Location: FF_X36_Y2_N27
\key_status[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[5][7]~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[5][7]~q\);

-- Location: LCCOMB_X36_Y2_N18
\to_usb_and_temp~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~86_combout\ = (\key_status[4][7]~q\ & (\from_usb[4]~input_o\ & ((\from_usb[5]~input_o\) # (!\key_status[5][7]~q\)))) # (!\key_status[4][7]~q\ & ((\from_usb[5]~input_o\) # ((!\key_status[5][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[4][7]~q\,
	datab => \from_usb[5]~input_o\,
	datac => \key_status[5][7]~q\,
	datad => \from_usb[4]~input_o\,
	combout => \to_usb_and_temp~86_combout\);

-- Location: LCCOMB_X37_Y2_N22
\key_status[7][7]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[7][7]~132_combout\ = (\Decoder1~7_combout\ & ((\Decoder0~11_combout\ & (\pressing~input_o\)) # (!\Decoder0~11_combout\ & ((\key_status[7][7]~q\))))) # (!\Decoder1~7_combout\ & (((\key_status[7][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~7_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[7][7]~q\,
	datad => \Decoder0~11_combout\,
	combout => \key_status[7][7]~132_combout\);

-- Location: FF_X37_Y2_N23
\key_status[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[7][7]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[7][7]~q\);

-- Location: LCCOMB_X37_Y2_N8
\key_status[6][7]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[6][7]~133_combout\ = (\Decoder1~7_combout\ & ((\Decoder0~10_combout\ & (\pressing~input_o\)) # (!\Decoder0~10_combout\ & ((\key_status[6][7]~q\))))) # (!\Decoder1~7_combout\ & (((\key_status[6][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~7_combout\,
	datab => \pressing~input_o\,
	datac => \key_status[6][7]~q\,
	datad => \Decoder0~10_combout\,
	combout => \key_status[6][7]~133_combout\);

-- Location: FF_X37_Y2_N9
\key_status[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[6][7]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[6][7]~q\);

-- Location: LCCOMB_X37_Y2_N30
\to_usb_and_temp~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~87_combout\ = (\key_status[7][7]~q\ & (\from_usb[7]~input_o\ & ((\from_usb[6]~input_o\) # (!\key_status[6][7]~q\)))) # (!\key_status[7][7]~q\ & (((\from_usb[6]~input_o\)) # (!\key_status[6][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_status[7][7]~q\,
	datab => \key_status[6][7]~q\,
	datac => \from_usb[6]~input_o\,
	datad => \from_usb[7]~input_o\,
	combout => \to_usb_and_temp~87_combout\);

-- Location: LCCOMB_X36_Y3_N2
\to_usb_and_temp~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~88_combout\ = (\to_usb_and_temp~85_combout\ & (\to_usb_and_temp~84_combout\ & (\to_usb_and_temp~86_combout\ & \to_usb_and_temp~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~85_combout\,
	datab => \to_usb_and_temp~84_combout\,
	datac => \to_usb_and_temp~86_combout\,
	datad => \to_usb_and_temp~87_combout\,
	combout => \to_usb_and_temp~88_combout\);

-- Location: LCCOMB_X36_Y3_N18
\key_status[16][7]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[16][7]~135_combout\ = (\Decoder0~13_combout\ & ((\Decoder1~7_combout\ & ((\pressing~input_o\))) # (!\Decoder1~7_combout\ & (\key_status[16][7]~q\)))) # (!\Decoder0~13_combout\ & (((\key_status[16][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~13_combout\,
	datab => \Decoder1~7_combout\,
	datac => \key_status[16][7]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[16][7]~135_combout\);

-- Location: FF_X36_Y3_N19
\key_status[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[16][7]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[16][7]~q\);

-- Location: LCCOMB_X36_Y3_N20
\key_status[17][7]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_status[17][7]~134_combout\ = (\Decoder0~14_combout\ & ((\Decoder1~7_combout\ & ((\pressing~input_o\))) # (!\Decoder1~7_combout\ & (\key_status[17][7]~q\)))) # (!\Decoder0~14_combout\ & (((\key_status[17][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~14_combout\,
	datab => \Decoder1~7_combout\,
	datac => \key_status[17][7]~q\,
	datad => \pressing~input_o\,
	combout => \key_status[17][7]~134_combout\);

-- Location: FF_X36_Y3_N21
\key_status[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \strobe~input_o\,
	d => \key_status[17][7]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_status[17][7]~q\);

-- Location: LCCOMB_X32_Y3_N20
\to_usb_and_temp~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~89_combout\ = (\from_usb[16]~input_o\ & (((\from_usb[17]~input_o\) # (!\key_status[17][7]~q\)))) # (!\from_usb[16]~input_o\ & (!\key_status[16][7]~q\ & ((\from_usb[17]~input_o\) # (!\key_status[17][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_usb[16]~input_o\,
	datab => \key_status[16][7]~q\,
	datac => \from_usb[17]~input_o\,
	datad => \key_status[17][7]~q\,
	combout => \to_usb_and_temp~89_combout\);

-- Location: LCCOMB_X34_Y3_N12
\to_usb_and_temp~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \to_usb_and_temp~95_combout\ = (\to_usb_and_temp~94_combout\ & (\to_usb_and_temp~88_combout\ & \to_usb_and_temp~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_usb_and_temp~94_combout\,
	datab => \to_usb_and_temp~88_combout\,
	datac => \to_usb_and_temp~89_combout\,
	combout => \to_usb_and_temp~95_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_to_usb(0) <= \to_usb[0]~output_o\;

ww_to_usb(1) <= \to_usb[1]~output_o\;

ww_to_usb(2) <= \to_usb[2]~output_o\;

ww_to_usb(3) <= \to_usb[3]~output_o\;

ww_to_usb(4) <= \to_usb[4]~output_o\;

ww_to_usb(5) <= \to_usb[5]~output_o\;

ww_to_usb(6) <= \to_usb[6]~output_o\;

ww_to_usb(7) <= \to_usb[7]~output_o\;
END structure;


