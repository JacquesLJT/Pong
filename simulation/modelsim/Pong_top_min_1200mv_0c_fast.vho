-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/10/2021 17:23:44"

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

ENTITY 	Pong_top IS
    PORT (
	CLK_50 : IN std_logic;
	VGA_BUS_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_BUS_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_BUS_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_HS : OUT std_logic_vector(0 DOWNTO 0);
	VGA_VS : OUT std_logic_vector(0 DOWNTO 0);
	ORG_BUTTON : IN std_logic_vector(2 DOWNTO 0)
	);
END Pong_top;

-- Design Ports Information
-- VGA_BUS_R[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BUS_R[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BUS_R[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BUS_R[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BUS_G[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BUS_G[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BUS_G[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BUS_G[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BUS_B[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BUS_B[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BUS_B[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BUS_B[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS[0]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ORG_BUTTON[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ORG_BUTTON[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ORG_BUTTON[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Pong_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50 : std_logic;
SIGNAL ww_VGA_BUS_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_BUS_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_BUS_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_VGA_VS : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_ORG_BUTTON : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \m1|slow_clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_Driver|Add4~12_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~11\ : std_logic;
SIGNAL \VGA_Driver|Add3~13\ : std_logic;
SIGNAL \VGA_Driver|Add3~12_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~15\ : std_logic;
SIGNAL \VGA_Driver|Add3~14_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~17\ : std_logic;
SIGNAL \VGA_Driver|Add3~16_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~19\ : std_logic;
SIGNAL \VGA_Driver|Add3~18_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~20_combout\ : std_logic;
SIGNAL \draw_P1_paddle|Add1~4_combout\ : std_logic;
SIGNAL \draw_P1_paddle|Add1~8_combout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan2~1_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan2~3_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan2~5_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan2~7_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan2~9_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan2~11_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan2~13_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan2~15_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan2~17_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan2~18_combout\ : std_logic;
SIGNAL \draw_P2_paddle|Add1~1_cout\ : std_logic;
SIGNAL \draw_P2_paddle|Add1~3\ : std_logic;
SIGNAL \draw_P2_paddle|Add1~2_combout\ : std_logic;
SIGNAL \draw_P2_paddle|Add1~5\ : std_logic;
SIGNAL \draw_P2_paddle|Add1~4_combout\ : std_logic;
SIGNAL \draw_P2_paddle|Add1~7\ : std_logic;
SIGNAL \draw_P2_paddle|Add1~6_combout\ : std_logic;
SIGNAL \draw_P2_paddle|Add1~9\ : std_logic;
SIGNAL \draw_P2_paddle|Add1~8_combout\ : std_logic;
SIGNAL \draw_P2_paddle|Add1~11\ : std_logic;
SIGNAL \draw_P2_paddle|Add1~10_combout\ : std_logic;
SIGNAL \draw_P2_paddle|Add1~12_combout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan3~1_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan3~3_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan3~5_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan3~7_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan3~9_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan3~11_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan3~13_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan3~15_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan3~17_cout\ : std_logic;
SIGNAL \draw_P2_paddle|LessThan3~18_combout\ : std_logic;
SIGNAL \draw_ball|Add0~0_combout\ : std_logic;
SIGNAL \draw_ball|Add0~14_combout\ : std_logic;
SIGNAL \draw_ball|LessThan2~1_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~3_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~5_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~7_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~9_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~11_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~13_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~15_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~17_cout\ : std_logic;
SIGNAL \draw_ball|LessThan2~18_combout\ : std_logic;
SIGNAL \draw_ball|Add1~4_combout\ : std_logic;
SIGNAL \draw_ball|Add1~6_combout\ : std_logic;
SIGNAL \draw_ball|Add1~8_combout\ : std_logic;
SIGNAL \draw_ball|Add1~10_combout\ : std_logic;
SIGNAL \draw_ball|Add1~12_combout\ : std_logic;
SIGNAL \b1|Add11~0_combout\ : std_logic;
SIGNAL \b1|Add11~2_combout\ : std_logic;
SIGNAL \b1|Add11~4_combout\ : std_logic;
SIGNAL \b1|Add11~12_combout\ : std_logic;
SIGNAL \b1|LessThan4~1_cout\ : std_logic;
SIGNAL \b1|LessThan4~3_cout\ : std_logic;
SIGNAL \b1|LessThan4~5_cout\ : std_logic;
SIGNAL \b1|LessThan4~7_cout\ : std_logic;
SIGNAL \b1|LessThan4~9_cout\ : std_logic;
SIGNAL \b1|LessThan4~11_cout\ : std_logic;
SIGNAL \b1|LessThan4~13_cout\ : std_logic;
SIGNAL \b1|LessThan4~15_cout\ : std_logic;
SIGNAL \b1|LessThan4~17_cout\ : std_logic;
SIGNAL \b1|LessThan4~18_combout\ : std_logic;
SIGNAL \b1|Add5~4_combout\ : std_logic;
SIGNAL \b1|Add5~8_combout\ : std_logic;
SIGNAL \m1|Add0~1\ : std_logic;
SIGNAL \m1|Add0~0_combout\ : std_logic;
SIGNAL \m1|Add0~3\ : std_logic;
SIGNAL \m1|Add0~2_combout\ : std_logic;
SIGNAL \m1|Add0~5\ : std_logic;
SIGNAL \m1|Add0~4_combout\ : std_logic;
SIGNAL \m1|Add0~7\ : std_logic;
SIGNAL \m1|Add0~6_combout\ : std_logic;
SIGNAL \m1|Add0~9\ : std_logic;
SIGNAL \m1|Add0~8_combout\ : std_logic;
SIGNAL \m1|Add0~11\ : std_logic;
SIGNAL \m1|Add0~10_combout\ : std_logic;
SIGNAL \m1|Add0~13\ : std_logic;
SIGNAL \m1|Add0~12_combout\ : std_logic;
SIGNAL \m1|Add0~15\ : std_logic;
SIGNAL \m1|Add0~14_combout\ : std_logic;
SIGNAL \m1|Add0~17\ : std_logic;
SIGNAL \m1|Add0~16_combout\ : std_logic;
SIGNAL \m1|Add0~19\ : std_logic;
SIGNAL \m1|Add0~18_combout\ : std_logic;
SIGNAL \m1|Add0~21\ : std_logic;
SIGNAL \m1|Add0~20_combout\ : std_logic;
SIGNAL \m1|Add0~23\ : std_logic;
SIGNAL \m1|Add0~22_combout\ : std_logic;
SIGNAL \m1|Add0~25\ : std_logic;
SIGNAL \m1|Add0~24_combout\ : std_logic;
SIGNAL \m1|Add0~27\ : std_logic;
SIGNAL \m1|Add0~26_combout\ : std_logic;
SIGNAL \m1|Add0~29\ : std_logic;
SIGNAL \m1|Add0~28_combout\ : std_logic;
SIGNAL \m1|Add0~31\ : std_logic;
SIGNAL \m1|Add0~30_combout\ : std_logic;
SIGNAL \m1|Add0~33\ : std_logic;
SIGNAL \m1|Add0~32_combout\ : std_logic;
SIGNAL \m1|Add0~35\ : std_logic;
SIGNAL \m1|Add0~34_combout\ : std_logic;
SIGNAL \m1|Add0~37\ : std_logic;
SIGNAL \m1|Add0~36_combout\ : std_logic;
SIGNAL \m1|Add0~39\ : std_logic;
SIGNAL \m1|Add0~38_combout\ : std_logic;
SIGNAL \m1|Add0~41\ : std_logic;
SIGNAL \m1|Add0~40_combout\ : std_logic;
SIGNAL \m1|Add0~43\ : std_logic;
SIGNAL \m1|Add0~42_combout\ : std_logic;
SIGNAL \m1|Add0~45\ : std_logic;
SIGNAL \m1|Add0~44_combout\ : std_logic;
SIGNAL \m1|Add0~47\ : std_logic;
SIGNAL \m1|Add0~46_combout\ : std_logic;
SIGNAL \m1|Add0~49\ : std_logic;
SIGNAL \m1|Add0~48_combout\ : std_logic;
SIGNAL \m1|Add0~51\ : std_logic;
SIGNAL \m1|Add0~50_combout\ : std_logic;
SIGNAL \m1|Add0~53\ : std_logic;
SIGNAL \m1|Add0~52_combout\ : std_logic;
SIGNAL \m1|Add0~54_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal2~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~1_combout\ : std_logic;
SIGNAL \draw_center|box~q\ : std_logic;
SIGNAL \draw_P2_paddle|box~q\ : std_logic;
SIGNAL \draw_left_border|box~q\ : std_logic;
SIGNAL \VGA_Driver|Selector1~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector7~0_combout\ : std_logic;
SIGNAL \VGA_Driver|WideNor0~combout\ : std_logic;
SIGNAL \VGA_Driver|Equal3~2_combout\ : std_logic;
SIGNAL \draw_center|always0~0_combout\ : std_logic;
SIGNAL \draw_center|always0~1_combout\ : std_logic;
SIGNAL \draw_center|always0~2_combout\ : std_logic;
SIGNAL \draw_center|always0~3_combout\ : std_logic;
SIGNAL \draw_center|always0~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~4_combout\ : std_logic;
SIGNAL \draw_center|always0~5_combout\ : std_logic;
SIGNAL \draw_center|always0~6_combout\ : std_logic;
SIGNAL \draw_P1_paddle|always0~0_combout\ : std_logic;
SIGNAL \draw_P1_paddle|always0~3_combout\ : std_logic;
SIGNAL \draw_P2_paddle|always0~2_combout\ : std_logic;
SIGNAL \draw_P2_paddle|always0~3_combout\ : std_logic;
SIGNAL \draw_P2_paddle|always0~4_combout\ : std_logic;
SIGNAL \draw_top_border|always0~0_combout\ : std_logic;
SIGNAL \draw_bottom_border|always0~2_combout\ : std_logic;
SIGNAL \VGA_Driver|LessThan1~2_combout\ : std_logic;
SIGNAL \draw_right_border|always0~0_combout\ : std_logic;
SIGNAL \draw_right_border|always0~1_combout\ : std_logic;
SIGNAL \draw_left_border|always0~0_combout\ : std_logic;
SIGNAL \m1|slow_clock~q\ : std_logic;
SIGNAL \v1|P1_paddle_y[6]~31_combout\ : std_logic;
SIGNAL \b1|P2_y~5_combout\ : std_logic;
SIGNAL \b1|P2_y~9_combout\ : std_logic;
SIGNAL \b1|P2_y~11_combout\ : std_logic;
SIGNAL \b1|P2_y~12_combout\ : std_logic;
SIGNAL \b1|x_direction~0_combout\ : std_logic;
SIGNAL \b1|x_direction~1_combout\ : std_logic;
SIGNAL \m1|Equal0~0_combout\ : std_logic;
SIGNAL \m1|Equal0~1_combout\ : std_logic;
SIGNAL \m1|Equal0~2_combout\ : std_logic;
SIGNAL \m1|Equal0~3_combout\ : std_logic;
SIGNAL \m1|Equal0~4_combout\ : std_logic;
SIGNAL \m1|Equal0~5_combout\ : std_logic;
SIGNAL \m1|Equal0~6_combout\ : std_logic;
SIGNAL \m1|Equal0~7_combout\ : std_logic;
SIGNAL \m1|Equal0~8_combout\ : std_logic;
SIGNAL \m1|slow_clock~0_combout\ : std_logic;
SIGNAL \b1|x_direction~9_combout\ : std_logic;
SIGNAL \b1|y_direction~5_combout\ : std_logic;
SIGNAL \m1|i~0_combout\ : std_logic;
SIGNAL \m1|i~1_combout\ : std_logic;
SIGNAL \m1|i~2_combout\ : std_logic;
SIGNAL \m1|i~3_combout\ : std_logic;
SIGNAL \m1|i~4_combout\ : std_logic;
SIGNAL \m1|i~5_combout\ : std_logic;
SIGNAL \m1|i~6_combout\ : std_logic;
SIGNAL \m1|i~7_combout\ : std_logic;
SIGNAL \draw_P2_paddle|always0~5_combout\ : std_logic;
SIGNAL \ORG_BUTTON[1]~input_o\ : std_logic;
SIGNAL \m1|slow_clock~clkctrl_outclk\ : std_logic;
SIGNAL \CLK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \m1|slow_clock~feeder_combout\ : std_logic;
SIGNAL \CLK_50~input_o\ : std_logic;
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_Driver|Add3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~1\ : std_logic;
SIGNAL \VGA_Driver|Add4~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~16_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~20\ : std_logic;
SIGNAL \VGA_Driver|Add4~22\ : std_logic;
SIGNAL \VGA_Driver|Add4~25_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~27_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~28_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal2~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal2~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector3~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~11\ : std_logic;
SIGNAL \VGA_Driver|Add4~13\ : std_logic;
SIGNAL \VGA_Driver|Add4~18\ : std_logic;
SIGNAL \VGA_Driver|Add4~19_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~24_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal3~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~17_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector2~0_combout\ : std_logic;
SIGNAL \VGA_Driver|WideNor0~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~3\ : std_logic;
SIGNAL \VGA_Driver|Add4~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~15_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~5\ : std_logic;
SIGNAL \VGA_Driver|Add4~6_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~14_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~7\ : std_logic;
SIGNAL \VGA_Driver|Add4~9\ : std_logic;
SIGNAL \VGA_Driver|Add4~10_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|WideNor0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector5~0_combout\ : std_logic;
SIGNAL \draw_top_border|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal4~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal4~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~1\ : std_logic;
SIGNAL \VGA_Driver|Add3~2_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~3_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~3\ : std_logic;
SIGNAL \VGA_Driver|Add3~4_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal7~0_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~4_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~5\ : std_logic;
SIGNAL \VGA_Driver|Add3~6_combout\ : std_logic;
SIGNAL \VGA_Driver|VS_counter~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~7\ : std_logic;
SIGNAL \VGA_Driver|Add3~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Add3~9\ : std_logic;
SIGNAL \VGA_Driver|Add3~10_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector7~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector7~2_combout\ : std_logic;
SIGNAL \b1|y_ball[0]~15\ : std_logic;
SIGNAL \b1|y_ball[1]~17\ : std_logic;
SIGNAL \b1|y_ball[2]~19\ : std_logic;
SIGNAL \b1|y_ball[3]~21\ : std_logic;
SIGNAL \b1|y_ball[4]~22_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \ORG_BUTTON[0]~input_o\ : std_logic;
SIGNAL \b1|x_ball[0]~10_combout\ : std_logic;
SIGNAL \b1|x_ball[0]~feeder_combout\ : std_logic;
SIGNAL \v1|Add0~12_combout\ : std_logic;
SIGNAL \v1|P1_paddle_y[0]~11\ : std_logic;
SIGNAL \v1|P1_paddle_y[1]~13\ : std_logic;
SIGNAL \v1|P1_paddle_y[2]~15\ : std_logic;
SIGNAL \v1|P1_paddle_y[3]~17\ : std_logic;
SIGNAL \v1|P1_paddle_y[4]~19\ : std_logic;
SIGNAL \v1|P1_paddle_y[5]~20_combout\ : std_logic;
SIGNAL \v1|P1_paddle_y[6]~23\ : std_logic;
SIGNAL \v1|P1_paddle_y[7]~25\ : std_logic;
SIGNAL \v1|P1_paddle_y[8]~26_combout\ : std_logic;
SIGNAL \v1|P1_paddle_y[2]~14_combout\ : std_logic;
SIGNAL \v1|P1_paddle_y[8]~27\ : std_logic;
SIGNAL \v1|P1_paddle_y[9]~28_combout\ : std_logic;
SIGNAL \v1|P1_paddle_y[1]~12_combout\ : std_logic;
SIGNAL \v1|P1_paddle_y[6]~30_combout\ : std_logic;
SIGNAL \v1|P1_paddle_y[6]~32_combout\ : std_logic;
SIGNAL \ORG_BUTTON[2]~input_o\ : std_logic;
SIGNAL \v1|P1_paddle_y[6]~33_combout\ : std_logic;
SIGNAL \v1|P1_paddle_y[5]~21\ : std_logic;
SIGNAL \v1|P1_paddle_y[6]~22_combout\ : std_logic;
SIGNAL \v1|P1_paddle_y[4]~18_combout\ : std_logic;
SIGNAL \v1|P1_paddle_y[3]~16_combout\ : std_logic;
SIGNAL \v1|Add0~1_cout\ : std_logic;
SIGNAL \v1|Add0~3\ : std_logic;
SIGNAL \v1|Add0~5\ : std_logic;
SIGNAL \v1|Add0~7\ : std_logic;
SIGNAL \v1|Add0~8_combout\ : std_logic;
SIGNAL \v1|Add0~10_combout\ : std_logic;
SIGNAL \v1|Add0~4_combout\ : std_logic;
SIGNAL \v1|LessThan0~0_combout\ : std_logic;
SIGNAL \v1|always0~0_combout\ : std_logic;
SIGNAL \v1|P1_paddle_y[7]~24_combout\ : std_logic;
SIGNAL \v1|Add0~9\ : std_logic;
SIGNAL \v1|Add0~11\ : std_logic;
SIGNAL \v1|Add0~13\ : std_logic;
SIGNAL \v1|Add0~14_combout\ : std_logic;
SIGNAL \b1|x_ball[0]~11\ : std_logic;
SIGNAL \b1|x_ball[1]~13\ : std_logic;
SIGNAL \b1|x_ball[2]~15\ : std_logic;
SIGNAL \b1|x_ball[3]~17\ : std_logic;
SIGNAL \b1|x_ball[4]~19\ : std_logic;
SIGNAL \b1|x_ball[5]~21\ : std_logic;
SIGNAL \b1|x_ball[6]~23\ : std_logic;
SIGNAL \b1|x_ball[7]~24_combout\ : std_logic;
SIGNAL \b1|x_ball[2]~14_combout\ : std_logic;
SIGNAL \b1|x_ball[4]~18_combout\ : std_logic;
SIGNAL \b1|x_ball[1]~12_combout\ : std_logic;
SIGNAL \b1|x_direction~3_combout\ : std_logic;
SIGNAL \b1|x_ball[7]~25\ : std_logic;
SIGNAL \b1|x_ball[8]~26_combout\ : std_logic;
SIGNAL \b1|x_direction~4_combout\ : std_logic;
SIGNAL \b1|y_ball[4]~23\ : std_logic;
SIGNAL \b1|y_ball[5]~25\ : std_logic;
SIGNAL \b1|y_ball[6]~27\ : std_logic;
SIGNAL \b1|y_ball[7]~29\ : std_logic;
SIGNAL \b1|y_ball[8]~30_combout\ : std_logic;
SIGNAL \v1|Add0~6_combout\ : std_logic;
SIGNAL \b1|y_ball[5]~24_combout\ : std_logic;
SIGNAL \v1|Add0~2_combout\ : std_logic;
SIGNAL \b1|y_ball[2]~18_combout\ : std_logic;
SIGNAL \b1|y_ball[0]~14_combout\ : std_logic;
SIGNAL \b1|LessThan2~1_cout\ : std_logic;
SIGNAL \b1|LessThan2~3_cout\ : std_logic;
SIGNAL \b1|LessThan2~5_cout\ : std_logic;
SIGNAL \b1|LessThan2~7_cout\ : std_logic;
SIGNAL \b1|LessThan2~9_cout\ : std_logic;
SIGNAL \b1|LessThan2~11_cout\ : std_logic;
SIGNAL \b1|LessThan2~13_cout\ : std_logic;
SIGNAL \b1|LessThan2~15_cout\ : std_logic;
SIGNAL \b1|LessThan2~17_cout\ : std_logic;
SIGNAL \b1|LessThan2~18_combout\ : std_logic;
SIGNAL \b1|x_direction~5_combout\ : std_logic;
SIGNAL \b1|x_ball[8]~27\ : std_logic;
SIGNAL \b1|x_ball[9]~28_combout\ : std_logic;
SIGNAL \b1|x_direction~2_combout\ : std_logic;
SIGNAL \b1|y_ball[6]~26_combout\ : std_logic;
SIGNAL \b1|Add11~1\ : std_logic;
SIGNAL \b1|Add11~3\ : std_logic;
SIGNAL \b1|Add11~5\ : std_logic;
SIGNAL \b1|Add11~7\ : std_logic;
SIGNAL \b1|Add11~9\ : std_logic;
SIGNAL \b1|Add11~11\ : std_logic;
SIGNAL \b1|Add11~13\ : std_logic;
SIGNAL \b1|Add11~14_combout\ : std_logic;
SIGNAL \b1|y_ball[7]~28_combout\ : std_logic;
SIGNAL \b1|y_ball[1]~16_combout\ : std_logic;
SIGNAL \b1|y_ball[3]~20_combout\ : std_logic;
SIGNAL \b1|LessThan7~0_combout\ : std_logic;
SIGNAL \b1|LessThan7~1_combout\ : std_logic;
SIGNAL \b1|P2_y~1_combout\ : std_logic;
SIGNAL \b1|P2_y~2_combout\ : std_logic;
SIGNAL \b1|Add11~10_combout\ : std_logic;
SIGNAL \b1|P2_y~6_combout\ : std_logic;
SIGNAL \b1|Add11~8_combout\ : std_logic;
SIGNAL \b1|P2_y~4_combout\ : std_logic;
SIGNAL \b1|P2_y~7_combout\ : std_logic;
SIGNAL \b1|Add11~6_combout\ : std_logic;
SIGNAL \b1|P2_y~8_combout\ : std_logic;
SIGNAL \b1|LessThan6~0_combout\ : std_logic;
SIGNAL \b1|P2_y~3_combout\ : std_logic;
SIGNAL \b1|P2_y~10_combout\ : std_logic;
SIGNAL \b1|Add5~1_cout\ : std_logic;
SIGNAL \b1|Add5~3\ : std_logic;
SIGNAL \b1|Add5~5\ : std_logic;
SIGNAL \b1|Add5~7\ : std_logic;
SIGNAL \b1|Add5~9\ : std_logic;
SIGNAL \b1|Add5~11\ : std_logic;
SIGNAL \b1|Add5~13\ : std_logic;
SIGNAL \b1|Add5~14_combout\ : std_logic;
SIGNAL \b1|x_ball[5]~20_combout\ : std_logic;
SIGNAL \b1|LessThan1~1_cout\ : std_logic;
SIGNAL \b1|LessThan1~3_cout\ : std_logic;
SIGNAL \b1|LessThan1~5_cout\ : std_logic;
SIGNAL \b1|LessThan1~7_cout\ : std_logic;
SIGNAL \b1|LessThan1~9_cout\ : std_logic;
SIGNAL \b1|LessThan1~11_cout\ : std_logic;
SIGNAL \b1|LessThan1~13_cout\ : std_logic;
SIGNAL \b1|LessThan1~15_cout\ : std_logic;
SIGNAL \b1|LessThan1~17_cout\ : std_logic;
SIGNAL \b1|LessThan1~18_combout\ : std_logic;
SIGNAL \b1|x_direction~6_combout\ : std_logic;
SIGNAL \b1|Add5~12_combout\ : std_logic;
SIGNAL \b1|Add5~10_combout\ : std_logic;
SIGNAL \b1|Add5~6_combout\ : std_logic;
SIGNAL \b1|Add5~2_combout\ : std_logic;
SIGNAL \b1|P2_y~0_combout\ : std_logic;
SIGNAL \b1|P2_y~13_combout\ : std_logic;
SIGNAL \b1|LessThan5~1_cout\ : std_logic;
SIGNAL \b1|LessThan5~3_cout\ : std_logic;
SIGNAL \b1|LessThan5~5_cout\ : std_logic;
SIGNAL \b1|LessThan5~7_cout\ : std_logic;
SIGNAL \b1|LessThan5~9_cout\ : std_logic;
SIGNAL \b1|LessThan5~11_cout\ : std_logic;
SIGNAL \b1|LessThan5~13_cout\ : std_logic;
SIGNAL \b1|LessThan5~15_cout\ : std_logic;
SIGNAL \b1|LessThan5~17_cout\ : std_logic;
SIGNAL \b1|LessThan5~18_combout\ : std_logic;
SIGNAL \b1|x_direction~7_combout\ : std_logic;
SIGNAL \b1|x_direction~8_combout\ : std_logic;
SIGNAL \b1|x_ball[6]~22_combout\ : std_logic;
SIGNAL \b1|y_ball[6]~11_combout\ : std_logic;
SIGNAL \b1|x_ball[3]~16_combout\ : std_logic;
SIGNAL \b1|y_ball[6]~10_combout\ : std_logic;
SIGNAL \b1|y_ball[6]~12_combout\ : std_logic;
SIGNAL \b1|y_ball[6]~13_combout\ : std_logic;
SIGNAL \b1|y_direction~1_combout\ : std_logic;
SIGNAL \b1|y_direction~2_combout\ : std_logic;
SIGNAL \b1|y_direction~3_combout\ : std_logic;
SIGNAL \b1|y_direction~0_combout\ : std_logic;
SIGNAL \b1|y_direction~4_combout\ : std_logic;
SIGNAL \b1|y_ball[8]~31\ : std_logic;
SIGNAL \b1|y_ball[9]~32_combout\ : std_logic;
SIGNAL \draw_ball|Add1~1\ : std_logic;
SIGNAL \draw_ball|Add1~3\ : std_logic;
SIGNAL \draw_ball|Add1~5\ : std_logic;
SIGNAL \draw_ball|Add1~7\ : std_logic;
SIGNAL \draw_ball|Add1~9\ : std_logic;
SIGNAL \draw_ball|Add1~11\ : std_logic;
SIGNAL \draw_ball|Add1~13\ : std_logic;
SIGNAL \draw_ball|Add1~15\ : std_logic;
SIGNAL \draw_ball|Add1~16_combout\ : std_logic;
SIGNAL \draw_ball|Add1~14_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~1\ : std_logic;
SIGNAL \VGA_Driver|Add1~3\ : std_logic;
SIGNAL \VGA_Driver|Add1~5\ : std_logic;
SIGNAL \VGA_Driver|Add1~7\ : std_logic;
SIGNAL \VGA_Driver|Add1~9\ : std_logic;
SIGNAL \VGA_Driver|Add1~11\ : std_logic;
SIGNAL \VGA_Driver|Add1~13\ : std_logic;
SIGNAL \VGA_Driver|Add1~14_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~12_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~10_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~8_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~6_combout\ : std_logic;
SIGNAL \draw_ball|Add1~2_combout\ : std_logic;
SIGNAL \draw_ball|Add1~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~0_combout\ : std_logic;
SIGNAL \draw_ball|LessThan3~1_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~3_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~5_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~7_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~9_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~11_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~13_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~15_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~17_cout\ : std_logic;
SIGNAL \draw_ball|LessThan3~18_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~3_combout\ : std_logic;
SIGNAL \draw_ball|LessThan0~1_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~3_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~5_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~7_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~9_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~11_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~13_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~15_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~17_cout\ : std_logic;
SIGNAL \draw_ball|LessThan0~18_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~21_combout\ : std_logic;
SIGNAL \VGA_Driver|Add4~23_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~1_combout\ : std_logic;
SIGNAL \draw_ball|Add0~1\ : std_logic;
SIGNAL \draw_ball|Add0~3\ : std_logic;
SIGNAL \draw_ball|Add0~5\ : std_logic;
SIGNAL \draw_ball|Add0~7\ : std_logic;
SIGNAL \draw_ball|Add0~9\ : std_logic;
SIGNAL \draw_ball|Add0~11\ : std_logic;
SIGNAL \draw_ball|Add0~13\ : std_logic;
SIGNAL \draw_ball|Add0~15\ : std_logic;
SIGNAL \draw_ball|Add0~16_combout\ : std_logic;
SIGNAL \VGA_Driver|Add0~2_combout\ : std_logic;
SIGNAL \draw_ball|Add0~12_combout\ : std_logic;
SIGNAL \draw_ball|Add0~10_combout\ : std_logic;
SIGNAL \draw_ball|Add0~8_combout\ : std_logic;
SIGNAL \draw_ball|Add0~6_combout\ : std_logic;
SIGNAL \draw_ball|Add0~4_combout\ : std_logic;
SIGNAL \draw_ball|Add0~2_combout\ : std_logic;
SIGNAL \draw_ball|LessThan1~1_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~3_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~5_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~7_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~9_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~11_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~13_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~15_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~17_cout\ : std_logic;
SIGNAL \draw_ball|LessThan1~18_combout\ : std_logic;
SIGNAL \draw_ball|always0~0_combout\ : std_logic;
SIGNAL \draw_ball|box~q\ : std_logic;
SIGNAL \draw_P1_paddle|always0~2_combout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan0~0_combout\ : std_logic;
SIGNAL \draw_right_border|always0~2_combout\ : std_logic;
SIGNAL \draw_right_border|box~q\ : std_logic;
SIGNAL \draw_P1_paddle|always0~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~4_combout\ : std_logic;
SIGNAL \v1|P1_paddle_y[0]~10_combout\ : std_logic;
SIGNAL \v1|P1_paddle_y[0]~feeder_combout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan2~1_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan2~3_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan2~5_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan2~7_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan2~9_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan2~11_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan2~13_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan2~15_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan2~17_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan2~18_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~15\ : std_logic;
SIGNAL \VGA_Driver|Add1~17\ : std_logic;
SIGNAL \VGA_Driver|Add1~18_combout\ : std_logic;
SIGNAL \draw_P1_paddle|Add1~1_cout\ : std_logic;
SIGNAL \draw_P1_paddle|Add1~3\ : std_logic;
SIGNAL \draw_P1_paddle|Add1~5\ : std_logic;
SIGNAL \draw_P1_paddle|Add1~7\ : std_logic;
SIGNAL \draw_P1_paddle|Add1~9\ : std_logic;
SIGNAL \draw_P1_paddle|Add1~11\ : std_logic;
SIGNAL \draw_P1_paddle|Add1~12_combout\ : std_logic;
SIGNAL \draw_P1_paddle|Add1~10_combout\ : std_logic;
SIGNAL \draw_P1_paddle|Add1~6_combout\ : std_logic;
SIGNAL \draw_P1_paddle|Add1~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~2_combout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan3~1_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan3~3_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan3~5_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan3~7_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan3~9_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan3~11_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan3~13_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan3~15_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan3~17_cout\ : std_logic;
SIGNAL \draw_P1_paddle|LessThan3~18_combout\ : std_logic;
SIGNAL \draw_P1_paddle|always0~4_combout\ : std_logic;
SIGNAL \draw_P1_paddle|box~q\ : std_logic;
SIGNAL \draw_bottom_border|LessThan2~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~19\ : std_logic;
SIGNAL \VGA_Driver|Add1~21\ : std_logic;
SIGNAL \VGA_Driver|Add1~22_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~20_combout\ : std_logic;
SIGNAL \VGA_Driver|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Add1~16_combout\ : std_logic;
SIGNAL \draw_top_border|always0~1_combout\ : std_logic;
SIGNAL \VGA_Driver|LessThan1~1_combout\ : std_logic;
SIGNAL \draw_top_border|LessThan0~1_combout\ : std_logic;
SIGNAL \draw_bottom_border|always0~0_combout\ : std_logic;
SIGNAL \draw_bottom_border|always0~1_combout\ : std_logic;
SIGNAL \draw_bottom_border|LessThan2~1_combout\ : std_logic;
SIGNAL \draw_bottom_border|always0~3_combout\ : std_logic;
SIGNAL \draw_bottom_border|box~q\ : std_logic;
SIGNAL \draw_top_border|always0~2_combout\ : std_logic;
SIGNAL \draw_top_border|always0~3_combout\ : std_logic;
SIGNAL \draw_top_border|box~q\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \pixel_color~0_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R~0_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_R[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_G[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_G[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_G[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_G[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_B~0_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_B[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_B[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_B[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|VGA_BUS_B[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector0~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector6~0_combout\ : std_logic;
SIGNAL \VGA_Driver|Equal5~2_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector6~1_combout\ : std_logic;
SIGNAL \VGA_Driver|Selector6~2_combout\ : std_logic;
SIGNAL \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b1|y_direction\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_HS\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b1|x_direction\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \VGA_Driver|HS_counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \v1|P1_paddle_y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_BUS_B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b1|y_ball\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_Driver|H_visible\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b1|P2_y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_Driver|VGA_VS\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b1|x_ball\ : std_logic_vector(9 DOWNTO 0);
SIGNAL pixel_color : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA_Driver|VS_counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \VGA_Driver|V_visible\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m1|i\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \VGA_Driver|ALT_INV_VGA_VS\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_Driver|ALT_INV_VGA_HS\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_CLK_50 <= CLK_50;
VGA_BUS_R <= ww_VGA_BUS_R;
VGA_BUS_G <= ww_VGA_BUS_G;
VGA_BUS_B <= ww_VGA_BUS_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
ww_ORG_BUTTON <= ORG_BUTTON;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK_50~input_o\);

\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\(0) <= \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\(0);
\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\(1) <= \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\(1);
\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\(2) <= \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\(2);
\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\(3) <= \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\(3);
\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\(4) <= \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\(4);

\m1|slow_clock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \m1|slow_clock~q\);

\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk\(0));

\CLK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50~input_o\);
\VGA_Driver|ALT_INV_VGA_VS\(0) <= NOT \VGA_Driver|VGA_VS\(0);
\VGA_Driver|ALT_INV_VGA_HS\(0) <= NOT \VGA_Driver|VGA_HS\(0);

-- Location: LCCOMB_X30_Y25_N20
\VGA_Driver|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~12_combout\ = (\VGA_Driver|HS_counter\(6) & (\VGA_Driver|Add4~11\ $ (GND))) # (!\VGA_Driver|HS_counter\(6) & (!\VGA_Driver|Add4~11\ & VCC))
-- \VGA_Driver|Add4~13\ = CARRY((\VGA_Driver|HS_counter\(6) & !\VGA_Driver|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(6),
	datad => VCC,
	cin => \VGA_Driver|Add4~11\,
	combout => \VGA_Driver|Add4~12_combout\,
	cout => \VGA_Driver|Add4~13\);

-- Location: LCCOMB_X30_Y24_N14
\VGA_Driver|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~10_combout\ = (\VGA_Driver|VS_counter\(5) & (!\VGA_Driver|Add3~9\)) # (!\VGA_Driver|VS_counter\(5) & ((\VGA_Driver|Add3~9\) # (GND)))
-- \VGA_Driver|Add3~11\ = CARRY((!\VGA_Driver|Add3~9\) # (!\VGA_Driver|VS_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(5),
	datad => VCC,
	cin => \VGA_Driver|Add3~9\,
	combout => \VGA_Driver|Add3~10_combout\,
	cout => \VGA_Driver|Add3~11\);

-- Location: LCCOMB_X30_Y24_N16
\VGA_Driver|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~12_combout\ = (\VGA_Driver|VS_counter\(6) & (\VGA_Driver|Add3~11\ $ (GND))) # (!\VGA_Driver|VS_counter\(6) & (!\VGA_Driver|Add3~11\ & VCC))
-- \VGA_Driver|Add3~13\ = CARRY((\VGA_Driver|VS_counter\(6) & !\VGA_Driver|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(6),
	datad => VCC,
	cin => \VGA_Driver|Add3~11\,
	combout => \VGA_Driver|Add3~12_combout\,
	cout => \VGA_Driver|Add3~13\);

-- Location: LCCOMB_X30_Y24_N18
\VGA_Driver|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~14_combout\ = (\VGA_Driver|VS_counter\(7) & (!\VGA_Driver|Add3~13\)) # (!\VGA_Driver|VS_counter\(7) & ((\VGA_Driver|Add3~13\) # (GND)))
-- \VGA_Driver|Add3~15\ = CARRY((!\VGA_Driver|Add3~13\) # (!\VGA_Driver|VS_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(7),
	datad => VCC,
	cin => \VGA_Driver|Add3~13\,
	combout => \VGA_Driver|Add3~14_combout\,
	cout => \VGA_Driver|Add3~15\);

-- Location: LCCOMB_X30_Y24_N20
\VGA_Driver|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~16_combout\ = (\VGA_Driver|VS_counter\(8) & (\VGA_Driver|Add3~15\ $ (GND))) # (!\VGA_Driver|VS_counter\(8) & (!\VGA_Driver|Add3~15\ & VCC))
-- \VGA_Driver|Add3~17\ = CARRY((\VGA_Driver|VS_counter\(8) & !\VGA_Driver|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(8),
	datad => VCC,
	cin => \VGA_Driver|Add3~15\,
	combout => \VGA_Driver|Add3~16_combout\,
	cout => \VGA_Driver|Add3~17\);

-- Location: LCCOMB_X30_Y24_N22
\VGA_Driver|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~18_combout\ = (\VGA_Driver|VS_counter\(9) & (!\VGA_Driver|Add3~17\)) # (!\VGA_Driver|VS_counter\(9) & ((\VGA_Driver|Add3~17\) # (GND)))
-- \VGA_Driver|Add3~19\ = CARRY((!\VGA_Driver|Add3~17\) # (!\VGA_Driver|VS_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(9),
	datad => VCC,
	cin => \VGA_Driver|Add3~17\,
	combout => \VGA_Driver|Add3~18_combout\,
	cout => \VGA_Driver|Add3~19\);

-- Location: LCCOMB_X30_Y24_N24
\VGA_Driver|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~20_combout\ = \VGA_Driver|Add3~19\ $ (!\VGA_Driver|VS_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VS_counter\(10),
	cin => \VGA_Driver|Add3~19\,
	combout => \VGA_Driver|Add3~20_combout\);

-- Location: LCCOMB_X23_Y25_N20
\draw_P1_paddle|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|Add1~4_combout\ = (\v1|P1_paddle_y\(5) & (\draw_P1_paddle|Add1~3\ $ (GND))) # (!\v1|P1_paddle_y\(5) & ((GND) # (!\draw_P1_paddle|Add1~3\)))
-- \draw_P1_paddle|Add1~5\ = CARRY((!\draw_P1_paddle|Add1~3\) # (!\v1|P1_paddle_y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v1|P1_paddle_y\(5),
	datad => VCC,
	cin => \draw_P1_paddle|Add1~3\,
	combout => \draw_P1_paddle|Add1~4_combout\,
	cout => \draw_P1_paddle|Add1~5\);

-- Location: LCCOMB_X23_Y25_N24
\draw_P1_paddle|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|Add1~8_combout\ = (\v1|P1_paddle_y\(7) & (!\draw_P1_paddle|Add1~7\ & VCC)) # (!\v1|P1_paddle_y\(7) & (\draw_P1_paddle|Add1~7\ $ (GND)))
-- \draw_P1_paddle|Add1~9\ = CARRY((!\v1|P1_paddle_y\(7) & !\draw_P1_paddle|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v1|P1_paddle_y\(7),
	datad => VCC,
	cin => \draw_P1_paddle|Add1~7\,
	combout => \draw_P1_paddle|Add1~8_combout\,
	cout => \draw_P1_paddle|Add1~9\);

-- Location: LCCOMB_X22_Y24_N6
\draw_P2_paddle|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan2~1_cout\ = CARRY((!\b1|P2_y\(0) & \VGA_Driver|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(0),
	datab => \VGA_Driver|Add1~0_combout\,
	datad => VCC,
	cout => \draw_P2_paddle|LessThan2~1_cout\);

-- Location: LCCOMB_X22_Y24_N8
\draw_P2_paddle|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan2~3_cout\ = CARRY((\VGA_Driver|Add1~2_combout\ & (\b1|P2_y\(1) & !\draw_P2_paddle|LessThan2~1_cout\)) # (!\VGA_Driver|Add1~2_combout\ & ((\b1|P2_y\(1)) # (!\draw_P2_paddle|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~2_combout\,
	datab => \b1|P2_y\(1),
	datad => VCC,
	cin => \draw_P2_paddle|LessThan2~1_cout\,
	cout => \draw_P2_paddle|LessThan2~3_cout\);

-- Location: LCCOMB_X22_Y24_N10
\draw_P2_paddle|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan2~5_cout\ = CARRY((\b1|P2_y\(2) & (\VGA_Driver|Add1~4_combout\ & !\draw_P2_paddle|LessThan2~3_cout\)) # (!\b1|P2_y\(2) & ((\VGA_Driver|Add1~4_combout\) # (!\draw_P2_paddle|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(2),
	datab => \VGA_Driver|Add1~4_combout\,
	datad => VCC,
	cin => \draw_P2_paddle|LessThan2~3_cout\,
	cout => \draw_P2_paddle|LessThan2~5_cout\);

-- Location: LCCOMB_X22_Y24_N12
\draw_P2_paddle|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan2~7_cout\ = CARRY((\VGA_Driver|Add1~6_combout\ & (\b1|P2_y\(3) & !\draw_P2_paddle|LessThan2~5_cout\)) # (!\VGA_Driver|Add1~6_combout\ & ((\b1|P2_y\(3)) # (!\draw_P2_paddle|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~6_combout\,
	datab => \b1|P2_y\(3),
	datad => VCC,
	cin => \draw_P2_paddle|LessThan2~5_cout\,
	cout => \draw_P2_paddle|LessThan2~7_cout\);

-- Location: LCCOMB_X22_Y24_N14
\draw_P2_paddle|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan2~9_cout\ = CARRY((\VGA_Driver|Add1~8_combout\ & ((!\draw_P2_paddle|LessThan2~7_cout\) # (!\b1|P2_y\(4)))) # (!\VGA_Driver|Add1~8_combout\ & (!\b1|P2_y\(4) & !\draw_P2_paddle|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~8_combout\,
	datab => \b1|P2_y\(4),
	datad => VCC,
	cin => \draw_P2_paddle|LessThan2~7_cout\,
	cout => \draw_P2_paddle|LessThan2~9_cout\);

-- Location: LCCOMB_X22_Y24_N16
\draw_P2_paddle|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan2~11_cout\ = CARRY((\VGA_Driver|Add1~10_combout\ & (\b1|P2_y\(5) & !\draw_P2_paddle|LessThan2~9_cout\)) # (!\VGA_Driver|Add1~10_combout\ & ((\b1|P2_y\(5)) # (!\draw_P2_paddle|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~10_combout\,
	datab => \b1|P2_y\(5),
	datad => VCC,
	cin => \draw_P2_paddle|LessThan2~9_cout\,
	cout => \draw_P2_paddle|LessThan2~11_cout\);

-- Location: LCCOMB_X22_Y24_N18
\draw_P2_paddle|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan2~13_cout\ = CARRY((\VGA_Driver|Add1~12_combout\ & ((!\draw_P2_paddle|LessThan2~11_cout\) # (!\b1|P2_y\(6)))) # (!\VGA_Driver|Add1~12_combout\ & (!\b1|P2_y\(6) & !\draw_P2_paddle|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~12_combout\,
	datab => \b1|P2_y\(6),
	datad => VCC,
	cin => \draw_P2_paddle|LessThan2~11_cout\,
	cout => \draw_P2_paddle|LessThan2~13_cout\);

-- Location: LCCOMB_X22_Y24_N20
\draw_P2_paddle|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan2~15_cout\ = CARRY((\b1|P2_y\(7) & ((!\draw_P2_paddle|LessThan2~13_cout\) # (!\VGA_Driver|Add1~14_combout\))) # (!\b1|P2_y\(7) & (!\VGA_Driver|Add1~14_combout\ & !\draw_P2_paddle|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(7),
	datab => \VGA_Driver|Add1~14_combout\,
	datad => VCC,
	cin => \draw_P2_paddle|LessThan2~13_cout\,
	cout => \draw_P2_paddle|LessThan2~15_cout\);

-- Location: LCCOMB_X22_Y24_N22
\draw_P2_paddle|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan2~17_cout\ = CARRY((\b1|P2_y\(8) & (\VGA_Driver|Add1~16_combout\ & !\draw_P2_paddle|LessThan2~15_cout\)) # (!\b1|P2_y\(8) & ((\VGA_Driver|Add1~16_combout\) # (!\draw_P2_paddle|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(8),
	datab => \VGA_Driver|Add1~16_combout\,
	datad => VCC,
	cin => \draw_P2_paddle|LessThan2~15_cout\,
	cout => \draw_P2_paddle|LessThan2~17_cout\);

-- Location: LCCOMB_X22_Y24_N24
\draw_P2_paddle|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan2~18_combout\ = (\VGA_Driver|Add1~18_combout\ & ((\draw_P2_paddle|LessThan2~17_cout\) # (!\b1|P2_y\(9)))) # (!\VGA_Driver|Add1~18_combout\ & (\draw_P2_paddle|LessThan2~17_cout\ & !\b1|P2_y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Add1~18_combout\,
	datad => \b1|P2_y\(9),
	cin => \draw_P2_paddle|LessThan2~17_cout\,
	combout => \draw_P2_paddle|LessThan2~18_combout\);

-- Location: LCCOMB_X22_Y23_N14
\draw_P2_paddle|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|Add1~1_cout\ = CARRY(\b1|P2_y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(3),
	datad => VCC,
	cout => \draw_P2_paddle|Add1~1_cout\);

-- Location: LCCOMB_X22_Y23_N16
\draw_P2_paddle|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|Add1~2_combout\ = (\b1|P2_y\(4) & (\draw_P2_paddle|Add1~1_cout\ & VCC)) # (!\b1|P2_y\(4) & (!\draw_P2_paddle|Add1~1_cout\))
-- \draw_P2_paddle|Add1~3\ = CARRY((!\b1|P2_y\(4) & !\draw_P2_paddle|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|P2_y\(4),
	datad => VCC,
	cin => \draw_P2_paddle|Add1~1_cout\,
	combout => \draw_P2_paddle|Add1~2_combout\,
	cout => \draw_P2_paddle|Add1~3\);

-- Location: LCCOMB_X22_Y23_N18
\draw_P2_paddle|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|Add1~4_combout\ = (\b1|P2_y\(5) & ((GND) # (!\draw_P2_paddle|Add1~3\))) # (!\b1|P2_y\(5) & (\draw_P2_paddle|Add1~3\ $ (GND)))
-- \draw_P2_paddle|Add1~5\ = CARRY((\b1|P2_y\(5)) # (!\draw_P2_paddle|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|P2_y\(5),
	datad => VCC,
	cin => \draw_P2_paddle|Add1~3\,
	combout => \draw_P2_paddle|Add1~4_combout\,
	cout => \draw_P2_paddle|Add1~5\);

-- Location: LCCOMB_X22_Y23_N20
\draw_P2_paddle|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|Add1~6_combout\ = (\b1|P2_y\(6) & (\draw_P2_paddle|Add1~5\ & VCC)) # (!\b1|P2_y\(6) & (!\draw_P2_paddle|Add1~5\))
-- \draw_P2_paddle|Add1~7\ = CARRY((!\b1|P2_y\(6) & !\draw_P2_paddle|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|P2_y\(6),
	datad => VCC,
	cin => \draw_P2_paddle|Add1~5\,
	combout => \draw_P2_paddle|Add1~6_combout\,
	cout => \draw_P2_paddle|Add1~7\);

-- Location: LCCOMB_X22_Y23_N22
\draw_P2_paddle|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|Add1~8_combout\ = (\b1|P2_y\(7) & (\draw_P2_paddle|Add1~7\ $ (GND))) # (!\b1|P2_y\(7) & (!\draw_P2_paddle|Add1~7\ & VCC))
-- \draw_P2_paddle|Add1~9\ = CARRY((\b1|P2_y\(7) & !\draw_P2_paddle|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|P2_y\(7),
	datad => VCC,
	cin => \draw_P2_paddle|Add1~7\,
	combout => \draw_P2_paddle|Add1~8_combout\,
	cout => \draw_P2_paddle|Add1~9\);

-- Location: LCCOMB_X22_Y23_N24
\draw_P2_paddle|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|Add1~10_combout\ = (\b1|P2_y\(8) & (!\draw_P2_paddle|Add1~9\)) # (!\b1|P2_y\(8) & ((\draw_P2_paddle|Add1~9\) # (GND)))
-- \draw_P2_paddle|Add1~11\ = CARRY((!\draw_P2_paddle|Add1~9\) # (!\b1|P2_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|P2_y\(8),
	datad => VCC,
	cin => \draw_P2_paddle|Add1~9\,
	combout => \draw_P2_paddle|Add1~10_combout\,
	cout => \draw_P2_paddle|Add1~11\);

-- Location: LCCOMB_X22_Y23_N26
\draw_P2_paddle|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|Add1~12_combout\ = \draw_P2_paddle|Add1~11\ $ (!\b1|P2_y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b1|P2_y\(9),
	cin => \draw_P2_paddle|Add1~11\,
	combout => \draw_P2_paddle|Add1~12_combout\);

-- Location: LCCOMB_X21_Y23_N6
\draw_P2_paddle|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan3~1_cout\ = CARRY((!\VGA_Driver|Add1~0_combout\ & \b1|P2_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~0_combout\,
	datab => \b1|P2_y\(0),
	datad => VCC,
	cout => \draw_P2_paddle|LessThan3~1_cout\);

-- Location: LCCOMB_X21_Y23_N8
\draw_P2_paddle|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan3~3_cout\ = CARRY((\VGA_Driver|Add1~2_combout\ & ((!\draw_P2_paddle|LessThan3~1_cout\) # (!\b1|P2_y\(1)))) # (!\VGA_Driver|Add1~2_combout\ & (!\b1|P2_y\(1) & !\draw_P2_paddle|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~2_combout\,
	datab => \b1|P2_y\(1),
	datad => VCC,
	cin => \draw_P2_paddle|LessThan3~1_cout\,
	cout => \draw_P2_paddle|LessThan3~3_cout\);

-- Location: LCCOMB_X21_Y23_N10
\draw_P2_paddle|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan3~5_cout\ = CARRY((\VGA_Driver|Add1~4_combout\ & (\b1|P2_y\(2) & !\draw_P2_paddle|LessThan3~3_cout\)) # (!\VGA_Driver|Add1~4_combout\ & ((\b1|P2_y\(2)) # (!\draw_P2_paddle|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~4_combout\,
	datab => \b1|P2_y\(2),
	datad => VCC,
	cin => \draw_P2_paddle|LessThan3~3_cout\,
	cout => \draw_P2_paddle|LessThan3~5_cout\);

-- Location: LCCOMB_X21_Y23_N12
\draw_P2_paddle|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan3~7_cout\ = CARRY((\b1|P2_y\(3) & ((\VGA_Driver|Add1~6_combout\) # (!\draw_P2_paddle|LessThan3~5_cout\))) # (!\b1|P2_y\(3) & (\VGA_Driver|Add1~6_combout\ & !\draw_P2_paddle|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(3),
	datab => \VGA_Driver|Add1~6_combout\,
	datad => VCC,
	cin => \draw_P2_paddle|LessThan3~5_cout\,
	cout => \draw_P2_paddle|LessThan3~7_cout\);

-- Location: LCCOMB_X21_Y23_N14
\draw_P2_paddle|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan3~9_cout\ = CARRY((\VGA_Driver|Add1~8_combout\ & (\draw_P2_paddle|Add1~2_combout\ & !\draw_P2_paddle|LessThan3~7_cout\)) # (!\VGA_Driver|Add1~8_combout\ & ((\draw_P2_paddle|Add1~2_combout\) # (!\draw_P2_paddle|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~8_combout\,
	datab => \draw_P2_paddle|Add1~2_combout\,
	datad => VCC,
	cin => \draw_P2_paddle|LessThan3~7_cout\,
	cout => \draw_P2_paddle|LessThan3~9_cout\);

-- Location: LCCOMB_X21_Y23_N16
\draw_P2_paddle|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan3~11_cout\ = CARRY((\VGA_Driver|Add1~10_combout\ & ((!\draw_P2_paddle|LessThan3~9_cout\) # (!\draw_P2_paddle|Add1~4_combout\))) # (!\VGA_Driver|Add1~10_combout\ & (!\draw_P2_paddle|Add1~4_combout\ & 
-- !\draw_P2_paddle|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~10_combout\,
	datab => \draw_P2_paddle|Add1~4_combout\,
	datad => VCC,
	cin => \draw_P2_paddle|LessThan3~9_cout\,
	cout => \draw_P2_paddle|LessThan3~11_cout\);

-- Location: LCCOMB_X21_Y23_N18
\draw_P2_paddle|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan3~13_cout\ = CARRY((\draw_P2_paddle|Add1~6_combout\ & ((!\draw_P2_paddle|LessThan3~11_cout\) # (!\VGA_Driver|Add1~12_combout\))) # (!\draw_P2_paddle|Add1~6_combout\ & (!\VGA_Driver|Add1~12_combout\ & 
-- !\draw_P2_paddle|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_P2_paddle|Add1~6_combout\,
	datab => \VGA_Driver|Add1~12_combout\,
	datad => VCC,
	cin => \draw_P2_paddle|LessThan3~11_cout\,
	cout => \draw_P2_paddle|LessThan3~13_cout\);

-- Location: LCCOMB_X21_Y23_N20
\draw_P2_paddle|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan3~15_cout\ = CARRY((\VGA_Driver|Add1~14_combout\ & ((!\draw_P2_paddle|LessThan3~13_cout\) # (!\draw_P2_paddle|Add1~8_combout\))) # (!\VGA_Driver|Add1~14_combout\ & (!\draw_P2_paddle|Add1~8_combout\ & 
-- !\draw_P2_paddle|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~14_combout\,
	datab => \draw_P2_paddle|Add1~8_combout\,
	datad => VCC,
	cin => \draw_P2_paddle|LessThan3~13_cout\,
	cout => \draw_P2_paddle|LessThan3~15_cout\);

-- Location: LCCOMB_X21_Y23_N22
\draw_P2_paddle|LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan3~17_cout\ = CARRY((\VGA_Driver|Add1~16_combout\ & (\draw_P2_paddle|Add1~10_combout\ & !\draw_P2_paddle|LessThan3~15_cout\)) # (!\VGA_Driver|Add1~16_combout\ & ((\draw_P2_paddle|Add1~10_combout\) # 
-- (!\draw_P2_paddle|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datab => \draw_P2_paddle|Add1~10_combout\,
	datad => VCC,
	cin => \draw_P2_paddle|LessThan3~15_cout\,
	cout => \draw_P2_paddle|LessThan3~17_cout\);

-- Location: LCCOMB_X21_Y23_N24
\draw_P2_paddle|LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|LessThan3~18_combout\ = (\VGA_Driver|Add1~18_combout\ & (\draw_P2_paddle|LessThan3~17_cout\ & \draw_P2_paddle|Add1~12_combout\)) # (!\VGA_Driver|Add1~18_combout\ & ((\draw_P2_paddle|LessThan3~17_cout\) # 
-- (\draw_P2_paddle|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Add1~18_combout\,
	datad => \draw_P2_paddle|Add1~12_combout\,
	cin => \draw_P2_paddle|LessThan3~17_cout\,
	combout => \draw_P2_paddle|LessThan3~18_combout\);

-- Location: LCCOMB_X28_Y23_N6
\draw_ball|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~0_combout\ = (\b1|x_ball\(0) & (\b1|x_ball\(1) $ (VCC))) # (!\b1|x_ball\(0) & (\b1|x_ball\(1) & VCC))
-- \draw_ball|Add0~1\ = CARRY((\b1|x_ball\(0) & \b1|x_ball\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(0),
	datab => \b1|x_ball\(1),
	datad => VCC,
	combout => \draw_ball|Add0~0_combout\,
	cout => \draw_ball|Add0~1\);

-- Location: LCCOMB_X28_Y23_N20
\draw_ball|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~14_combout\ = (\b1|x_ball\(8) & (!\draw_ball|Add0~13\)) # (!\b1|x_ball\(8) & ((\draw_ball|Add0~13\) # (GND)))
-- \draw_ball|Add0~15\ = CARRY((!\draw_ball|Add0~13\) # (!\b1|x_ball\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(8),
	datad => VCC,
	cin => \draw_ball|Add0~13\,
	combout => \draw_ball|Add0~14_combout\,
	cout => \draw_ball|Add0~15\);

-- Location: LCCOMB_X26_Y27_N4
\draw_ball|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~1_cout\ = CARRY((!\b1|y_ball\(0) & \VGA_Driver|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(0),
	datab => \VGA_Driver|Add1~0_combout\,
	datad => VCC,
	cout => \draw_ball|LessThan2~1_cout\);

-- Location: LCCOMB_X26_Y27_N6
\draw_ball|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~3_cout\ = CARRY((\VGA_Driver|Add1~2_combout\ & (\b1|y_ball\(1) & !\draw_ball|LessThan2~1_cout\)) # (!\VGA_Driver|Add1~2_combout\ & ((\b1|y_ball\(1)) # (!\draw_ball|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~2_combout\,
	datab => \b1|y_ball\(1),
	datad => VCC,
	cin => \draw_ball|LessThan2~1_cout\,
	cout => \draw_ball|LessThan2~3_cout\);

-- Location: LCCOMB_X26_Y27_N8
\draw_ball|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~5_cout\ = CARRY((\b1|y_ball\(2) & (\VGA_Driver|Add1~4_combout\ & !\draw_ball|LessThan2~3_cout\)) # (!\b1|y_ball\(2) & ((\VGA_Driver|Add1~4_combout\) # (!\draw_ball|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(2),
	datab => \VGA_Driver|Add1~4_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan2~3_cout\,
	cout => \draw_ball|LessThan2~5_cout\);

-- Location: LCCOMB_X26_Y27_N10
\draw_ball|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~7_cout\ = CARRY((\VGA_Driver|Add1~6_combout\ & (\b1|y_ball\(3) & !\draw_ball|LessThan2~5_cout\)) # (!\VGA_Driver|Add1~6_combout\ & ((\b1|y_ball\(3)) # (!\draw_ball|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~6_combout\,
	datab => \b1|y_ball\(3),
	datad => VCC,
	cin => \draw_ball|LessThan2~5_cout\,
	cout => \draw_ball|LessThan2~7_cout\);

-- Location: LCCOMB_X26_Y27_N12
\draw_ball|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~9_cout\ = CARRY((\b1|y_ball\(4) & (\VGA_Driver|Add1~8_combout\ & !\draw_ball|LessThan2~7_cout\)) # (!\b1|y_ball\(4) & ((\VGA_Driver|Add1~8_combout\) # (!\draw_ball|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(4),
	datab => \VGA_Driver|Add1~8_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan2~7_cout\,
	cout => \draw_ball|LessThan2~9_cout\);

-- Location: LCCOMB_X26_Y27_N14
\draw_ball|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~11_cout\ = CARRY((\b1|y_ball\(5) & ((!\draw_ball|LessThan2~9_cout\) # (!\VGA_Driver|Add1~10_combout\))) # (!\b1|y_ball\(5) & (!\VGA_Driver|Add1~10_combout\ & !\draw_ball|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(5),
	datab => \VGA_Driver|Add1~10_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan2~9_cout\,
	cout => \draw_ball|LessThan2~11_cout\);

-- Location: LCCOMB_X26_Y27_N16
\draw_ball|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~13_cout\ = CARRY((\VGA_Driver|Add1~12_combout\ & ((!\draw_ball|LessThan2~11_cout\) # (!\b1|y_ball\(6)))) # (!\VGA_Driver|Add1~12_combout\ & (!\b1|y_ball\(6) & !\draw_ball|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~12_combout\,
	datab => \b1|y_ball\(6),
	datad => VCC,
	cin => \draw_ball|LessThan2~11_cout\,
	cout => \draw_ball|LessThan2~13_cout\);

-- Location: LCCOMB_X26_Y27_N18
\draw_ball|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~15_cout\ = CARRY((\b1|y_ball\(7) & ((!\draw_ball|LessThan2~13_cout\) # (!\VGA_Driver|Add1~14_combout\))) # (!\b1|y_ball\(7) & (!\VGA_Driver|Add1~14_combout\ & !\draw_ball|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(7),
	datab => \VGA_Driver|Add1~14_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan2~13_cout\,
	cout => \draw_ball|LessThan2~15_cout\);

-- Location: LCCOMB_X26_Y27_N20
\draw_ball|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~17_cout\ = CARRY((\b1|y_ball\(8) & (\VGA_Driver|Add1~16_combout\ & !\draw_ball|LessThan2~15_cout\)) # (!\b1|y_ball\(8) & ((\VGA_Driver|Add1~16_combout\) # (!\draw_ball|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(8),
	datab => \VGA_Driver|Add1~16_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan2~15_cout\,
	cout => \draw_ball|LessThan2~17_cout\);

-- Location: LCCOMB_X26_Y27_N22
\draw_ball|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan2~18_combout\ = (\VGA_Driver|Add1~18_combout\ & ((\draw_ball|LessThan2~17_cout\) # (!\b1|y_ball\(9)))) # (!\VGA_Driver|Add1~18_combout\ & (\draw_ball|LessThan2~17_cout\ & !\b1|y_ball\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~18_combout\,
	datad => \b1|y_ball\(9),
	cin => \draw_ball|LessThan2~17_cout\,
	combout => \draw_ball|LessThan2~18_combout\);

-- Location: LCCOMB_X27_Y27_N8
\draw_ball|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~4_combout\ = (\b1|y_ball\(3) & (\draw_ball|Add1~3\ $ (GND))) # (!\b1|y_ball\(3) & (!\draw_ball|Add1~3\ & VCC))
-- \draw_ball|Add1~5\ = CARRY((\b1|y_ball\(3) & !\draw_ball|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(3),
	datad => VCC,
	cin => \draw_ball|Add1~3\,
	combout => \draw_ball|Add1~4_combout\,
	cout => \draw_ball|Add1~5\);

-- Location: LCCOMB_X27_Y27_N10
\draw_ball|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~6_combout\ = (\b1|y_ball\(4) & (!\draw_ball|Add1~5\)) # (!\b1|y_ball\(4) & ((\draw_ball|Add1~5\) # (GND)))
-- \draw_ball|Add1~7\ = CARRY((!\draw_ball|Add1~5\) # (!\b1|y_ball\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_ball\(4),
	datad => VCC,
	cin => \draw_ball|Add1~5\,
	combout => \draw_ball|Add1~6_combout\,
	cout => \draw_ball|Add1~7\);

-- Location: LCCOMB_X27_Y27_N12
\draw_ball|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~8_combout\ = (\b1|y_ball\(5) & (\draw_ball|Add1~7\ $ (GND))) # (!\b1|y_ball\(5) & (!\draw_ball|Add1~7\ & VCC))
-- \draw_ball|Add1~9\ = CARRY((\b1|y_ball\(5) & !\draw_ball|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(5),
	datad => VCC,
	cin => \draw_ball|Add1~7\,
	combout => \draw_ball|Add1~8_combout\,
	cout => \draw_ball|Add1~9\);

-- Location: LCCOMB_X27_Y27_N14
\draw_ball|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~10_combout\ = (\b1|y_ball\(6) & (!\draw_ball|Add1~9\)) # (!\b1|y_ball\(6) & ((\draw_ball|Add1~9\) # (GND)))
-- \draw_ball|Add1~11\ = CARRY((!\draw_ball|Add1~9\) # (!\b1|y_ball\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_ball\(6),
	datad => VCC,
	cin => \draw_ball|Add1~9\,
	combout => \draw_ball|Add1~10_combout\,
	cout => \draw_ball|Add1~11\);

-- Location: LCCOMB_X27_Y27_N16
\draw_ball|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~12_combout\ = (\b1|y_ball\(7) & (\draw_ball|Add1~11\ $ (GND))) # (!\b1|y_ball\(7) & (!\draw_ball|Add1~11\ & VCC))
-- \draw_ball|Add1~13\ = CARRY((\b1|y_ball\(7) & !\draw_ball|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_ball\(7),
	datad => VCC,
	cin => \draw_ball|Add1~11\,
	combout => \draw_ball|Add1~12_combout\,
	cout => \draw_ball|Add1~13\);

-- Location: LCCOMB_X24_Y23_N4
\b1|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add11~0_combout\ = \b1|y_ball\(2) $ (VCC)
-- \b1|Add11~1\ = CARRY(\b1|y_ball\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(2),
	datad => VCC,
	combout => \b1|Add11~0_combout\,
	cout => \b1|Add11~1\);

-- Location: LCCOMB_X24_Y23_N6
\b1|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add11~2_combout\ = (\b1|y_ball\(3) & (!\b1|Add11~1\)) # (!\b1|y_ball\(3) & ((\b1|Add11~1\) # (GND)))
-- \b1|Add11~3\ = CARRY((!\b1|Add11~1\) # (!\b1|y_ball\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(3),
	datad => VCC,
	cin => \b1|Add11~1\,
	combout => \b1|Add11~2_combout\,
	cout => \b1|Add11~3\);

-- Location: LCCOMB_X24_Y23_N8
\b1|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add11~4_combout\ = (\b1|y_ball\(4) & (\b1|Add11~3\ $ (GND))) # (!\b1|y_ball\(4) & (!\b1|Add11~3\ & VCC))
-- \b1|Add11~5\ = CARRY((\b1|y_ball\(4) & !\b1|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_ball\(4),
	datad => VCC,
	cin => \b1|Add11~3\,
	combout => \b1|Add11~4_combout\,
	cout => \b1|Add11~5\);

-- Location: LCCOMB_X24_Y23_N16
\b1|Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add11~12_combout\ = (\b1|y_ball\(8) & ((GND) # (!\b1|Add11~11\))) # (!\b1|y_ball\(8) & (\b1|Add11~11\ $ (GND)))
-- \b1|Add11~13\ = CARRY((\b1|y_ball\(8)) # (!\b1|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(8),
	datad => VCC,
	cin => \b1|Add11~11\,
	combout => \b1|Add11~12_combout\,
	cout => \b1|Add11~13\);

-- Location: LCCOMB_X26_Y24_N6
\b1|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan4~1_cout\ = CARRY((!\b1|P2_y\(0) & \b1|y_ball\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(0),
	datab => \b1|y_ball\(0),
	datad => VCC,
	cout => \b1|LessThan4~1_cout\);

-- Location: LCCOMB_X26_Y24_N8
\b1|LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan4~3_cout\ = CARRY((\b1|P2_y\(1) & ((!\b1|LessThan4~1_cout\) # (!\b1|y_ball\(1)))) # (!\b1|P2_y\(1) & (!\b1|y_ball\(1) & !\b1|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(1),
	datab => \b1|y_ball\(1),
	datad => VCC,
	cin => \b1|LessThan4~1_cout\,
	cout => \b1|LessThan4~3_cout\);

-- Location: LCCOMB_X26_Y24_N10
\b1|LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan4~5_cout\ = CARRY((\b1|P2_y\(2) & (\b1|y_ball\(2) & !\b1|LessThan4~3_cout\)) # (!\b1|P2_y\(2) & ((\b1|y_ball\(2)) # (!\b1|LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(2),
	datab => \b1|y_ball\(2),
	datad => VCC,
	cin => \b1|LessThan4~3_cout\,
	cout => \b1|LessThan4~5_cout\);

-- Location: LCCOMB_X26_Y24_N12
\b1|LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan4~7_cout\ = CARRY((\b1|P2_y\(3) & ((!\b1|LessThan4~5_cout\) # (!\b1|y_ball\(3)))) # (!\b1|P2_y\(3) & (!\b1|y_ball\(3) & !\b1|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(3),
	datab => \b1|y_ball\(3),
	datad => VCC,
	cin => \b1|LessThan4~5_cout\,
	cout => \b1|LessThan4~7_cout\);

-- Location: LCCOMB_X26_Y24_N14
\b1|LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan4~9_cout\ = CARRY((\b1|y_ball\(4) & ((!\b1|LessThan4~7_cout\) # (!\b1|P2_y\(4)))) # (!\b1|y_ball\(4) & (!\b1|P2_y\(4) & !\b1|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(4),
	datab => \b1|P2_y\(4),
	datad => VCC,
	cin => \b1|LessThan4~7_cout\,
	cout => \b1|LessThan4~9_cout\);

-- Location: LCCOMB_X26_Y24_N16
\b1|LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan4~11_cout\ = CARRY((\b1|y_ball\(5) & (\b1|P2_y\(5) & !\b1|LessThan4~9_cout\)) # (!\b1|y_ball\(5) & ((\b1|P2_y\(5)) # (!\b1|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(5),
	datab => \b1|P2_y\(5),
	datad => VCC,
	cin => \b1|LessThan4~9_cout\,
	cout => \b1|LessThan4~11_cout\);

-- Location: LCCOMB_X26_Y24_N18
\b1|LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan4~13_cout\ = CARRY((\b1|y_ball\(6) & ((!\b1|LessThan4~11_cout\) # (!\b1|P2_y\(6)))) # (!\b1|y_ball\(6) & (!\b1|P2_y\(6) & !\b1|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(6),
	datab => \b1|P2_y\(6),
	datad => VCC,
	cin => \b1|LessThan4~11_cout\,
	cout => \b1|LessThan4~13_cout\);

-- Location: LCCOMB_X26_Y24_N20
\b1|LessThan4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan4~15_cout\ = CARRY((\b1|P2_y\(7) & ((!\b1|LessThan4~13_cout\) # (!\b1|y_ball\(7)))) # (!\b1|P2_y\(7) & (!\b1|y_ball\(7) & !\b1|LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(7),
	datab => \b1|y_ball\(7),
	datad => VCC,
	cin => \b1|LessThan4~13_cout\,
	cout => \b1|LessThan4~15_cout\);

-- Location: LCCOMB_X26_Y24_N22
\b1|LessThan4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan4~17_cout\ = CARRY((\b1|y_ball\(8) & ((!\b1|LessThan4~15_cout\) # (!\b1|P2_y\(8)))) # (!\b1|y_ball\(8) & (!\b1|P2_y\(8) & !\b1|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(8),
	datab => \b1|P2_y\(8),
	datad => VCC,
	cin => \b1|LessThan4~15_cout\,
	cout => \b1|LessThan4~17_cout\);

-- Location: LCCOMB_X26_Y24_N24
\b1|LessThan4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan4~18_combout\ = (\b1|P2_y\(9) & (\b1|LessThan4~17_cout\ & \b1|y_ball\(9))) # (!\b1|P2_y\(9) & ((\b1|LessThan4~17_cout\) # (\b1|y_ball\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(9),
	datad => \b1|y_ball\(9),
	cin => \b1|LessThan4~17_cout\,
	combout => \b1|LessThan4~18_combout\);

-- Location: LCCOMB_X23_Y23_N4
\b1|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add5~4_combout\ = (\b1|P2_y\(5) & ((GND) # (!\b1|Add5~3\))) # (!\b1|P2_y\(5) & (\b1|Add5~3\ $ (GND)))
-- \b1|Add5~5\ = CARRY((\b1|P2_y\(5)) # (!\b1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|P2_y\(5),
	datad => VCC,
	cin => \b1|Add5~3\,
	combout => \b1|Add5~4_combout\,
	cout => \b1|Add5~5\);

-- Location: LCCOMB_X23_Y23_N8
\b1|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add5~8_combout\ = (\b1|P2_y\(7) & (\b1|Add5~7\ $ (GND))) # (!\b1|P2_y\(7) & (!\b1|Add5~7\ & VCC))
-- \b1|Add5~9\ = CARRY((\b1|P2_y\(7) & !\b1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|P2_y\(7),
	datad => VCC,
	cin => \b1|Add5~7\,
	combout => \b1|Add5~8_combout\,
	cout => \b1|Add5~9\);

-- Location: LCCOMB_X2_Y14_N4
\m1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~0_combout\ = \m1|i\(0) $ (VCC)
-- \m1|Add0~1\ = CARRY(\m1|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(0),
	datad => VCC,
	combout => \m1|Add0~0_combout\,
	cout => \m1|Add0~1\);

-- Location: LCCOMB_X2_Y14_N6
\m1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~2_combout\ = (\m1|i\(1) & (!\m1|Add0~1\)) # (!\m1|i\(1) & ((\m1|Add0~1\) # (GND)))
-- \m1|Add0~3\ = CARRY((!\m1|Add0~1\) # (!\m1|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(1),
	datad => VCC,
	cin => \m1|Add0~1\,
	combout => \m1|Add0~2_combout\,
	cout => \m1|Add0~3\);

-- Location: LCCOMB_X2_Y14_N8
\m1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~4_combout\ = (\m1|i\(2) & (\m1|Add0~3\ $ (GND))) # (!\m1|i\(2) & (!\m1|Add0~3\ & VCC))
-- \m1|Add0~5\ = CARRY((\m1|i\(2) & !\m1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(2),
	datad => VCC,
	cin => \m1|Add0~3\,
	combout => \m1|Add0~4_combout\,
	cout => \m1|Add0~5\);

-- Location: LCCOMB_X2_Y14_N10
\m1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~6_combout\ = (\m1|i\(3) & (!\m1|Add0~5\)) # (!\m1|i\(3) & ((\m1|Add0~5\) # (GND)))
-- \m1|Add0~7\ = CARRY((!\m1|Add0~5\) # (!\m1|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(3),
	datad => VCC,
	cin => \m1|Add0~5\,
	combout => \m1|Add0~6_combout\,
	cout => \m1|Add0~7\);

-- Location: LCCOMB_X2_Y14_N12
\m1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~8_combout\ = (\m1|i\(4) & (\m1|Add0~7\ $ (GND))) # (!\m1|i\(4) & (!\m1|Add0~7\ & VCC))
-- \m1|Add0~9\ = CARRY((\m1|i\(4) & !\m1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(4),
	datad => VCC,
	cin => \m1|Add0~7\,
	combout => \m1|Add0~8_combout\,
	cout => \m1|Add0~9\);

-- Location: LCCOMB_X2_Y14_N14
\m1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~10_combout\ = (\m1|i\(5) & (!\m1|Add0~9\)) # (!\m1|i\(5) & ((\m1|Add0~9\) # (GND)))
-- \m1|Add0~11\ = CARRY((!\m1|Add0~9\) # (!\m1|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(5),
	datad => VCC,
	cin => \m1|Add0~9\,
	combout => \m1|Add0~10_combout\,
	cout => \m1|Add0~11\);

-- Location: LCCOMB_X2_Y14_N16
\m1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~12_combout\ = (\m1|i\(6) & (\m1|Add0~11\ $ (GND))) # (!\m1|i\(6) & (!\m1|Add0~11\ & VCC))
-- \m1|Add0~13\ = CARRY((\m1|i\(6) & !\m1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(6),
	datad => VCC,
	cin => \m1|Add0~11\,
	combout => \m1|Add0~12_combout\,
	cout => \m1|Add0~13\);

-- Location: LCCOMB_X2_Y14_N18
\m1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~14_combout\ = (\m1|i\(7) & (!\m1|Add0~13\)) # (!\m1|i\(7) & ((\m1|Add0~13\) # (GND)))
-- \m1|Add0~15\ = CARRY((!\m1|Add0~13\) # (!\m1|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(7),
	datad => VCC,
	cin => \m1|Add0~13\,
	combout => \m1|Add0~14_combout\,
	cout => \m1|Add0~15\);

-- Location: LCCOMB_X2_Y14_N20
\m1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~16_combout\ = (\m1|i\(8) & (\m1|Add0~15\ $ (GND))) # (!\m1|i\(8) & (!\m1|Add0~15\ & VCC))
-- \m1|Add0~17\ = CARRY((\m1|i\(8) & !\m1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(8),
	datad => VCC,
	cin => \m1|Add0~15\,
	combout => \m1|Add0~16_combout\,
	cout => \m1|Add0~17\);

-- Location: LCCOMB_X2_Y14_N22
\m1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~18_combout\ = (\m1|i\(9) & (!\m1|Add0~17\)) # (!\m1|i\(9) & ((\m1|Add0~17\) # (GND)))
-- \m1|Add0~19\ = CARRY((!\m1|Add0~17\) # (!\m1|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(9),
	datad => VCC,
	cin => \m1|Add0~17\,
	combout => \m1|Add0~18_combout\,
	cout => \m1|Add0~19\);

-- Location: LCCOMB_X2_Y14_N24
\m1|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~20_combout\ = (\m1|i\(10) & (\m1|Add0~19\ $ (GND))) # (!\m1|i\(10) & (!\m1|Add0~19\ & VCC))
-- \m1|Add0~21\ = CARRY((\m1|i\(10) & !\m1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(10),
	datad => VCC,
	cin => \m1|Add0~19\,
	combout => \m1|Add0~20_combout\,
	cout => \m1|Add0~21\);

-- Location: LCCOMB_X2_Y14_N26
\m1|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~22_combout\ = (\m1|i\(11) & (!\m1|Add0~21\)) # (!\m1|i\(11) & ((\m1|Add0~21\) # (GND)))
-- \m1|Add0~23\ = CARRY((!\m1|Add0~21\) # (!\m1|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(11),
	datad => VCC,
	cin => \m1|Add0~21\,
	combout => \m1|Add0~22_combout\,
	cout => \m1|Add0~23\);

-- Location: LCCOMB_X2_Y14_N28
\m1|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~24_combout\ = (\m1|i\(12) & (\m1|Add0~23\ $ (GND))) # (!\m1|i\(12) & (!\m1|Add0~23\ & VCC))
-- \m1|Add0~25\ = CARRY((\m1|i\(12) & !\m1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(12),
	datad => VCC,
	cin => \m1|Add0~23\,
	combout => \m1|Add0~24_combout\,
	cout => \m1|Add0~25\);

-- Location: LCCOMB_X2_Y14_N30
\m1|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~26_combout\ = (\m1|i\(13) & (!\m1|Add0~25\)) # (!\m1|i\(13) & ((\m1|Add0~25\) # (GND)))
-- \m1|Add0~27\ = CARRY((!\m1|Add0~25\) # (!\m1|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(13),
	datad => VCC,
	cin => \m1|Add0~25\,
	combout => \m1|Add0~26_combout\,
	cout => \m1|Add0~27\);

-- Location: LCCOMB_X2_Y13_N0
\m1|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~28_combout\ = (\m1|i\(14) & (\m1|Add0~27\ $ (GND))) # (!\m1|i\(14) & (!\m1|Add0~27\ & VCC))
-- \m1|Add0~29\ = CARRY((\m1|i\(14) & !\m1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(14),
	datad => VCC,
	cin => \m1|Add0~27\,
	combout => \m1|Add0~28_combout\,
	cout => \m1|Add0~29\);

-- Location: LCCOMB_X2_Y13_N2
\m1|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~30_combout\ = (\m1|i\(15) & (!\m1|Add0~29\)) # (!\m1|i\(15) & ((\m1|Add0~29\) # (GND)))
-- \m1|Add0~31\ = CARRY((!\m1|Add0~29\) # (!\m1|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(15),
	datad => VCC,
	cin => \m1|Add0~29\,
	combout => \m1|Add0~30_combout\,
	cout => \m1|Add0~31\);

-- Location: LCCOMB_X2_Y13_N4
\m1|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~32_combout\ = (\m1|i\(16) & (\m1|Add0~31\ $ (GND))) # (!\m1|i\(16) & (!\m1|Add0~31\ & VCC))
-- \m1|Add0~33\ = CARRY((\m1|i\(16) & !\m1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(16),
	datad => VCC,
	cin => \m1|Add0~31\,
	combout => \m1|Add0~32_combout\,
	cout => \m1|Add0~33\);

-- Location: LCCOMB_X2_Y13_N6
\m1|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~34_combout\ = (\m1|i\(17) & (!\m1|Add0~33\)) # (!\m1|i\(17) & ((\m1|Add0~33\) # (GND)))
-- \m1|Add0~35\ = CARRY((!\m1|Add0~33\) # (!\m1|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(17),
	datad => VCC,
	cin => \m1|Add0~33\,
	combout => \m1|Add0~34_combout\,
	cout => \m1|Add0~35\);

-- Location: LCCOMB_X2_Y13_N8
\m1|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~36_combout\ = (\m1|i\(18) & (\m1|Add0~35\ $ (GND))) # (!\m1|i\(18) & (!\m1|Add0~35\ & VCC))
-- \m1|Add0~37\ = CARRY((\m1|i\(18) & !\m1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(18),
	datad => VCC,
	cin => \m1|Add0~35\,
	combout => \m1|Add0~36_combout\,
	cout => \m1|Add0~37\);

-- Location: LCCOMB_X2_Y13_N10
\m1|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~38_combout\ = (\m1|i\(19) & (!\m1|Add0~37\)) # (!\m1|i\(19) & ((\m1|Add0~37\) # (GND)))
-- \m1|Add0~39\ = CARRY((!\m1|Add0~37\) # (!\m1|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(19),
	datad => VCC,
	cin => \m1|Add0~37\,
	combout => \m1|Add0~38_combout\,
	cout => \m1|Add0~39\);

-- Location: LCCOMB_X2_Y13_N12
\m1|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~40_combout\ = (\m1|i\(20) & (\m1|Add0~39\ $ (GND))) # (!\m1|i\(20) & (!\m1|Add0~39\ & VCC))
-- \m1|Add0~41\ = CARRY((\m1|i\(20) & !\m1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(20),
	datad => VCC,
	cin => \m1|Add0~39\,
	combout => \m1|Add0~40_combout\,
	cout => \m1|Add0~41\);

-- Location: LCCOMB_X2_Y13_N14
\m1|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~42_combout\ = (\m1|i\(21) & (!\m1|Add0~41\)) # (!\m1|i\(21) & ((\m1|Add0~41\) # (GND)))
-- \m1|Add0~43\ = CARRY((!\m1|Add0~41\) # (!\m1|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(21),
	datad => VCC,
	cin => \m1|Add0~41\,
	combout => \m1|Add0~42_combout\,
	cout => \m1|Add0~43\);

-- Location: LCCOMB_X2_Y13_N16
\m1|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~44_combout\ = (\m1|i\(22) & (\m1|Add0~43\ $ (GND))) # (!\m1|i\(22) & (!\m1|Add0~43\ & VCC))
-- \m1|Add0~45\ = CARRY((\m1|i\(22) & !\m1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(22),
	datad => VCC,
	cin => \m1|Add0~43\,
	combout => \m1|Add0~44_combout\,
	cout => \m1|Add0~45\);

-- Location: LCCOMB_X2_Y13_N18
\m1|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~46_combout\ = (\m1|i\(23) & (!\m1|Add0~45\)) # (!\m1|i\(23) & ((\m1|Add0~45\) # (GND)))
-- \m1|Add0~47\ = CARRY((!\m1|Add0~45\) # (!\m1|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(23),
	datad => VCC,
	cin => \m1|Add0~45\,
	combout => \m1|Add0~46_combout\,
	cout => \m1|Add0~47\);

-- Location: LCCOMB_X2_Y13_N20
\m1|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~48_combout\ = (\m1|i\(24) & (\m1|Add0~47\ $ (GND))) # (!\m1|i\(24) & (!\m1|Add0~47\ & VCC))
-- \m1|Add0~49\ = CARRY((\m1|i\(24) & !\m1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(24),
	datad => VCC,
	cin => \m1|Add0~47\,
	combout => \m1|Add0~48_combout\,
	cout => \m1|Add0~49\);

-- Location: LCCOMB_X2_Y13_N22
\m1|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~50_combout\ = (\m1|i\(25) & (!\m1|Add0~49\)) # (!\m1|i\(25) & ((\m1|Add0~49\) # (GND)))
-- \m1|Add0~51\ = CARRY((!\m1|Add0~49\) # (!\m1|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(25),
	datad => VCC,
	cin => \m1|Add0~49\,
	combout => \m1|Add0~50_combout\,
	cout => \m1|Add0~51\);

-- Location: LCCOMB_X2_Y13_N24
\m1|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~52_combout\ = (\m1|i\(26) & (\m1|Add0~51\ $ (GND))) # (!\m1|i\(26) & (!\m1|Add0~51\ & VCC))
-- \m1|Add0~53\ = CARRY((\m1|i\(26) & !\m1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|i\(26),
	datad => VCC,
	cin => \m1|Add0~51\,
	combout => \m1|Add0~52_combout\,
	cout => \m1|Add0~53\);

-- Location: LCCOMB_X2_Y13_N26
\m1|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Add0~54_combout\ = \m1|i\(27) $ (\m1|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(27),
	cin => \m1|Add0~53\,
	combout => \m1|Add0~54_combout\);

-- Location: FF_X31_Y25_N23
\VGA_Driver|H_visible[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|H_visible\(0));

-- Location: LCCOMB_X29_Y25_N22
\VGA_Driver|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal2~0_combout\ = (!\VGA_Driver|HS_counter\(9) & (\VGA_Driver|HS_counter\(4) & (!\VGA_Driver|HS_counter\(7) & !\VGA_Driver|HS_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(9),
	datab => \VGA_Driver|HS_counter\(4),
	datac => \VGA_Driver|HS_counter\(7),
	datad => \VGA_Driver|HS_counter\(8),
	combout => \VGA_Driver|Equal2~0_combout\);

-- Location: FF_X30_Y24_N25
\VGA_Driver|VS_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~20_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(10));

-- Location: FF_X30_Y24_N21
\VGA_Driver|VS_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~16_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(8));

-- Location: FF_X30_Y24_N19
\VGA_Driver|VS_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~14_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(7));

-- Location: FF_X30_Y24_N17
\VGA_Driver|VS_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~12_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(6));

-- Location: LCCOMB_X29_Y24_N28
\VGA_Driver|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~0_combout\ = (!\VGA_Driver|VS_counter\(10) & (!\VGA_Driver|VS_counter\(6) & (!\VGA_Driver|VS_counter\(8) & !\VGA_Driver|VS_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(10),
	datab => \VGA_Driver|VS_counter\(6),
	datac => \VGA_Driver|VS_counter\(8),
	datad => \VGA_Driver|VS_counter\(7),
	combout => \VGA_Driver|Equal5~0_combout\);

-- Location: LCCOMB_X29_Y24_N22
\VGA_Driver|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~1_combout\ = (!\VGA_Driver|VS_counter\(4) & (\VGA_Driver|Equal5~0_combout\ & \VGA_Driver|VS_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(4),
	datab => \VGA_Driver|Equal5~0_combout\,
	datad => \VGA_Driver|VS_counter\(3),
	combout => \VGA_Driver|Equal5~1_combout\);

-- Location: FF_X26_Y25_N5
\draw_center|box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \draw_center|always0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_center|box~q\);

-- Location: FF_X21_Y23_N5
\draw_P2_paddle|box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \draw_P2_paddle|always0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_P2_paddle|box~q\);

-- Location: FF_X29_Y24_N1
\draw_left_border|box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \draw_left_border|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_left_border|box~q\);

-- Location: LCCOMB_X31_Y25_N22
\VGA_Driver|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector1~0_combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|H_visible\(0) & ((!\VGA_Driver|Equal4~1_combout\) # (!\VGA_Driver|WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|WideNor0~0_combout\,
	datac => \VGA_Driver|H_visible\(0),
	datad => \VGA_Driver|Equal4~1_combout\,
	combout => \VGA_Driver|Selector1~0_combout\);

-- Location: LCCOMB_X29_Y24_N26
\VGA_Driver|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector7~0_combout\ = (\VGA_Driver|Equal5~1_combout\ & (\VGA_Driver|Equal5~2_combout\ & (\VGA_Driver|VS_counter\(1) $ (\VGA_Driver|VS_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~1_combout\,
	datab => \VGA_Driver|Equal5~2_combout\,
	datac => \VGA_Driver|VS_counter\(1),
	datad => \VGA_Driver|VS_counter\(2),
	combout => \VGA_Driver|Selector7~0_combout\);

-- Location: LCCOMB_X31_Y25_N10
\VGA_Driver|WideNor0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|WideNor0~combout\ = ((\VGA_Driver|Equal3~1_combout\) # (\VGA_Driver|Equal4~1_combout\)) # (!\VGA_Driver|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|WideNor0~0_combout\,
	datac => \VGA_Driver|Equal3~1_combout\,
	datad => \VGA_Driver|Equal4~1_combout\,
	combout => \VGA_Driver|WideNor0~combout\);

-- Location: LCCOMB_X29_Y23_N26
\VGA_Driver|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal3~2_combout\ = (\VGA_Driver|Equal3~0_combout\ & (!\VGA_Driver|HS_counter\(4) & \VGA_Driver|HS_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Equal3~0_combout\,
	datac => \VGA_Driver|HS_counter\(4),
	datad => \VGA_Driver|HS_counter\(5),
	combout => \VGA_Driver|Equal3~2_combout\);

-- Location: LCCOMB_X24_Y27_N20
\draw_center|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_center|always0~0_combout\ = (\VGA_Driver|Add1~0_combout\ & \VGA_Driver|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~0_combout\,
	datac => \VGA_Driver|Add1~2_combout\,
	combout => \draw_center|always0~0_combout\);

-- Location: LCCOMB_X24_Y27_N2
\draw_center|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_center|always0~1_combout\ = (!\VGA_Driver|Add1~16_combout\ & ((\draw_center|always0~0_combout\) # ((\VGA_Driver|Add1~8_combout\) # (\VGA_Driver|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datab => \draw_center|always0~0_combout\,
	datac => \VGA_Driver|Add1~8_combout\,
	datad => \VGA_Driver|Add1~14_combout\,
	combout => \draw_center|always0~1_combout\);

-- Location: LCCOMB_X24_Y27_N8
\draw_center|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_center|always0~2_combout\ = (\VGA_Driver|Add1~12_combout\ & (((!\VGA_Driver|Add1~14_combout\)))) # (!\VGA_Driver|Add1~12_combout\ & ((\VGA_Driver|Add1~10_combout\) # ((\VGA_Driver|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~10_combout\,
	datab => \VGA_Driver|Add1~4_combout\,
	datac => \VGA_Driver|Add1~12_combout\,
	datad => \VGA_Driver|Add1~14_combout\,
	combout => \draw_center|always0~2_combout\);

-- Location: LCCOMB_X28_Y27_N22
\draw_center|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_center|always0~3_combout\ = (\VGA_Driver|Add1~16_combout\ & ((\VGA_Driver|Add1~6_combout\ $ (\VGA_Driver|Add1~4_combout\)) # (!\draw_bottom_border|LessThan2~0_combout\))) # (!\VGA_Driver|Add1~16_combout\ & (\VGA_Driver|Add1~6_combout\ $ 
-- ((\VGA_Driver|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~6_combout\,
	datab => \VGA_Driver|Add1~4_combout\,
	datac => \VGA_Driver|Add1~16_combout\,
	datad => \draw_bottom_border|LessThan2~0_combout\,
	combout => \draw_center|always0~3_combout\);

-- Location: LCCOMB_X24_Y27_N6
\draw_center|always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_center|always0~4_combout\ = (\draw_center|always0~1_combout\) # ((\draw_center|always0~2_combout\) # ((!\VGA_Driver|Add1~10_combout\ & \draw_center|always0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~10_combout\,
	datab => \draw_center|always0~1_combout\,
	datac => \draw_center|always0~2_combout\,
	datad => \draw_center|always0~3_combout\,
	combout => \draw_center|always0~4_combout\);

-- Location: LCCOMB_X29_Y22_N20
\VGA_Driver|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~4_combout\ = \VGA_Driver|HS_counter\(5) $ (\VGA_Driver|HS_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Add0~4_combout\);

-- Location: LCCOMB_X26_Y25_N12
\draw_center|always0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_center|always0~5_combout\ = (!\VGA_Driver|Add0~4_combout\ & (!\VGA_Driver|Add0~2_combout\ & (!\VGA_Driver|Add0~3_combout\ & !\VGA_Driver|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~4_combout\,
	datab => \VGA_Driver|Add0~2_combout\,
	datac => \VGA_Driver|Add0~3_combout\,
	datad => \VGA_Driver|Add1~18_combout\,
	combout => \draw_center|always0~5_combout\);

-- Location: LCCOMB_X26_Y25_N4
\draw_center|always0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_center|always0~6_combout\ = (\draw_center|always0~5_combout\ & (\VGA_Driver|Equal3~2_combout\ & (\draw_center|always0~4_combout\ & \VGA_Driver|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_center|always0~5_combout\,
	datab => \VGA_Driver|Equal3~2_combout\,
	datac => \draw_center|always0~4_combout\,
	datad => \VGA_Driver|Add0~1_combout\,
	combout => \draw_center|always0~6_combout\);

-- Location: LCCOMB_X29_Y25_N12
\draw_P1_paddle|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|always0~0_combout\ = (!\VGA_Driver|HS_counter\(8) & (\VGA_Driver|HS_counter\(7) & (\VGA_Driver|HS_counter\(5) $ (\VGA_Driver|HS_counter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(8),
	datab => \VGA_Driver|HS_counter\(7),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \draw_P1_paddle|always0~0_combout\);

-- Location: LCCOMB_X31_Y25_N18
\draw_P1_paddle|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|always0~3_combout\ = (\VGA_Driver|HS_counter\(5) & (\draw_P1_paddle|always0~2_combout\ & ((\VGA_Driver|HS_counter\(3)) # (!\draw_P1_paddle|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datab => \draw_P1_paddle|always0~2_combout\,
	datac => \draw_P1_paddle|LessThan0~0_combout\,
	datad => \VGA_Driver|HS_counter\(3),
	combout => \draw_P1_paddle|always0~3_combout\);

-- Location: FF_X23_Y23_N27
\b1|P2_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|P2_y~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|P2_y\(8));

-- Location: FF_X23_Y23_N23
\b1|P2_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|P2_y~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|P2_y\(4));

-- Location: FF_X26_Y24_N29
\b1|P2_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|P2_y~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|P2_y\(2));

-- Location: FF_X26_Y24_N31
\b1|P2_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|P2_y~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|P2_y\(1));

-- Location: LCCOMB_X28_Y23_N26
\draw_P2_paddle|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|always0~2_combout\ = (\VGA_Driver|HS_counter\(3) & (((!\VGA_Driver|HS_counter\(2))))) # (!\VGA_Driver|HS_counter\(3) & ((\VGA_Driver|HS_counter\(2)) # ((\VGA_Driver|HS_counter\(1) & \VGA_Driver|HS_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(1),
	datab => \VGA_Driver|HS_counter\(0),
	datac => \VGA_Driver|HS_counter\(3),
	datad => \VGA_Driver|HS_counter\(2),
	combout => \draw_P2_paddle|always0~2_combout\);

-- Location: LCCOMB_X29_Y25_N20
\draw_P2_paddle|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|always0~3_combout\ = (\VGA_Driver|HS_counter\(8) & (!\VGA_Driver|HS_counter\(7) & (!\VGA_Driver|HS_counter\(5) & !\VGA_Driver|HS_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(8),
	datab => \VGA_Driver|HS_counter\(7),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \draw_P2_paddle|always0~3_combout\);

-- Location: LCCOMB_X21_Y23_N4
\draw_P2_paddle|always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|always0~4_combout\ = (\draw_P2_paddle|always0~2_combout\ & (\draw_P2_paddle|always0~5_combout\ & (\draw_P2_paddle|LessThan2~18_combout\ & \draw_P2_paddle|LessThan3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_P2_paddle|always0~2_combout\,
	datab => \draw_P2_paddle|always0~5_combout\,
	datac => \draw_P2_paddle|LessThan2~18_combout\,
	datad => \draw_P2_paddle|LessThan3~18_combout\,
	combout => \draw_P2_paddle|always0~4_combout\);

-- Location: LCCOMB_X22_Y24_N0
\draw_top_border|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_top_border|always0~0_combout\ = (!\VGA_Driver|Add1~14_combout\ & (!\VGA_Driver|Add1~10_combout\ & (!\VGA_Driver|Add1~4_combout\ & !\VGA_Driver|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~14_combout\,
	datab => \VGA_Driver|Add1~10_combout\,
	datac => \VGA_Driver|Add1~4_combout\,
	datad => \VGA_Driver|Add1~8_combout\,
	combout => \draw_top_border|always0~0_combout\);

-- Location: LCCOMB_X28_Y27_N30
\draw_bottom_border|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_bottom_border|always0~2_combout\ = (!\VGA_Driver|Add1~18_combout\ & (!\VGA_Driver|Add1~10_combout\ & (\VGA_Driver|Add1~4_combout\ & \VGA_Driver|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~18_combout\,
	datab => \VGA_Driver|Add1~10_combout\,
	datac => \VGA_Driver|Add1~4_combout\,
	datad => \VGA_Driver|Add1~0_combout\,
	combout => \draw_bottom_border|always0~2_combout\);

-- Location: LCCOMB_X28_Y24_N24
\VGA_Driver|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|LessThan1~2_combout\ = ((\VGA_Driver|Add1~20_combout\) # ((\VGA_Driver|Add1~0_combout\) # (!\VGA_Driver|Add1~22_combout\))) # (!\draw_top_border|always0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_top_border|always0~2_combout\,
	datab => \VGA_Driver|Add1~20_combout\,
	datac => \VGA_Driver|Add1~22_combout\,
	datad => \VGA_Driver|Add1~0_combout\,
	combout => \VGA_Driver|LessThan1~2_combout\);

-- Location: LCCOMB_X28_Y24_N30
\draw_right_border|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_right_border|always0~0_combout\ = (!\VGA_Driver|Add1~18_combout\ & (!\VGA_Driver|LessThan1~1_combout\ & ((!\draw_bottom_border|LessThan2~1_combout\) # (!\VGA_Driver|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~10_combout\,
	datab => \VGA_Driver|Add1~18_combout\,
	datac => \VGA_Driver|LessThan1~1_combout\,
	datad => \draw_bottom_border|LessThan2~1_combout\,
	combout => \draw_right_border|always0~0_combout\);

-- Location: LCCOMB_X29_Y24_N8
\draw_right_border|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_right_border|always0~1_combout\ = (\draw_P2_paddle|always0~3_combout\ & (\VGA_Driver|LessThan1~2_combout\ & (!\VGA_Driver|Add0~1_combout\ & \draw_right_border|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_P2_paddle|always0~3_combout\,
	datab => \VGA_Driver|LessThan1~2_combout\,
	datac => \VGA_Driver|Add0~1_combout\,
	datad => \draw_right_border|always0~0_combout\,
	combout => \draw_right_border|always0~1_combout\);

-- Location: LCCOMB_X29_Y24_N0
\draw_left_border|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_left_border|always0~0_combout\ = (\VGA_Driver|Equal3~2_combout\ & (\draw_right_border|always0~0_combout\ & (\draw_bottom_border|always0~0_combout\ & \draw_P1_paddle|always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~2_combout\,
	datab => \draw_right_border|always0~0_combout\,
	datac => \draw_bottom_border|always0~0_combout\,
	datad => \draw_P1_paddle|always0~1_combout\,
	combout => \draw_left_border|always0~0_combout\);

-- Location: FF_X19_Y27_N23
\m1|slow_clock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|slow_clock~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|slow_clock~q\);

-- Location: LCCOMB_X24_Y25_N26
\v1|P1_paddle_y[6]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[6]~31_combout\ = (\v1|P1_paddle_y\(4) & (!\v1|P1_paddle_y\(6) & (\v1|P1_paddle_y\(5) & !\v1|P1_paddle_y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(4),
	datab => \v1|P1_paddle_y\(6),
	datac => \v1|P1_paddle_y\(5),
	datad => \v1|P1_paddle_y\(3),
	combout => \v1|P1_paddle_y[6]~31_combout\);

-- Location: LCCOMB_X23_Y23_N26
\b1|P2_y~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~5_combout\ = (\b1|y_ball\(9)) # ((\b1|Add11~12_combout\ & ((\b1|P2_y~3_combout\))) # (!\b1|Add11~12_combout\ & (\b1|P2_y~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|Add11~12_combout\,
	datab => \b1|P2_y~4_combout\,
	datac => \b1|y_ball\(9),
	datad => \b1|P2_y~3_combout\,
	combout => \b1|P2_y~5_combout\);

-- Location: LCCOMB_X23_Y23_N22
\b1|P2_y~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~9_combout\ = (\b1|Add11~4_combout\ & (!\b1|y_ball\(9) & ((\b1|P2_y~0_combout\) # (\b1|P2_y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y~0_combout\,
	datab => \b1|Add11~4_combout\,
	datac => \b1|y_ball\(9),
	datad => \b1|P2_y~1_combout\,
	combout => \b1|P2_y~9_combout\);

-- Location: LCCOMB_X26_Y24_N28
\b1|P2_y~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~11_combout\ = (\b1|Add11~0_combout\ & (!\b1|y_ball\(9) & ((\b1|P2_y~1_combout\) # (\b1|P2_y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|Add11~0_combout\,
	datab => \b1|P2_y~1_combout\,
	datac => \b1|P2_y~0_combout\,
	datad => \b1|y_ball\(9),
	combout => \b1|P2_y~11_combout\);

-- Location: LCCOMB_X26_Y24_N30
\b1|P2_y~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~12_combout\ = (\b1|y_ball\(1) & (!\b1|y_ball\(9) & ((\b1|P2_y~1_combout\) # (\b1|P2_y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(1),
	datab => \b1|P2_y~1_combout\,
	datac => \b1|P2_y~0_combout\,
	datad => \b1|y_ball\(9),
	combout => \b1|P2_y~12_combout\);

-- Location: LCCOMB_X28_Y25_N28
\b1|x_direction~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_direction~0_combout\ = (!\b1|x_ball\(3) & (!\b1|x_ball\(2) & ((!\b1|x_ball\(1)) # (!\b1|x_ball\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(3),
	datab => \b1|x_ball\(2),
	datac => \b1|x_ball\(0),
	datad => \b1|x_ball\(1),
	combout => \b1|x_direction~0_combout\);

-- Location: LCCOMB_X28_Y25_N22
\b1|x_direction~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_direction~1_combout\ = (((\b1|x_direction~0_combout\ & !\b1|x_ball\(4))) # (!\b1|x_ball\(6))) # (!\b1|x_ball\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(5),
	datab => \b1|x_direction~0_combout\,
	datac => \b1|x_ball\(4),
	datad => \b1|x_ball\(6),
	combout => \b1|x_direction~1_combout\);

-- Location: FF_X27_Y25_N27
\b1|x_direction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|x_direction~9_combout\,
	ena => \ORG_BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|x_direction\(1));

-- Location: FF_X27_Y25_N31
\b1|y_direction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|y_direction~5_combout\,
	ena => \ORG_BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|y_direction\(1));

-- Location: FF_X3_Y14_N13
\m1|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(3));

-- Location: FF_X2_Y14_N9
\m1|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(2));

-- Location: FF_X2_Y14_N7
\m1|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(1));

-- Location: FF_X3_Y14_N23
\m1|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(0));

-- Location: LCCOMB_X3_Y14_N24
\m1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Equal0~0_combout\ = (!\m1|i\(2) & (!\m1|i\(1) & (!\m1|i\(0) & \m1|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(2),
	datab => \m1|i\(1),
	datac => \m1|i\(0),
	datad => \m1|i\(3),
	combout => \m1|Equal0~0_combout\);

-- Location: FF_X3_Y14_N27
\m1|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(6));

-- Location: FF_X2_Y14_N13
\m1|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(4));

-- Location: FF_X2_Y14_N15
\m1|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(5));

-- Location: FF_X2_Y14_N19
\m1|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(7));

-- Location: LCCOMB_X2_Y14_N0
\m1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Equal0~1_combout\ = (!\m1|i\(4) & (!\m1|i\(7) & (!\m1|i\(5) & \m1|i\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(4),
	datab => \m1|i\(7),
	datac => \m1|i\(5),
	datad => \m1|i\(6),
	combout => \m1|Equal0~1_combout\);

-- Location: FF_X3_Y14_N5
\m1|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|i~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(11));

-- Location: FF_X2_Y14_N21
\m1|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(8));

-- Location: FF_X2_Y14_N23
\m1|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(9));

-- Location: FF_X2_Y14_N25
\m1|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(10));

-- Location: LCCOMB_X2_Y14_N2
\m1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Equal0~2_combout\ = (\m1|i\(11) & (!\m1|i\(10) & (!\m1|i\(9) & !\m1|i\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(11),
	datab => \m1|i\(10),
	datac => \m1|i\(9),
	datad => \m1|i\(8),
	combout => \m1|Equal0~2_combout\);

-- Location: FF_X3_Y14_N7
\m1|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|i~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(13));

-- Location: FF_X3_Y14_N21
\m1|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|i~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(14));

-- Location: FF_X3_Y14_N31
\m1|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|i~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(15));

-- Location: FF_X2_Y14_N29
\m1|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(12));

-- Location: LCCOMB_X3_Y14_N0
\m1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Equal0~3_combout\ = (\m1|i\(13) & (!\m1|i\(12) & (\m1|i\(15) & \m1|i\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(13),
	datab => \m1|i\(12),
	datac => \m1|i\(15),
	datad => \m1|i\(14),
	combout => \m1|Equal0~3_combout\);

-- Location: LCCOMB_X3_Y14_N10
\m1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Equal0~4_combout\ = (\m1|Equal0~2_combout\ & (\m1|Equal0~0_combout\ & (\m1|Equal0~1_combout\ & \m1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|Equal0~2_combout\,
	datab => \m1|Equal0~0_combout\,
	datac => \m1|Equal0~1_combout\,
	datad => \m1|Equal0~3_combout\,
	combout => \m1|Equal0~4_combout\);

-- Location: FF_X3_Y14_N17
\m1|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|i~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(16));

-- Location: FF_X2_Y13_N7
\m1|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(17));

-- Location: FF_X2_Y13_N9
\m1|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(18));

-- Location: FF_X2_Y13_N11
\m1|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(19));

-- Location: LCCOMB_X3_Y14_N18
\m1|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Equal0~5_combout\ = (!\m1|i\(18) & (!\m1|i\(19) & (!\m1|i\(17) & \m1|i\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(18),
	datab => \m1|i\(19),
	datac => \m1|i\(17),
	datad => \m1|i\(16),
	combout => \m1|Equal0~5_combout\);

-- Location: FF_X2_Y13_N13
\m1|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(20));

-- Location: FF_X2_Y13_N15
\m1|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(21));

-- Location: FF_X2_Y13_N17
\m1|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(22));

-- Location: FF_X2_Y13_N19
\m1|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(23));

-- Location: LCCOMB_X2_Y13_N28
\m1|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Equal0~6_combout\ = (!\m1|i\(20) & (!\m1|i\(22) & (!\m1|i\(21) & !\m1|i\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(20),
	datab => \m1|i\(22),
	datac => \m1|i\(21),
	datad => \m1|i\(23),
	combout => \m1|Equal0~6_combout\);

-- Location: FF_X2_Y13_N21
\m1|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(24));

-- Location: FF_X2_Y13_N23
\m1|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(25));

-- Location: FF_X2_Y13_N25
\m1|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(26));

-- Location: FF_X2_Y13_N27
\m1|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputclkctrl_outclk\,
	d => \m1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|i\(27));

-- Location: LCCOMB_X2_Y13_N30
\m1|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Equal0~7_combout\ = (!\m1|i\(27) & (!\m1|i\(26) & (!\m1|i\(25) & !\m1|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|i\(27),
	datab => \m1|i\(26),
	datac => \m1|i\(25),
	datad => \m1|i\(24),
	combout => \m1|Equal0~7_combout\);

-- Location: LCCOMB_X3_Y14_N28
\m1|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|Equal0~8_combout\ = (\m1|Equal0~4_combout\ & (\m1|Equal0~5_combout\ & (\m1|Equal0~7_combout\ & \m1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|Equal0~4_combout\,
	datab => \m1|Equal0~5_combout\,
	datac => \m1|Equal0~7_combout\,
	datad => \m1|Equal0~6_combout\,
	combout => \m1|Equal0~8_combout\);

-- Location: LCCOMB_X19_Y27_N0
\m1|slow_clock~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|slow_clock~0_combout\ = \m1|slow_clock~q\ $ (\m1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m1|slow_clock~q\,
	datad => \m1|Equal0~8_combout\,
	combout => \m1|slow_clock~0_combout\);

-- Location: LCCOMB_X27_Y25_N26
\b1|x_direction~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_direction~9_combout\ = \b1|y_ball[6]~12_combout\ $ (!\b1|x_direction~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball[6]~12_combout\,
	datad => \b1|x_direction~8_combout\,
	combout => \b1|x_direction~9_combout\);

-- Location: LCCOMB_X27_Y25_N30
\b1|y_direction~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_direction~5_combout\ = \b1|y_direction~4_combout\ $ (!\b1|y_ball[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b1|y_direction~4_combout\,
	datad => \b1|y_ball[6]~12_combout\,
	combout => \b1|y_direction~5_combout\);

-- Location: LCCOMB_X3_Y14_N12
\m1|i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|i~0_combout\ = (\m1|Add0~6_combout\ & !\m1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|Add0~6_combout\,
	datad => \m1|Equal0~8_combout\,
	combout => \m1|i~0_combout\);

-- Location: LCCOMB_X3_Y14_N22
\m1|i~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|i~1_combout\ = (\m1|Add0~0_combout\ & !\m1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m1|Add0~0_combout\,
	datad => \m1|Equal0~8_combout\,
	combout => \m1|i~1_combout\);

-- Location: LCCOMB_X3_Y14_N26
\m1|i~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|i~2_combout\ = (\m1|Add0~12_combout\ & !\m1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m1|Add0~12_combout\,
	datad => \m1|Equal0~8_combout\,
	combout => \m1|i~2_combout\);

-- Location: LCCOMB_X3_Y14_N4
\m1|i~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|i~3_combout\ = (\m1|Add0~22_combout\ & !\m1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m1|Add0~22_combout\,
	datad => \m1|Equal0~8_combout\,
	combout => \m1|i~3_combout\);

-- Location: LCCOMB_X3_Y14_N6
\m1|i~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|i~4_combout\ = (\m1|Add0~26_combout\ & !\m1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1|Add0~26_combout\,
	datad => \m1|Equal0~8_combout\,
	combout => \m1|i~4_combout\);

-- Location: LCCOMB_X3_Y14_N20
\m1|i~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|i~5_combout\ = (\m1|Add0~28_combout\ & !\m1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1|Add0~28_combout\,
	datad => \m1|Equal0~8_combout\,
	combout => \m1|i~5_combout\);

-- Location: LCCOMB_X3_Y14_N30
\m1|i~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|i~6_combout\ = (\m1|Add0~30_combout\ & !\m1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1|Add0~30_combout\,
	datad => \m1|Equal0~8_combout\,
	combout => \m1|i~6_combout\);

-- Location: LCCOMB_X3_Y14_N16
\m1|i~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|i~7_combout\ = (\m1|Add0~32_combout\ & !\m1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m1|Add0~32_combout\,
	datad => \m1|Equal0~8_combout\,
	combout => \m1|i~7_combout\);

-- Location: LCCOMB_X27_Y24_N28
\draw_P2_paddle|always0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P2_paddle|always0~5_combout\ = (!\VGA_Driver|HS_counter\(4) & (\draw_P2_paddle|always0~3_combout\ & (\VGA_Driver|Add0~0_combout\ $ (!\VGA_Driver|HS_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(4),
	datab => \VGA_Driver|Add0~0_combout\,
	datac => \draw_P2_paddle|always0~3_combout\,
	datad => \VGA_Driver|HS_counter\(9),
	combout => \draw_P2_paddle|always0~5_combout\);

-- Location: IOIBUF_X0_Y23_N15
\ORG_BUTTON[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ORG_BUTTON(1),
	o => \ORG_BUTTON[1]~input_o\);

-- Location: CLKCTRL_G13
\m1|slow_clock~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \m1|slow_clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \m1|slow_clock~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\CLK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y27_N22
\m1|slow_clock~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|slow_clock~feeder_combout\ = \m1|slow_clock~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m1|slow_clock~0_combout\,
	combout => \m1|slow_clock~feeder_combout\);

-- Location: IOOBUF_X41_Y23_N23
\VGA_BUS_R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_R\(0),
	devoe => ww_devoe,
	o => ww_VGA_BUS_R(0));

-- Location: IOOBUF_X41_Y25_N2
\VGA_BUS_R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_R\(1),
	devoe => ww_devoe,
	o => ww_VGA_BUS_R(1));

-- Location: IOOBUF_X41_Y22_N2
\VGA_BUS_R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_R\(2),
	devoe => ww_devoe,
	o => ww_VGA_BUS_R(2));

-- Location: IOOBUF_X41_Y21_N23
\VGA_BUS_R[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_R\(3),
	devoe => ww_devoe,
	o => ww_VGA_BUS_R(3));

-- Location: IOOBUF_X41_Y20_N2
\VGA_BUS_G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_G\(0),
	devoe => ww_devoe,
	o => ww_VGA_BUS_G(0));

-- Location: IOOBUF_X41_Y24_N23
\VGA_BUS_G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_G\(1),
	devoe => ww_devoe,
	o => ww_VGA_BUS_G(1));

-- Location: IOOBUF_X41_Y21_N16
\VGA_BUS_G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_G\(2),
	devoe => ww_devoe,
	o => ww_VGA_BUS_G(2));

-- Location: IOOBUF_X41_Y20_N23
\VGA_BUS_G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_G\(3),
	devoe => ww_devoe,
	o => ww_VGA_BUS_G(3));

-- Location: IOOBUF_X41_Y19_N16
\VGA_BUS_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_B\(0),
	devoe => ww_devoe,
	o => ww_VGA_BUS_B(0));

-- Location: IOOBUF_X41_Y19_N9
\VGA_BUS_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_B\(1),
	devoe => ww_devoe,
	o => ww_VGA_BUS_B(1));

-- Location: IOOBUF_X41_Y19_N2
\VGA_BUS_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_B\(2),
	devoe => ww_devoe,
	o => ww_VGA_BUS_B(2));

-- Location: IOOBUF_X41_Y21_N9
\VGA_BUS_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|VGA_BUS_B\(3),
	devoe => ww_devoe,
	o => ww_VGA_BUS_B(3));

-- Location: IOOBUF_X41_Y18_N16
\VGA_HS[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|ALT_INV_VGA_HS\(0),
	devoe => ww_devoe,
	o => ww_VGA_HS(0));

-- Location: IOOBUF_X41_Y18_N23
\VGA_VS[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_Driver|ALT_INV_VGA_VS\(0),
	devoe => ww_devoe,
	o => ww_VGA_VS(0));

-- Location: IOIBUF_X41_Y15_N1
\CLK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50,
	o => \CLK_50~input_o\);

-- Location: PLL_2
\VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 11,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 147,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 74,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 74,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3403,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 236,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y24_N4
\VGA_Driver|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~0_combout\ = \VGA_Driver|VS_counter\(0) $ (VCC)
-- \VGA_Driver|Add3~1\ = CARRY(\VGA_Driver|VS_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(0),
	datad => VCC,
	combout => \VGA_Driver|Add3~0_combout\,
	cout => \VGA_Driver|Add3~1\);

-- Location: LCCOMB_X30_Y24_N2
\VGA_Driver|VS_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~2_combout\ = (\VGA_Driver|Add3~0_combout\) # ((\VGA_Driver|Equal7~0_combout\ & (!\VGA_Driver|VS_counter\(5) & \VGA_Driver|VS_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal7~0_combout\,
	datab => \VGA_Driver|Add3~0_combout\,
	datac => \VGA_Driver|VS_counter\(5),
	datad => \VGA_Driver|VS_counter\(9),
	combout => \VGA_Driver|VS_counter~2_combout\);

-- Location: LCCOMB_X30_Y25_N8
\VGA_Driver|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~0_combout\ = \VGA_Driver|HS_counter\(0) $ (VCC)
-- \VGA_Driver|Add4~1\ = CARRY(\VGA_Driver|HS_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(0),
	datad => VCC,
	combout => \VGA_Driver|Add4~0_combout\,
	cout => \VGA_Driver|Add4~1\);

-- Location: LCCOMB_X30_Y25_N10
\VGA_Driver|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~2_combout\ = (\VGA_Driver|HS_counter\(1) & (!\VGA_Driver|Add4~1\)) # (!\VGA_Driver|HS_counter\(1) & ((\VGA_Driver|Add4~1\) # (GND)))
-- \VGA_Driver|Add4~3\ = CARRY((!\VGA_Driver|Add4~1\) # (!\VGA_Driver|HS_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(1),
	datad => VCC,
	cin => \VGA_Driver|Add4~1\,
	combout => \VGA_Driver|Add4~2_combout\,
	cout => \VGA_Driver|Add4~3\);

-- Location: LCCOMB_X30_Y25_N2
\VGA_Driver|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~16_combout\ = (\VGA_Driver|WideNor0~1_combout\ & (\VGA_Driver|WideNor0~0_combout\ & \VGA_Driver|Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~1_combout\,
	datac => \VGA_Driver|WideNor0~0_combout\,
	datad => \VGA_Driver|Add4~2_combout\,
	combout => \VGA_Driver|Add4~16_combout\);

-- Location: FF_X30_Y25_N3
\VGA_Driver|HS_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(1));

-- Location: LCCOMB_X29_Y23_N28
\VGA_Driver|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal3~0_combout\ = (!\VGA_Driver|HS_counter\(2) & (!\VGA_Driver|HS_counter\(1) & !\VGA_Driver|HS_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(2),
	datab => \VGA_Driver|HS_counter\(1),
	datad => \VGA_Driver|HS_counter\(3),
	combout => \VGA_Driver|Equal3~0_combout\);

-- Location: LCCOMB_X30_Y25_N24
\VGA_Driver|Add4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~19_combout\ = (\VGA_Driver|HS_counter\(8) & (\VGA_Driver|Add4~18\ $ (GND))) # (!\VGA_Driver|HS_counter\(8) & (!\VGA_Driver|Add4~18\ & VCC))
-- \VGA_Driver|Add4~20\ = CARRY((\VGA_Driver|HS_counter\(8) & !\VGA_Driver|Add4~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(8),
	datad => VCC,
	cin => \VGA_Driver|Add4~18\,
	combout => \VGA_Driver|Add4~19_combout\,
	cout => \VGA_Driver|Add4~20\);

-- Location: LCCOMB_X30_Y25_N26
\VGA_Driver|Add4~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~21_combout\ = (\VGA_Driver|HS_counter\(9) & (!\VGA_Driver|Add4~20\)) # (!\VGA_Driver|HS_counter\(9) & ((\VGA_Driver|Add4~20\) # (GND)))
-- \VGA_Driver|Add4~22\ = CARRY((!\VGA_Driver|Add4~20\) # (!\VGA_Driver|HS_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(9),
	datad => VCC,
	cin => \VGA_Driver|Add4~20\,
	combout => \VGA_Driver|Add4~21_combout\,
	cout => \VGA_Driver|Add4~22\);

-- Location: LCCOMB_X30_Y25_N28
\VGA_Driver|Add4~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~25_combout\ = \VGA_Driver|Add4~22\ $ (!\VGA_Driver|HS_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|HS_counter\(10),
	cin => \VGA_Driver|Add4~22\,
	combout => \VGA_Driver|Add4~25_combout\);

-- Location: LCCOMB_X31_Y25_N2
\VGA_Driver|Add4~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~27_combout\ = (\VGA_Driver|WideNor0~1_combout\ & (\VGA_Driver|WideNor0~0_combout\ & \VGA_Driver|Add4~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|WideNor0~1_combout\,
	datac => \VGA_Driver|WideNor0~0_combout\,
	datad => \VGA_Driver|Add4~25_combout\,
	combout => \VGA_Driver|Add4~27_combout\);

-- Location: FF_X31_Y25_N3
\VGA_Driver|HS_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(10));

-- Location: LCCOMB_X30_Y25_N30
\VGA_Driver|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~28_combout\ = ((\VGA_Driver|Add4~0_combout\) # (!\VGA_Driver|WideNor0~1_combout\)) # (!\VGA_Driver|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|WideNor0~0_combout\,
	datac => \VGA_Driver|Add4~0_combout\,
	datad => \VGA_Driver|WideNor0~1_combout\,
	combout => \VGA_Driver|Add4~28_combout\);

-- Location: FF_X30_Y25_N31
\VGA_Driver|HS_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(0));

-- Location: LCCOMB_X29_Y25_N8
\VGA_Driver|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal2~1_combout\ = (\VGA_Driver|Equal2~0_combout\ & (\VGA_Driver|Equal3~0_combout\ & (!\VGA_Driver|HS_counter\(10) & !\VGA_Driver|HS_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal2~0_combout\,
	datab => \VGA_Driver|Equal3~0_combout\,
	datac => \VGA_Driver|HS_counter\(10),
	datad => \VGA_Driver|HS_counter\(0),
	combout => \VGA_Driver|Equal2~1_combout\);

-- Location: LCCOMB_X31_Y25_N20
\VGA_Driver|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal2~2_combout\ = (\VGA_Driver|HS_counter\(5) & (\VGA_Driver|Equal2~1_combout\ & \VGA_Driver|HS_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datac => \VGA_Driver|Equal2~1_combout\,
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Equal2~2_combout\);

-- Location: LCCOMB_X31_Y25_N0
\VGA_Driver|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector3~0_combout\ = (\VGA_Driver|Equal2~2_combout\) # ((\VGA_Driver|Add4~12_combout\ & (\VGA_Driver|WideNor0~0_combout\ & \VGA_Driver|WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add4~12_combout\,
	datab => \VGA_Driver|WideNor0~0_combout\,
	datac => \VGA_Driver|WideNor0~1_combout\,
	datad => \VGA_Driver|Equal2~2_combout\,
	combout => \VGA_Driver|Selector3~0_combout\);

-- Location: FF_X31_Y25_N1
\VGA_Driver|HS_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(6));

-- Location: LCCOMB_X30_Y25_N18
\VGA_Driver|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~10_combout\ = (\VGA_Driver|HS_counter\(5) & (!\VGA_Driver|Add4~9\)) # (!\VGA_Driver|HS_counter\(5) & ((\VGA_Driver|Add4~9\) # (GND)))
-- \VGA_Driver|Add4~11\ = CARRY((!\VGA_Driver|Add4~9\) # (!\VGA_Driver|HS_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(5),
	datad => VCC,
	cin => \VGA_Driver|Add4~9\,
	combout => \VGA_Driver|Add4~10_combout\,
	cout => \VGA_Driver|Add4~11\);

-- Location: LCCOMB_X30_Y25_N22
\VGA_Driver|Add4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~17_combout\ = (\VGA_Driver|HS_counter\(7) & (!\VGA_Driver|Add4~13\)) # (!\VGA_Driver|HS_counter\(7) & ((\VGA_Driver|Add4~13\) # (GND)))
-- \VGA_Driver|Add4~18\ = CARRY((!\VGA_Driver|Add4~13\) # (!\VGA_Driver|HS_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(7),
	datad => VCC,
	cin => \VGA_Driver|Add4~13\,
	combout => \VGA_Driver|Add4~17_combout\,
	cout => \VGA_Driver|Add4~18\);

-- Location: LCCOMB_X30_Y25_N6
\VGA_Driver|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~24_combout\ = (\VGA_Driver|WideNor0~1_combout\ & (\VGA_Driver|WideNor0~0_combout\ & \VGA_Driver|Add4~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~1_combout\,
	datac => \VGA_Driver|WideNor0~0_combout\,
	datad => \VGA_Driver|Add4~19_combout\,
	combout => \VGA_Driver|Add4~24_combout\);

-- Location: FF_X30_Y25_N7
\VGA_Driver|HS_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(8));

-- Location: LCCOMB_X29_Y25_N26
\VGA_Driver|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal3~1_combout\ = (!\VGA_Driver|HS_counter\(9) & (\VGA_Driver|Equal4~0_combout\ & (\VGA_Driver|HS_counter\(7) & !\VGA_Driver|HS_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(9),
	datab => \VGA_Driver|Equal4~0_combout\,
	datac => \VGA_Driver|HS_counter\(7),
	datad => \VGA_Driver|HS_counter\(8),
	combout => \VGA_Driver|Equal3~1_combout\);

-- Location: LCCOMB_X29_Y25_N4
\VGA_Driver|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector2~0_combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|WideNor0~1_combout\ & (\VGA_Driver|WideNor0~0_combout\ & \VGA_Driver|Add4~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~1_combout\,
	datab => \VGA_Driver|Equal3~1_combout\,
	datac => \VGA_Driver|WideNor0~0_combout\,
	datad => \VGA_Driver|Add4~17_combout\,
	combout => \VGA_Driver|Selector2~0_combout\);

-- Location: FF_X29_Y25_N5
\VGA_Driver|HS_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(7));

-- Location: LCCOMB_X29_Y25_N0
\VGA_Driver|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|WideNor0~1_combout\ = ((\VGA_Driver|HS_counter\(9) & ((\VGA_Driver|HS_counter\(7)) # (!\VGA_Driver|HS_counter\(8)))) # (!\VGA_Driver|HS_counter\(9) & ((\VGA_Driver|HS_counter\(8)) # (!\VGA_Driver|HS_counter\(7))))) # 
-- (!\VGA_Driver|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(9),
	datab => \VGA_Driver|Equal4~0_combout\,
	datac => \VGA_Driver|HS_counter\(7),
	datad => \VGA_Driver|HS_counter\(8),
	combout => \VGA_Driver|WideNor0~1_combout\);

-- Location: LCCOMB_X30_Y25_N12
\VGA_Driver|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~4_combout\ = (\VGA_Driver|HS_counter\(2) & (\VGA_Driver|Add4~3\ $ (GND))) # (!\VGA_Driver|HS_counter\(2) & (!\VGA_Driver|Add4~3\ & VCC))
-- \VGA_Driver|Add4~5\ = CARRY((\VGA_Driver|HS_counter\(2) & !\VGA_Driver|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(2),
	datad => VCC,
	cin => \VGA_Driver|Add4~3\,
	combout => \VGA_Driver|Add4~4_combout\,
	cout => \VGA_Driver|Add4~5\);

-- Location: LCCOMB_X30_Y25_N4
\VGA_Driver|Add4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~15_combout\ = (\VGA_Driver|WideNor0~1_combout\ & (\VGA_Driver|WideNor0~0_combout\ & \VGA_Driver|Add4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~1_combout\,
	datac => \VGA_Driver|WideNor0~0_combout\,
	datad => \VGA_Driver|Add4~4_combout\,
	combout => \VGA_Driver|Add4~15_combout\);

-- Location: FF_X30_Y25_N5
\VGA_Driver|HS_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(2));

-- Location: LCCOMB_X30_Y25_N14
\VGA_Driver|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~6_combout\ = (\VGA_Driver|HS_counter\(3) & (!\VGA_Driver|Add4~5\)) # (!\VGA_Driver|HS_counter\(3) & ((\VGA_Driver|Add4~5\) # (GND)))
-- \VGA_Driver|Add4~7\ = CARRY((!\VGA_Driver|Add4~5\) # (!\VGA_Driver|HS_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(3),
	datad => VCC,
	cin => \VGA_Driver|Add4~5\,
	combout => \VGA_Driver|Add4~6_combout\,
	cout => \VGA_Driver|Add4~7\);

-- Location: LCCOMB_X31_Y25_N28
\VGA_Driver|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~14_combout\ = (\VGA_Driver|WideNor0~1_combout\ & (\VGA_Driver|WideNor0~0_combout\ & \VGA_Driver|Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|WideNor0~1_combout\,
	datac => \VGA_Driver|WideNor0~0_combout\,
	datad => \VGA_Driver|Add4~6_combout\,
	combout => \VGA_Driver|Add4~14_combout\);

-- Location: FF_X31_Y25_N29
\VGA_Driver|HS_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(3));

-- Location: LCCOMB_X30_Y25_N16
\VGA_Driver|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~8_combout\ = (\VGA_Driver|HS_counter\(4) & (\VGA_Driver|Add4~7\ $ (GND))) # (!\VGA_Driver|HS_counter\(4) & (!\VGA_Driver|Add4~7\ & VCC))
-- \VGA_Driver|Add4~9\ = CARRY((\VGA_Driver|HS_counter\(4) & !\VGA_Driver|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(4),
	datad => VCC,
	cin => \VGA_Driver|Add4~7\,
	combout => \VGA_Driver|Add4~8_combout\,
	cout => \VGA_Driver|Add4~9\);

-- Location: LCCOMB_X31_Y25_N26
\VGA_Driver|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector4~0_combout\ = (\VGA_Driver|Equal3~1_combout\) # ((\VGA_Driver|Equal2~2_combout\) # ((!\VGA_Driver|WideNor0~combout\ & \VGA_Driver|Add4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~combout\,
	datab => \VGA_Driver|Add4~10_combout\,
	datac => \VGA_Driver|Equal3~1_combout\,
	datad => \VGA_Driver|Equal2~2_combout\,
	combout => \VGA_Driver|Selector4~0_combout\);

-- Location: FF_X31_Y25_N27
\VGA_Driver|HS_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(5));

-- Location: LCCOMB_X29_Y25_N14
\VGA_Driver|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|WideNor0~0_combout\ = (\VGA_Driver|HS_counter\(5) $ (\VGA_Driver|HS_counter\(6))) # (!\VGA_Driver|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal2~1_combout\,
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|WideNor0~0_combout\);

-- Location: LCCOMB_X30_Y25_N0
\VGA_Driver|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector5~0_combout\ = ((\VGA_Driver|WideNor0~1_combout\ & \VGA_Driver|Add4~8_combout\)) # (!\VGA_Driver|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~1_combout\,
	datac => \VGA_Driver|WideNor0~0_combout\,
	datad => \VGA_Driver|Add4~8_combout\,
	combout => \VGA_Driver|Selector5~0_combout\);

-- Location: FF_X30_Y25_N1
\VGA_Driver|HS_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(4));

-- Location: LCCOMB_X29_Y25_N24
\draw_top_border|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_top_border|LessThan0~0_combout\ = (\VGA_Driver|HS_counter\(5) & (!\VGA_Driver|HS_counter\(4) & (\VGA_Driver|Equal3~0_combout\ & !\VGA_Driver|HS_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datab => \VGA_Driver|HS_counter\(4),
	datac => \VGA_Driver|Equal3~0_combout\,
	datad => \VGA_Driver|HS_counter\(0),
	combout => \draw_top_border|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y25_N2
\VGA_Driver|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal4~0_combout\ = (\draw_top_border|LessThan0~0_combout\ & (!\VGA_Driver|HS_counter\(10) & !\VGA_Driver|HS_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draw_top_border|LessThan0~0_combout\,
	datac => \VGA_Driver|HS_counter\(10),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Equal4~0_combout\);

-- Location: LCCOMB_X29_Y25_N16
\VGA_Driver|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal4~1_combout\ = (\VGA_Driver|HS_counter\(9) & (\VGA_Driver|Equal4~0_combout\ & (!\VGA_Driver|HS_counter\(7) & \VGA_Driver|HS_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(9),
	datab => \VGA_Driver|Equal4~0_combout\,
	datac => \VGA_Driver|HS_counter\(7),
	datad => \VGA_Driver|HS_counter\(8),
	combout => \VGA_Driver|Equal4~1_combout\);

-- Location: FF_X30_Y24_N3
\VGA_Driver|VS_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~2_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(0));

-- Location: LCCOMB_X30_Y24_N6
\VGA_Driver|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~2_combout\ = (\VGA_Driver|VS_counter\(1) & (!\VGA_Driver|Add3~1\)) # (!\VGA_Driver|VS_counter\(1) & ((\VGA_Driver|Add3~1\) # (GND)))
-- \VGA_Driver|Add3~3\ = CARRY((!\VGA_Driver|Add3~1\) # (!\VGA_Driver|VS_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(1),
	datad => VCC,
	cin => \VGA_Driver|Add3~1\,
	combout => \VGA_Driver|Add3~2_combout\,
	cout => \VGA_Driver|Add3~3\);

-- Location: LCCOMB_X30_Y24_N0
\VGA_Driver|VS_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~3_combout\ = (\VGA_Driver|Add3~2_combout\ & (((\VGA_Driver|VS_counter\(5)) # (!\VGA_Driver|VS_counter\(9))) # (!\VGA_Driver|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal7~0_combout\,
	datab => \VGA_Driver|VS_counter\(9),
	datac => \VGA_Driver|VS_counter\(5),
	datad => \VGA_Driver|Add3~2_combout\,
	combout => \VGA_Driver|VS_counter~3_combout\);

-- Location: FF_X30_Y24_N1
\VGA_Driver|VS_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~3_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(1));

-- Location: LCCOMB_X30_Y24_N8
\VGA_Driver|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~4_combout\ = (\VGA_Driver|VS_counter\(2) & (\VGA_Driver|Add3~3\ $ (GND))) # (!\VGA_Driver|VS_counter\(2) & (!\VGA_Driver|Add3~3\ & VCC))
-- \VGA_Driver|Add3~5\ = CARRY((\VGA_Driver|VS_counter\(2) & !\VGA_Driver|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(2),
	datad => VCC,
	cin => \VGA_Driver|Add3~3\,
	combout => \VGA_Driver|Add3~4_combout\,
	cout => \VGA_Driver|Add3~5\);

-- Location: LCCOMB_X30_Y24_N30
\VGA_Driver|VS_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~1_combout\ = (\VGA_Driver|Add3~4_combout\ & (((\VGA_Driver|VS_counter\(5)) # (!\VGA_Driver|VS_counter\(9))) # (!\VGA_Driver|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal7~0_combout\,
	datab => \VGA_Driver|Add3~4_combout\,
	datac => \VGA_Driver|VS_counter\(5),
	datad => \VGA_Driver|VS_counter\(9),
	combout => \VGA_Driver|VS_counter~1_combout\);

-- Location: FF_X30_Y24_N31
\VGA_Driver|VS_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~1_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(2));

-- Location: LCCOMB_X29_Y24_N12
\VGA_Driver|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal7~0_combout\ = (\VGA_Driver|Equal5~1_combout\ & (\VGA_Driver|VS_counter\(0) & (!\VGA_Driver|VS_counter\(1) & \VGA_Driver|VS_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~1_combout\,
	datab => \VGA_Driver|VS_counter\(0),
	datac => \VGA_Driver|VS_counter\(1),
	datad => \VGA_Driver|VS_counter\(2),
	combout => \VGA_Driver|Equal7~0_combout\);

-- Location: LCCOMB_X30_Y24_N26
\VGA_Driver|VS_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~4_combout\ = (\VGA_Driver|Add3~18_combout\ & ((\VGA_Driver|VS_counter\(5)) # ((!\VGA_Driver|Equal7~0_combout\) # (!\VGA_Driver|VS_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add3~18_combout\,
	datab => \VGA_Driver|VS_counter\(5),
	datac => \VGA_Driver|VS_counter\(9),
	datad => \VGA_Driver|Equal7~0_combout\,
	combout => \VGA_Driver|VS_counter~4_combout\);

-- Location: FF_X30_Y24_N27
\VGA_Driver|VS_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~4_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(9));

-- Location: LCCOMB_X30_Y24_N10
\VGA_Driver|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~6_combout\ = (\VGA_Driver|VS_counter\(3) & (!\VGA_Driver|Add3~5\)) # (!\VGA_Driver|VS_counter\(3) & ((\VGA_Driver|Add3~5\) # (GND)))
-- \VGA_Driver|Add3~7\ = CARRY((!\VGA_Driver|Add3~5\) # (!\VGA_Driver|VS_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(3),
	datad => VCC,
	cin => \VGA_Driver|Add3~5\,
	combout => \VGA_Driver|Add3~6_combout\,
	cout => \VGA_Driver|Add3~7\);

-- Location: LCCOMB_X30_Y24_N28
\VGA_Driver|VS_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VS_counter~0_combout\ = (\VGA_Driver|Add3~6_combout\ & (((\VGA_Driver|VS_counter\(5)) # (!\VGA_Driver|VS_counter\(9))) # (!\VGA_Driver|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal7~0_combout\,
	datab => \VGA_Driver|VS_counter\(9),
	datac => \VGA_Driver|VS_counter\(5),
	datad => \VGA_Driver|Add3~6_combout\,
	combout => \VGA_Driver|VS_counter~0_combout\);

-- Location: FF_X30_Y24_N29
\VGA_Driver|VS_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VS_counter~0_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(3));

-- Location: LCCOMB_X30_Y24_N12
\VGA_Driver|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add3~8_combout\ = (\VGA_Driver|VS_counter\(4) & (\VGA_Driver|Add3~7\ $ (GND))) # (!\VGA_Driver|VS_counter\(4) & (!\VGA_Driver|Add3~7\ & VCC))
-- \VGA_Driver|Add3~9\ = CARRY((\VGA_Driver|VS_counter\(4) & !\VGA_Driver|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(4),
	datad => VCC,
	cin => \VGA_Driver|Add3~7\,
	combout => \VGA_Driver|Add3~8_combout\,
	cout => \VGA_Driver|Add3~9\);

-- Location: FF_X30_Y24_N13
\VGA_Driver|VS_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~8_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(4));

-- Location: FF_X30_Y24_N15
\VGA_Driver|VS_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add3~10_combout\,
	ena => \VGA_Driver|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VS_counter\(5));

-- Location: LCCOMB_X29_Y24_N20
\VGA_Driver|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector7~1_combout\ = (\VGA_Driver|V_visible\(0) & (!\VGA_Driver|VS_counter\(5) & \VGA_Driver|VS_counter\(9))) # (!\VGA_Driver|V_visible\(0) & (\VGA_Driver|VS_counter\(5) & !\VGA_Driver|VS_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|V_visible\(0),
	datac => \VGA_Driver|VS_counter\(5),
	datad => \VGA_Driver|VS_counter\(9),
	combout => \VGA_Driver|Selector7~1_combout\);

-- Location: LCCOMB_X29_Y24_N6
\VGA_Driver|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector7~2_combout\ = (\VGA_Driver|Selector7~1_combout\ & ((\VGA_Driver|V_visible\(0) & ((\VGA_Driver|Selector7~0_combout\) # (!\VGA_Driver|Equal7~0_combout\))) # (!\VGA_Driver|V_visible\(0) & ((\VGA_Driver|Equal7~0_combout\))))) # 
-- (!\VGA_Driver|Selector7~1_combout\ & (((\VGA_Driver|V_visible\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Selector7~0_combout\,
	datab => \VGA_Driver|Selector7~1_combout\,
	datac => \VGA_Driver|V_visible\(0),
	datad => \VGA_Driver|Equal7~0_combout\,
	combout => \VGA_Driver|Selector7~2_combout\);

-- Location: FF_X29_Y24_N7
\VGA_Driver|V_visible[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|V_visible\(0));

-- Location: LCCOMB_X27_Y26_N10
\b1|y_ball[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[0]~14_combout\ = \b1|y_ball\(0) $ (VCC)
-- \b1|y_ball[0]~15\ = CARRY(\b1|y_ball\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(0),
	datad => VCC,
	combout => \b1|y_ball[0]~14_combout\,
	cout => \b1|y_ball[0]~15\);

-- Location: LCCOMB_X27_Y26_N12
\b1|y_ball[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[1]~16_combout\ = (\b1|y_ball\(1) & ((\b1|y_direction~4_combout\ & (\b1|y_ball[0]~15\ & VCC)) # (!\b1|y_direction~4_combout\ & (!\b1|y_ball[0]~15\)))) # (!\b1|y_ball\(1) & ((\b1|y_direction~4_combout\ & (!\b1|y_ball[0]~15\)) # 
-- (!\b1|y_direction~4_combout\ & ((\b1|y_ball[0]~15\) # (GND)))))
-- \b1|y_ball[1]~17\ = CARRY((\b1|y_ball\(1) & (!\b1|y_direction~4_combout\ & !\b1|y_ball[0]~15\)) # (!\b1|y_ball\(1) & ((!\b1|y_ball[0]~15\) # (!\b1|y_direction~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(1),
	datab => \b1|y_direction~4_combout\,
	datad => VCC,
	cin => \b1|y_ball[0]~15\,
	combout => \b1|y_ball[1]~16_combout\,
	cout => \b1|y_ball[1]~17\);

-- Location: LCCOMB_X27_Y26_N14
\b1|y_ball[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[2]~18_combout\ = ((\b1|y_ball\(2) $ (\b1|y_direction~4_combout\ $ (!\b1|y_ball[1]~17\)))) # (GND)
-- \b1|y_ball[2]~19\ = CARRY((\b1|y_ball\(2) & ((\b1|y_direction~4_combout\) # (!\b1|y_ball[1]~17\))) # (!\b1|y_ball\(2) & (\b1|y_direction~4_combout\ & !\b1|y_ball[1]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(2),
	datab => \b1|y_direction~4_combout\,
	datad => VCC,
	cin => \b1|y_ball[1]~17\,
	combout => \b1|y_ball[2]~18_combout\,
	cout => \b1|y_ball[2]~19\);

-- Location: LCCOMB_X27_Y26_N16
\b1|y_ball[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[3]~20_combout\ = (\b1|y_ball\(3) & ((\b1|y_direction~4_combout\ & (\b1|y_ball[2]~19\ & VCC)) # (!\b1|y_direction~4_combout\ & (!\b1|y_ball[2]~19\)))) # (!\b1|y_ball\(3) & ((\b1|y_direction~4_combout\ & (!\b1|y_ball[2]~19\)) # 
-- (!\b1|y_direction~4_combout\ & ((\b1|y_ball[2]~19\) # (GND)))))
-- \b1|y_ball[3]~21\ = CARRY((\b1|y_ball\(3) & (!\b1|y_direction~4_combout\ & !\b1|y_ball[2]~19\)) # (!\b1|y_ball\(3) & ((!\b1|y_ball[2]~19\) # (!\b1|y_direction~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(3),
	datab => \b1|y_direction~4_combout\,
	datad => VCC,
	cin => \b1|y_ball[2]~19\,
	combout => \b1|y_ball[3]~20_combout\,
	cout => \b1|y_ball[3]~21\);

-- Location: LCCOMB_X27_Y26_N18
\b1|y_ball[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[4]~22_combout\ = ((\b1|y_ball\(4) $ (\b1|y_direction~4_combout\ $ (!\b1|y_ball[3]~21\)))) # (GND)
-- \b1|y_ball[4]~23\ = CARRY((\b1|y_ball\(4) & ((\b1|y_direction~4_combout\) # (!\b1|y_ball[3]~21\))) # (!\b1|y_ball\(4) & (\b1|y_direction~4_combout\ & !\b1|y_ball[3]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(4),
	datab => \b1|y_direction~4_combout\,
	datad => VCC,
	cin => \b1|y_ball[3]~21\,
	combout => \b1|y_ball[4]~22_combout\,
	cout => \b1|y_ball[4]~23\);

-- Location: LCCOMB_X29_Y23_N0
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X0_Y21_N8
\ORG_BUTTON[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ORG_BUTTON(0),
	o => \ORG_BUTTON[0]~input_o\);

-- Location: LCCOMB_X28_Y25_N0
\b1|x_ball[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_ball[0]~10_combout\ = \b1|x_ball\(0) $ (VCC)
-- \b1|x_ball[0]~11\ = CARRY(\b1|x_ball\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1|x_ball\(0),
	datad => VCC,
	combout => \b1|x_ball[0]~10_combout\,
	cout => \b1|x_ball[0]~11\);

-- Location: LCCOMB_X28_Y23_N28
\b1|x_ball[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_ball[0]~feeder_combout\ = \b1|x_ball[0]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b1|x_ball[0]~10_combout\,
	combout => \b1|x_ball[0]~feeder_combout\);

-- Location: FF_X28_Y23_N29
\b1|x_ball[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|x_ball[0]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|x_ball\(0));

-- Location: LCCOMB_X26_Y25_N28
\v1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|Add0~12_combout\ = (\v1|P1_paddle_y\(9) & (\v1|Add0~11\ $ (GND))) # (!\v1|P1_paddle_y\(9) & (!\v1|Add0~11\ & VCC))
-- \v1|Add0~13\ = CARRY((\v1|P1_paddle_y\(9) & !\v1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(9),
	datad => VCC,
	cin => \v1|Add0~11\,
	combout => \v1|Add0~12_combout\,
	cout => \v1|Add0~13\);

-- Location: LCCOMB_X24_Y25_N4
\v1|P1_paddle_y[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[0]~10_combout\ = \v1|P1_paddle_y\(0) $ (VCC)
-- \v1|P1_paddle_y[0]~11\ = CARRY(\v1|P1_paddle_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(0),
	datad => VCC,
	combout => \v1|P1_paddle_y[0]~10_combout\,
	cout => \v1|P1_paddle_y[0]~11\);

-- Location: LCCOMB_X24_Y25_N6
\v1|P1_paddle_y[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[1]~12_combout\ = (\v1|P1_paddle_y\(1) & ((\v1|always0~0_combout\ & (!\v1|P1_paddle_y[0]~11\)) # (!\v1|always0~0_combout\ & (\v1|P1_paddle_y[0]~11\ & VCC)))) # (!\v1|P1_paddle_y\(1) & ((\v1|always0~0_combout\ & ((\v1|P1_paddle_y[0]~11\) # 
-- (GND))) # (!\v1|always0~0_combout\ & (!\v1|P1_paddle_y[0]~11\))))
-- \v1|P1_paddle_y[1]~13\ = CARRY((\v1|P1_paddle_y\(1) & (\v1|always0~0_combout\ & !\v1|P1_paddle_y[0]~11\)) # (!\v1|P1_paddle_y\(1) & ((\v1|always0~0_combout\) # (!\v1|P1_paddle_y[0]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(1),
	datab => \v1|always0~0_combout\,
	datad => VCC,
	cin => \v1|P1_paddle_y[0]~11\,
	combout => \v1|P1_paddle_y[1]~12_combout\,
	cout => \v1|P1_paddle_y[1]~13\);

-- Location: LCCOMB_X24_Y25_N8
\v1|P1_paddle_y[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[2]~14_combout\ = (\v1|P1_paddle_y\(2) & ((\v1|always0~0_combout\ & (\v1|P1_paddle_y[1]~13\ & VCC)) # (!\v1|always0~0_combout\ & (!\v1|P1_paddle_y[1]~13\)))) # (!\v1|P1_paddle_y\(2) & ((\v1|always0~0_combout\ & (!\v1|P1_paddle_y[1]~13\)) # 
-- (!\v1|always0~0_combout\ & ((\v1|P1_paddle_y[1]~13\) # (GND)))))
-- \v1|P1_paddle_y[2]~15\ = CARRY((\v1|P1_paddle_y\(2) & (!\v1|always0~0_combout\ & !\v1|P1_paddle_y[1]~13\)) # (!\v1|P1_paddle_y\(2) & ((!\v1|P1_paddle_y[1]~13\) # (!\v1|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(2),
	datab => \v1|always0~0_combout\,
	datad => VCC,
	cin => \v1|P1_paddle_y[1]~13\,
	combout => \v1|P1_paddle_y[2]~14_combout\,
	cout => \v1|P1_paddle_y[2]~15\);

-- Location: LCCOMB_X24_Y25_N10
\v1|P1_paddle_y[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[3]~16_combout\ = (\v1|P1_paddle_y\(3) & ((\v1|always0~0_combout\ & (!\v1|P1_paddle_y[2]~15\)) # (!\v1|always0~0_combout\ & (\v1|P1_paddle_y[2]~15\ & VCC)))) # (!\v1|P1_paddle_y\(3) & ((\v1|always0~0_combout\ & ((\v1|P1_paddle_y[2]~15\) # 
-- (GND))) # (!\v1|always0~0_combout\ & (!\v1|P1_paddle_y[2]~15\))))
-- \v1|P1_paddle_y[3]~17\ = CARRY((\v1|P1_paddle_y\(3) & (\v1|always0~0_combout\ & !\v1|P1_paddle_y[2]~15\)) # (!\v1|P1_paddle_y\(3) & ((\v1|always0~0_combout\) # (!\v1|P1_paddle_y[2]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(3),
	datab => \v1|always0~0_combout\,
	datad => VCC,
	cin => \v1|P1_paddle_y[2]~15\,
	combout => \v1|P1_paddle_y[3]~16_combout\,
	cout => \v1|P1_paddle_y[3]~17\);

-- Location: LCCOMB_X24_Y25_N12
\v1|P1_paddle_y[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[4]~18_combout\ = (\v1|P1_paddle_y\(4) & ((\v1|always0~0_combout\ & (\v1|P1_paddle_y[3]~17\ & VCC)) # (!\v1|always0~0_combout\ & (!\v1|P1_paddle_y[3]~17\)))) # (!\v1|P1_paddle_y\(4) & ((\v1|always0~0_combout\ & (!\v1|P1_paddle_y[3]~17\)) # 
-- (!\v1|always0~0_combout\ & ((\v1|P1_paddle_y[3]~17\) # (GND)))))
-- \v1|P1_paddle_y[4]~19\ = CARRY((\v1|P1_paddle_y\(4) & (!\v1|always0~0_combout\ & !\v1|P1_paddle_y[3]~17\)) # (!\v1|P1_paddle_y\(4) & ((!\v1|P1_paddle_y[3]~17\) # (!\v1|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(4),
	datab => \v1|always0~0_combout\,
	datad => VCC,
	cin => \v1|P1_paddle_y[3]~17\,
	combout => \v1|P1_paddle_y[4]~18_combout\,
	cout => \v1|P1_paddle_y[4]~19\);

-- Location: LCCOMB_X24_Y25_N14
\v1|P1_paddle_y[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[5]~20_combout\ = ((\v1|always0~0_combout\ $ (\v1|P1_paddle_y\(5) $ (!\v1|P1_paddle_y[4]~19\)))) # (GND)
-- \v1|P1_paddle_y[5]~21\ = CARRY((\v1|always0~0_combout\ & ((\v1|P1_paddle_y\(5)) # (!\v1|P1_paddle_y[4]~19\))) # (!\v1|always0~0_combout\ & (\v1|P1_paddle_y\(5) & !\v1|P1_paddle_y[4]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|always0~0_combout\,
	datab => \v1|P1_paddle_y\(5),
	datad => VCC,
	cin => \v1|P1_paddle_y[4]~19\,
	combout => \v1|P1_paddle_y[5]~20_combout\,
	cout => \v1|P1_paddle_y[5]~21\);

-- Location: LCCOMB_X24_Y25_N16
\v1|P1_paddle_y[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[6]~22_combout\ = ((\v1|P1_paddle_y\(6) $ (\v1|always0~0_combout\ $ (\v1|P1_paddle_y[5]~21\)))) # (GND)
-- \v1|P1_paddle_y[6]~23\ = CARRY((\v1|P1_paddle_y\(6) & ((!\v1|P1_paddle_y[5]~21\) # (!\v1|always0~0_combout\))) # (!\v1|P1_paddle_y\(6) & (!\v1|always0~0_combout\ & !\v1|P1_paddle_y[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(6),
	datab => \v1|always0~0_combout\,
	datad => VCC,
	cin => \v1|P1_paddle_y[5]~21\,
	combout => \v1|P1_paddle_y[6]~22_combout\,
	cout => \v1|P1_paddle_y[6]~23\);

-- Location: LCCOMB_X24_Y25_N18
\v1|P1_paddle_y[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[7]~24_combout\ = ((\v1|P1_paddle_y\(7) $ (\v1|always0~0_combout\ $ (!\v1|P1_paddle_y[6]~23\)))) # (GND)
-- \v1|P1_paddle_y[7]~25\ = CARRY((\v1|P1_paddle_y\(7) & ((\v1|always0~0_combout\) # (!\v1|P1_paddle_y[6]~23\))) # (!\v1|P1_paddle_y\(7) & (\v1|always0~0_combout\ & !\v1|P1_paddle_y[6]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(7),
	datab => \v1|always0~0_combout\,
	datad => VCC,
	cin => \v1|P1_paddle_y[6]~23\,
	combout => \v1|P1_paddle_y[7]~24_combout\,
	cout => \v1|P1_paddle_y[7]~25\);

-- Location: LCCOMB_X24_Y25_N20
\v1|P1_paddle_y[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[8]~26_combout\ = ((\v1|P1_paddle_y\(8) $ (\v1|always0~0_combout\ $ (\v1|P1_paddle_y[7]~25\)))) # (GND)
-- \v1|P1_paddle_y[8]~27\ = CARRY((\v1|P1_paddle_y\(8) & ((!\v1|P1_paddle_y[7]~25\) # (!\v1|always0~0_combout\))) # (!\v1|P1_paddle_y\(8) & (!\v1|always0~0_combout\ & !\v1|P1_paddle_y[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(8),
	datab => \v1|always0~0_combout\,
	datad => VCC,
	cin => \v1|P1_paddle_y[7]~25\,
	combout => \v1|P1_paddle_y[8]~26_combout\,
	cout => \v1|P1_paddle_y[8]~27\);

-- Location: FF_X24_Y25_N21
\v1|P1_paddle_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \v1|P1_paddle_y[8]~26_combout\,
	clrn => \ORG_BUTTON[0]~input_o\,
	ena => \v1|P1_paddle_y[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v1|P1_paddle_y\(8));

-- Location: FF_X24_Y25_N9
\v1|P1_paddle_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \v1|P1_paddle_y[2]~14_combout\,
	clrn => \ORG_BUTTON[0]~input_o\,
	ena => \v1|P1_paddle_y[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v1|P1_paddle_y\(2));

-- Location: LCCOMB_X24_Y25_N22
\v1|P1_paddle_y[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[9]~28_combout\ = \v1|P1_paddle_y\(9) $ (\v1|P1_paddle_y[8]~27\ $ (!\v1|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(9),
	datad => \v1|always0~0_combout\,
	cin => \v1|P1_paddle_y[8]~27\,
	combout => \v1|P1_paddle_y[9]~28_combout\);

-- Location: FF_X24_Y25_N23
\v1|P1_paddle_y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \v1|P1_paddle_y[9]~28_combout\,
	clrn => \ORG_BUTTON[0]~input_o\,
	ena => \v1|P1_paddle_y[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v1|P1_paddle_y\(9));

-- Location: FF_X24_Y25_N7
\v1|P1_paddle_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \v1|P1_paddle_y[1]~12_combout\,
	clrn => \ORG_BUTTON[0]~input_o\,
	ena => \v1|P1_paddle_y[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v1|P1_paddle_y\(1));

-- Location: LCCOMB_X24_Y25_N0
\v1|P1_paddle_y[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[6]~30_combout\ = (!\v1|P1_paddle_y\(0) & (\v1|P1_paddle_y\(2) & (!\v1|P1_paddle_y\(9) & !\v1|P1_paddle_y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(0),
	datab => \v1|P1_paddle_y\(2),
	datac => \v1|P1_paddle_y\(9),
	datad => \v1|P1_paddle_y\(1),
	combout => \v1|P1_paddle_y[6]~30_combout\);

-- Location: LCCOMB_X24_Y25_N28
\v1|P1_paddle_y[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[6]~32_combout\ = (\v1|P1_paddle_y[6]~31_combout\ & (\v1|P1_paddle_y\(7) & (!\v1|P1_paddle_y\(8) & \v1|P1_paddle_y[6]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y[6]~31_combout\,
	datab => \v1|P1_paddle_y\(7),
	datac => \v1|P1_paddle_y\(8),
	datad => \v1|P1_paddle_y[6]~30_combout\,
	combout => \v1|P1_paddle_y[6]~32_combout\);

-- Location: IOIBUF_X0_Y23_N1
\ORG_BUTTON[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ORG_BUTTON(2),
	o => \ORG_BUTTON[2]~input_o\);

-- Location: LCCOMB_X24_Y25_N2
\v1|P1_paddle_y[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[6]~33_combout\ = (\v1|always0~0_combout\) # ((!\v1|P1_paddle_y[6]~32_combout\ & !\ORG_BUTTON[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \v1|P1_paddle_y[6]~32_combout\,
	datac => \ORG_BUTTON[2]~input_o\,
	datad => \v1|always0~0_combout\,
	combout => \v1|P1_paddle_y[6]~33_combout\);

-- Location: FF_X24_Y25_N15
\v1|P1_paddle_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \v1|P1_paddle_y[5]~20_combout\,
	clrn => \ORG_BUTTON[0]~input_o\,
	ena => \v1|P1_paddle_y[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v1|P1_paddle_y\(5));

-- Location: FF_X24_Y25_N17
\v1|P1_paddle_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \v1|P1_paddle_y[6]~22_combout\,
	clrn => \ORG_BUTTON[0]~input_o\,
	ena => \v1|P1_paddle_y[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v1|P1_paddle_y\(6));

-- Location: FF_X24_Y25_N13
\v1|P1_paddle_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \v1|P1_paddle_y[4]~18_combout\,
	clrn => \ORG_BUTTON[0]~input_o\,
	ena => \v1|P1_paddle_y[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v1|P1_paddle_y\(4));

-- Location: FF_X24_Y25_N11
\v1|P1_paddle_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \v1|P1_paddle_y[3]~16_combout\,
	clrn => \ORG_BUTTON[0]~input_o\,
	ena => \v1|P1_paddle_y[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v1|P1_paddle_y\(3));

-- Location: LCCOMB_X26_Y25_N16
\v1|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|Add0~1_cout\ = CARRY(\v1|P1_paddle_y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \v1|P1_paddle_y\(3),
	datad => VCC,
	cout => \v1|Add0~1_cout\);

-- Location: LCCOMB_X26_Y25_N18
\v1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|Add0~2_combout\ = (\v1|P1_paddle_y\(4) & (!\v1|Add0~1_cout\)) # (!\v1|P1_paddle_y\(4) & (\v1|Add0~1_cout\ & VCC))
-- \v1|Add0~3\ = CARRY((\v1|P1_paddle_y\(4) & !\v1|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v1|P1_paddle_y\(4),
	datad => VCC,
	cin => \v1|Add0~1_cout\,
	combout => \v1|Add0~2_combout\,
	cout => \v1|Add0~3\);

-- Location: LCCOMB_X26_Y25_N20
\v1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|Add0~4_combout\ = (\v1|P1_paddle_y\(5) & (\v1|Add0~3\ $ (GND))) # (!\v1|P1_paddle_y\(5) & ((GND) # (!\v1|Add0~3\)))
-- \v1|Add0~5\ = CARRY((!\v1|Add0~3\) # (!\v1|P1_paddle_y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(5),
	datad => VCC,
	cin => \v1|Add0~3\,
	combout => \v1|Add0~4_combout\,
	cout => \v1|Add0~5\);

-- Location: LCCOMB_X26_Y25_N22
\v1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|Add0~6_combout\ = (\v1|P1_paddle_y\(6) & (\v1|Add0~5\ & VCC)) # (!\v1|P1_paddle_y\(6) & (!\v1|Add0~5\))
-- \v1|Add0~7\ = CARRY((!\v1|P1_paddle_y\(6) & !\v1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v1|P1_paddle_y\(6),
	datad => VCC,
	cin => \v1|Add0~5\,
	combout => \v1|Add0~6_combout\,
	cout => \v1|Add0~7\);

-- Location: LCCOMB_X26_Y25_N24
\v1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|Add0~8_combout\ = (\v1|P1_paddle_y\(7) & (!\v1|Add0~7\ & VCC)) # (!\v1|P1_paddle_y\(7) & (\v1|Add0~7\ $ (GND)))
-- \v1|Add0~9\ = CARRY((!\v1|P1_paddle_y\(7) & !\v1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v1|P1_paddle_y\(7),
	datad => VCC,
	cin => \v1|Add0~7\,
	combout => \v1|Add0~8_combout\,
	cout => \v1|Add0~9\);

-- Location: LCCOMB_X26_Y25_N26
\v1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|Add0~10_combout\ = (\v1|P1_paddle_y\(8) & (!\v1|Add0~9\)) # (!\v1|P1_paddle_y\(8) & ((\v1|Add0~9\) # (GND)))
-- \v1|Add0~11\ = CARRY((!\v1|Add0~9\) # (!\v1|P1_paddle_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(8),
	datad => VCC,
	cin => \v1|Add0~9\,
	combout => \v1|Add0~10_combout\,
	cout => \v1|Add0~11\);

-- Location: LCCOMB_X26_Y25_N2
\v1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|LessThan0~0_combout\ = (((!\v1|Add0~4_combout\) # (!\v1|Add0~10_combout\)) # (!\v1|Add0~8_combout\)) # (!\v1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v1|Add0~6_combout\,
	datab => \v1|Add0~8_combout\,
	datac => \v1|Add0~10_combout\,
	datad => \v1|Add0~4_combout\,
	combout => \v1|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y25_N8
\v1|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|always0~0_combout\ = (!\ORG_BUTTON[1]~input_o\ & (!\v1|Add0~12_combout\ & (!\v1|Add0~14_combout\ & \v1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ORG_BUTTON[1]~input_o\,
	datab => \v1|Add0~12_combout\,
	datac => \v1|Add0~14_combout\,
	datad => \v1|LessThan0~0_combout\,
	combout => \v1|always0~0_combout\);

-- Location: FF_X24_Y25_N19
\v1|P1_paddle_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \v1|P1_paddle_y[7]~24_combout\,
	clrn => \ORG_BUTTON[0]~input_o\,
	ena => \v1|P1_paddle_y[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v1|P1_paddle_y\(7));

-- Location: LCCOMB_X26_Y25_N30
\v1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|Add0~14_combout\ = \v1|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \v1|Add0~13\,
	combout => \v1|Add0~14_combout\);

-- Location: LCCOMB_X28_Y25_N2
\b1|x_ball[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_ball[1]~12_combout\ = (\b1|x_ball\(1) & ((\b1|x_direction~8_combout\ & (!\b1|x_ball[0]~11\)) # (!\b1|x_direction~8_combout\ & (\b1|x_ball[0]~11\ & VCC)))) # (!\b1|x_ball\(1) & ((\b1|x_direction~8_combout\ & ((\b1|x_ball[0]~11\) # (GND))) # 
-- (!\b1|x_direction~8_combout\ & (!\b1|x_ball[0]~11\))))
-- \b1|x_ball[1]~13\ = CARRY((\b1|x_ball\(1) & (\b1|x_direction~8_combout\ & !\b1|x_ball[0]~11\)) # (!\b1|x_ball\(1) & ((\b1|x_direction~8_combout\) # (!\b1|x_ball[0]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(1),
	datab => \b1|x_direction~8_combout\,
	datad => VCC,
	cin => \b1|x_ball[0]~11\,
	combout => \b1|x_ball[1]~12_combout\,
	cout => \b1|x_ball[1]~13\);

-- Location: LCCOMB_X28_Y25_N4
\b1|x_ball[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_ball[2]~14_combout\ = ((\b1|x_ball\(2) $ (\b1|x_direction~8_combout\ $ (\b1|x_ball[1]~13\)))) # (GND)
-- \b1|x_ball[2]~15\ = CARRY((\b1|x_ball\(2) & ((!\b1|x_ball[1]~13\) # (!\b1|x_direction~8_combout\))) # (!\b1|x_ball\(2) & (!\b1|x_direction~8_combout\ & !\b1|x_ball[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(2),
	datab => \b1|x_direction~8_combout\,
	datad => VCC,
	cin => \b1|x_ball[1]~13\,
	combout => \b1|x_ball[2]~14_combout\,
	cout => \b1|x_ball[2]~15\);

-- Location: LCCOMB_X28_Y25_N6
\b1|x_ball[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_ball[3]~16_combout\ = (\b1|x_ball\(3) & ((\b1|x_direction~8_combout\ & (!\b1|x_ball[2]~15\)) # (!\b1|x_direction~8_combout\ & (\b1|x_ball[2]~15\ & VCC)))) # (!\b1|x_ball\(3) & ((\b1|x_direction~8_combout\ & ((\b1|x_ball[2]~15\) # (GND))) # 
-- (!\b1|x_direction~8_combout\ & (!\b1|x_ball[2]~15\))))
-- \b1|x_ball[3]~17\ = CARRY((\b1|x_ball\(3) & (\b1|x_direction~8_combout\ & !\b1|x_ball[2]~15\)) # (!\b1|x_ball\(3) & ((\b1|x_direction~8_combout\) # (!\b1|x_ball[2]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(3),
	datab => \b1|x_direction~8_combout\,
	datad => VCC,
	cin => \b1|x_ball[2]~15\,
	combout => \b1|x_ball[3]~16_combout\,
	cout => \b1|x_ball[3]~17\);

-- Location: LCCOMB_X28_Y25_N8
\b1|x_ball[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_ball[4]~18_combout\ = ((\b1|x_ball\(4) $ (\b1|x_direction~8_combout\ $ (\b1|x_ball[3]~17\)))) # (GND)
-- \b1|x_ball[4]~19\ = CARRY((\b1|x_ball\(4) & ((!\b1|x_ball[3]~17\) # (!\b1|x_direction~8_combout\))) # (!\b1|x_ball\(4) & (!\b1|x_direction~8_combout\ & !\b1|x_ball[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(4),
	datab => \b1|x_direction~8_combout\,
	datad => VCC,
	cin => \b1|x_ball[3]~17\,
	combout => \b1|x_ball[4]~18_combout\,
	cout => \b1|x_ball[4]~19\);

-- Location: LCCOMB_X28_Y25_N10
\b1|x_ball[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_ball[5]~20_combout\ = (\b1|x_ball\(5) & ((\b1|x_direction~8_combout\ & (!\b1|x_ball[4]~19\)) # (!\b1|x_direction~8_combout\ & (\b1|x_ball[4]~19\ & VCC)))) # (!\b1|x_ball\(5) & ((\b1|x_direction~8_combout\ & ((\b1|x_ball[4]~19\) # (GND))) # 
-- (!\b1|x_direction~8_combout\ & (!\b1|x_ball[4]~19\))))
-- \b1|x_ball[5]~21\ = CARRY((\b1|x_ball\(5) & (\b1|x_direction~8_combout\ & !\b1|x_ball[4]~19\)) # (!\b1|x_ball\(5) & ((\b1|x_direction~8_combout\) # (!\b1|x_ball[4]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(5),
	datab => \b1|x_direction~8_combout\,
	datad => VCC,
	cin => \b1|x_ball[4]~19\,
	combout => \b1|x_ball[5]~20_combout\,
	cout => \b1|x_ball[5]~21\);

-- Location: LCCOMB_X28_Y25_N12
\b1|x_ball[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_ball[6]~22_combout\ = ((\b1|x_ball\(6) $ (\b1|x_direction~8_combout\ $ (\b1|x_ball[5]~21\)))) # (GND)
-- \b1|x_ball[6]~23\ = CARRY((\b1|x_ball\(6) & ((!\b1|x_ball[5]~21\) # (!\b1|x_direction~8_combout\))) # (!\b1|x_ball\(6) & (!\b1|x_direction~8_combout\ & !\b1|x_ball[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(6),
	datab => \b1|x_direction~8_combout\,
	datad => VCC,
	cin => \b1|x_ball[5]~21\,
	combout => \b1|x_ball[6]~22_combout\,
	cout => \b1|x_ball[6]~23\);

-- Location: LCCOMB_X28_Y25_N14
\b1|x_ball[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_ball[7]~24_combout\ = (\b1|x_ball\(7) & ((\b1|x_direction~8_combout\ & (!\b1|x_ball[6]~23\)) # (!\b1|x_direction~8_combout\ & (\b1|x_ball[6]~23\ & VCC)))) # (!\b1|x_ball\(7) & ((\b1|x_direction~8_combout\ & ((\b1|x_ball[6]~23\) # (GND))) # 
-- (!\b1|x_direction~8_combout\ & (!\b1|x_ball[6]~23\))))
-- \b1|x_ball[7]~25\ = CARRY((\b1|x_ball\(7) & (\b1|x_direction~8_combout\ & !\b1|x_ball[6]~23\)) # (!\b1|x_ball\(7) & ((\b1|x_direction~8_combout\) # (!\b1|x_ball[6]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(7),
	datab => \b1|x_direction~8_combout\,
	datad => VCC,
	cin => \b1|x_ball[6]~23\,
	combout => \b1|x_ball[7]~24_combout\,
	cout => \b1|x_ball[7]~25\);

-- Location: FF_X28_Y25_N15
\b1|x_ball[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|x_ball[7]~24_combout\,
	asdata => \~GND~combout\,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|x_ball\(7));

-- Location: FF_X28_Y25_N5
\b1|x_ball[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|x_ball[2]~14_combout\,
	asdata => VCC,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|x_ball\(2));

-- Location: FF_X28_Y25_N9
\b1|x_ball[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|x_ball[4]~18_combout\,
	asdata => VCC,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|x_ball\(4));

-- Location: FF_X28_Y25_N3
\b1|x_ball[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|x_ball[1]~12_combout\,
	asdata => VCC,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|x_ball\(1));

-- Location: LCCOMB_X28_Y25_N26
\b1|x_direction~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_direction~3_combout\ = (\b1|x_ball\(3) & (\b1|x_ball\(2) & (\b1|x_ball\(4) & \b1|x_ball\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(3),
	datab => \b1|x_ball\(2),
	datac => \b1|x_ball\(4),
	datad => \b1|x_ball\(1),
	combout => \b1|x_direction~3_combout\);

-- Location: LCCOMB_X28_Y25_N16
\b1|x_ball[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_ball[8]~26_combout\ = ((\b1|x_ball\(8) $ (\b1|x_direction~8_combout\ $ (\b1|x_ball[7]~25\)))) # (GND)
-- \b1|x_ball[8]~27\ = CARRY((\b1|x_ball\(8) & ((!\b1|x_ball[7]~25\) # (!\b1|x_direction~8_combout\))) # (!\b1|x_ball\(8) & (!\b1|x_direction~8_combout\ & !\b1|x_ball[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(8),
	datab => \b1|x_direction~8_combout\,
	datad => VCC,
	cin => \b1|x_ball[7]~25\,
	combout => \b1|x_ball[8]~26_combout\,
	cout => \b1|x_ball[8]~27\);

-- Location: FF_X28_Y25_N17
\b1|x_ball[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|x_ball[8]~26_combout\,
	asdata => VCC,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|x_ball\(8));

-- Location: LCCOMB_X28_Y25_N20
\b1|x_direction~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_direction~4_combout\ = (\b1|x_ball\(6)) # ((\b1|x_ball\(7)) # ((\b1|x_direction~3_combout\) # (\b1|x_ball\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(6),
	datab => \b1|x_ball\(7),
	datac => \b1|x_direction~3_combout\,
	datad => \b1|x_ball\(8),
	combout => \b1|x_direction~4_combout\);

-- Location: LCCOMB_X27_Y26_N20
\b1|y_ball[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[5]~24_combout\ = (\b1|y_ball\(5) & ((\b1|y_direction~4_combout\ & (\b1|y_ball[4]~23\ & VCC)) # (!\b1|y_direction~4_combout\ & (!\b1|y_ball[4]~23\)))) # (!\b1|y_ball\(5) & ((\b1|y_direction~4_combout\ & (!\b1|y_ball[4]~23\)) # 
-- (!\b1|y_direction~4_combout\ & ((\b1|y_ball[4]~23\) # (GND)))))
-- \b1|y_ball[5]~25\ = CARRY((\b1|y_ball\(5) & (!\b1|y_direction~4_combout\ & !\b1|y_ball[4]~23\)) # (!\b1|y_ball\(5) & ((!\b1|y_ball[4]~23\) # (!\b1|y_direction~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(5),
	datab => \b1|y_direction~4_combout\,
	datad => VCC,
	cin => \b1|y_ball[4]~23\,
	combout => \b1|y_ball[5]~24_combout\,
	cout => \b1|y_ball[5]~25\);

-- Location: LCCOMB_X27_Y26_N22
\b1|y_ball[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[6]~26_combout\ = ((\b1|y_ball\(6) $ (\b1|y_direction~4_combout\ $ (!\b1|y_ball[5]~25\)))) # (GND)
-- \b1|y_ball[6]~27\ = CARRY((\b1|y_ball\(6) & ((\b1|y_direction~4_combout\) # (!\b1|y_ball[5]~25\))) # (!\b1|y_ball\(6) & (\b1|y_direction~4_combout\ & !\b1|y_ball[5]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(6),
	datab => \b1|y_direction~4_combout\,
	datad => VCC,
	cin => \b1|y_ball[5]~25\,
	combout => \b1|y_ball[6]~26_combout\,
	cout => \b1|y_ball[6]~27\);

-- Location: LCCOMB_X27_Y26_N24
\b1|y_ball[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[7]~28_combout\ = (\b1|y_ball\(7) & ((\b1|y_direction~4_combout\ & (\b1|y_ball[6]~27\ & VCC)) # (!\b1|y_direction~4_combout\ & (!\b1|y_ball[6]~27\)))) # (!\b1|y_ball\(7) & ((\b1|y_direction~4_combout\ & (!\b1|y_ball[6]~27\)) # 
-- (!\b1|y_direction~4_combout\ & ((\b1|y_ball[6]~27\) # (GND)))))
-- \b1|y_ball[7]~29\ = CARRY((\b1|y_ball\(7) & (!\b1|y_direction~4_combout\ & !\b1|y_ball[6]~27\)) # (!\b1|y_ball\(7) & ((!\b1|y_ball[6]~27\) # (!\b1|y_direction~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(7),
	datab => \b1|y_direction~4_combout\,
	datad => VCC,
	cin => \b1|y_ball[6]~27\,
	combout => \b1|y_ball[7]~28_combout\,
	cout => \b1|y_ball[7]~29\);

-- Location: LCCOMB_X27_Y26_N26
\b1|y_ball[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[8]~30_combout\ = ((\b1|y_ball\(8) $ (\b1|y_direction~4_combout\ $ (!\b1|y_ball[7]~29\)))) # (GND)
-- \b1|y_ball[8]~31\ = CARRY((\b1|y_ball\(8) & ((\b1|y_direction~4_combout\) # (!\b1|y_ball[7]~29\))) # (!\b1|y_ball\(8) & (\b1|y_direction~4_combout\ & !\b1|y_ball[7]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(8),
	datab => \b1|y_direction~4_combout\,
	datad => VCC,
	cin => \b1|y_ball[7]~29\,
	combout => \b1|y_ball[8]~30_combout\,
	cout => \b1|y_ball[8]~31\);

-- Location: FF_X27_Y26_N27
\b1|y_ball[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|y_ball[8]~30_combout\,
	asdata => \~GND~combout\,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|y_ball\(8));

-- Location: FF_X27_Y26_N21
\b1|y_ball[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|y_ball[5]~24_combout\,
	asdata => VCC,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|y_ball\(5));

-- Location: FF_X27_Y26_N15
\b1|y_ball[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|y_ball[2]~18_combout\,
	asdata => VCC,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|y_ball\(2));

-- Location: FF_X27_Y26_N11
\b1|y_ball[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|y_ball[0]~14_combout\,
	asdata => \~GND~combout\,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|y_ball\(0));

-- Location: LCCOMB_X27_Y25_N0
\b1|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan2~1_cout\ = CARRY((\v1|P1_paddle_y\(0) & !\b1|y_ball\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(0),
	datab => \b1|y_ball\(0),
	datad => VCC,
	cout => \b1|LessThan2~1_cout\);

-- Location: LCCOMB_X27_Y25_N2
\b1|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan2~3_cout\ = CARRY((\b1|y_ball\(1) & ((!\b1|LessThan2~1_cout\) # (!\v1|P1_paddle_y\(1)))) # (!\b1|y_ball\(1) & (!\v1|P1_paddle_y\(1) & !\b1|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(1),
	datab => \v1|P1_paddle_y\(1),
	datad => VCC,
	cin => \b1|LessThan2~1_cout\,
	cout => \b1|LessThan2~3_cout\);

-- Location: LCCOMB_X27_Y25_N4
\b1|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan2~5_cout\ = CARRY((\v1|P1_paddle_y\(2) & (!\b1|y_ball\(2) & !\b1|LessThan2~3_cout\)) # (!\v1|P1_paddle_y\(2) & ((!\b1|LessThan2~3_cout\) # (!\b1|y_ball\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(2),
	datab => \b1|y_ball\(2),
	datad => VCC,
	cin => \b1|LessThan2~3_cout\,
	cout => \b1|LessThan2~5_cout\);

-- Location: LCCOMB_X27_Y25_N6
\b1|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan2~7_cout\ = CARRY((\b1|y_ball\(3) & ((\v1|P1_paddle_y\(3)) # (!\b1|LessThan2~5_cout\))) # (!\b1|y_ball\(3) & (\v1|P1_paddle_y\(3) & !\b1|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(3),
	datab => \v1|P1_paddle_y\(3),
	datad => VCC,
	cin => \b1|LessThan2~5_cout\,
	cout => \b1|LessThan2~7_cout\);

-- Location: LCCOMB_X27_Y25_N8
\b1|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan2~9_cout\ = CARRY((\b1|y_ball\(4) & (\v1|Add0~2_combout\ & !\b1|LessThan2~7_cout\)) # (!\b1|y_ball\(4) & ((\v1|Add0~2_combout\) # (!\b1|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(4),
	datab => \v1|Add0~2_combout\,
	datad => VCC,
	cin => \b1|LessThan2~7_cout\,
	cout => \b1|LessThan2~9_cout\);

-- Location: LCCOMB_X27_Y25_N10
\b1|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan2~11_cout\ = CARRY((\v1|Add0~4_combout\ & (\b1|y_ball\(5) & !\b1|LessThan2~9_cout\)) # (!\v1|Add0~4_combout\ & ((\b1|y_ball\(5)) # (!\b1|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|Add0~4_combout\,
	datab => \b1|y_ball\(5),
	datad => VCC,
	cin => \b1|LessThan2~9_cout\,
	cout => \b1|LessThan2~11_cout\);

-- Location: LCCOMB_X27_Y25_N12
\b1|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan2~13_cout\ = CARRY((\b1|y_ball\(6) & (\v1|Add0~6_combout\ & !\b1|LessThan2~11_cout\)) # (!\b1|y_ball\(6) & ((\v1|Add0~6_combout\) # (!\b1|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(6),
	datab => \v1|Add0~6_combout\,
	datad => VCC,
	cin => \b1|LessThan2~11_cout\,
	cout => \b1|LessThan2~13_cout\);

-- Location: LCCOMB_X27_Y25_N14
\b1|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan2~15_cout\ = CARRY((\b1|y_ball\(7) & ((!\b1|LessThan2~13_cout\) # (!\v1|Add0~8_combout\))) # (!\b1|y_ball\(7) & (!\v1|Add0~8_combout\ & !\b1|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(7),
	datab => \v1|Add0~8_combout\,
	datad => VCC,
	cin => \b1|LessThan2~13_cout\,
	cout => \b1|LessThan2~15_cout\);

-- Location: LCCOMB_X27_Y25_N16
\b1|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan2~17_cout\ = CARRY((\v1|Add0~10_combout\ & ((!\b1|LessThan2~15_cout\) # (!\b1|y_ball\(8)))) # (!\v1|Add0~10_combout\ & (!\b1|y_ball\(8) & !\b1|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|Add0~10_combout\,
	datab => \b1|y_ball\(8),
	datad => VCC,
	cin => \b1|LessThan2~15_cout\,
	cout => \b1|LessThan2~17_cout\);

-- Location: LCCOMB_X27_Y25_N18
\b1|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan2~18_combout\ = (\b1|y_ball\(9) & (\b1|LessThan2~17_cout\ & \v1|Add0~12_combout\)) # (!\b1|y_ball\(9) & ((\b1|LessThan2~17_cout\) # (\v1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_ball\(9),
	datad => \v1|Add0~12_combout\,
	cin => \b1|LessThan2~17_cout\,
	combout => \b1|LessThan2~18_combout\);

-- Location: LCCOMB_X27_Y25_N24
\b1|x_direction~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_direction~5_combout\ = (!\b1|x_ball\(9) & ((\b1|x_direction~4_combout\) # ((!\v1|Add0~14_combout\ & !\b1|LessThan2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(9),
	datab => \v1|Add0~14_combout\,
	datac => \b1|x_direction~4_combout\,
	datad => \b1|LessThan2~18_combout\,
	combout => \b1|x_direction~5_combout\);

-- Location: LCCOMB_X28_Y25_N18
\b1|x_ball[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_ball[9]~28_combout\ = \b1|x_ball\(9) $ (\b1|x_ball[8]~27\ $ (!\b1|x_direction~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|x_ball\(9),
	datad => \b1|x_direction~8_combout\,
	cin => \b1|x_ball[8]~27\,
	combout => \b1|x_ball[9]~28_combout\);

-- Location: FF_X28_Y25_N19
\b1|x_ball[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|x_ball[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|x_ball\(9));

-- Location: LCCOMB_X28_Y25_N24
\b1|x_direction~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_direction~2_combout\ = (\b1|x_direction~1_combout\ & (!\b1|x_ball\(8) & (!\b1|x_ball\(7) & \b1|x_ball\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_direction~1_combout\,
	datab => \b1|x_ball\(8),
	datac => \b1|x_ball\(7),
	datad => \b1|x_ball\(9),
	combout => \b1|x_direction~2_combout\);

-- Location: FF_X27_Y26_N23
\b1|y_ball[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|y_ball[6]~26_combout\,
	asdata => VCC,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|y_ball\(6));

-- Location: LCCOMB_X24_Y23_N10
\b1|Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add11~6_combout\ = (\b1|y_ball\(5) & (!\b1|Add11~5\)) # (!\b1|y_ball\(5) & ((\b1|Add11~5\) # (GND)))
-- \b1|Add11~7\ = CARRY((!\b1|Add11~5\) # (!\b1|y_ball\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_ball\(5),
	datad => VCC,
	cin => \b1|Add11~5\,
	combout => \b1|Add11~6_combout\,
	cout => \b1|Add11~7\);

-- Location: LCCOMB_X24_Y23_N12
\b1|Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add11~8_combout\ = (\b1|y_ball\(6) & ((GND) # (!\b1|Add11~7\))) # (!\b1|y_ball\(6) & (\b1|Add11~7\ $ (GND)))
-- \b1|Add11~9\ = CARRY((\b1|y_ball\(6)) # (!\b1|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_ball\(6),
	datad => VCC,
	cin => \b1|Add11~7\,
	combout => \b1|Add11~8_combout\,
	cout => \b1|Add11~9\);

-- Location: LCCOMB_X24_Y23_N14
\b1|Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add11~10_combout\ = (\b1|y_ball\(7) & (\b1|Add11~9\ & VCC)) # (!\b1|y_ball\(7) & (!\b1|Add11~9\))
-- \b1|Add11~11\ = CARRY((!\b1|y_ball\(7) & !\b1|Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(7),
	datad => VCC,
	cin => \b1|Add11~9\,
	combout => \b1|Add11~10_combout\,
	cout => \b1|Add11~11\);

-- Location: LCCOMB_X24_Y23_N18
\b1|Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add11~14_combout\ = \b1|Add11~13\ $ (!\b1|y_ball\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b1|y_ball\(9),
	cin => \b1|Add11~13\,
	combout => \b1|Add11~14_combout\);

-- Location: FF_X27_Y26_N25
\b1|y_ball[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|y_ball[7]~28_combout\,
	asdata => VCC,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|y_ball\(7));

-- Location: FF_X27_Y26_N13
\b1|y_ball[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|y_ball[1]~16_combout\,
	asdata => VCC,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|y_ball\(1));

-- Location: FF_X27_Y26_N17
\b1|y_ball[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|y_ball[3]~20_combout\,
	asdata => VCC,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|y_ball\(3));

-- Location: LCCOMB_X26_Y26_N28
\b1|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan7~0_combout\ = (\b1|y_ball\(3)) # ((\b1|y_ball\(2) & ((\b1|y_ball\(0)) # (\b1|y_ball\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(0),
	datab => \b1|y_ball\(1),
	datac => \b1|y_ball\(2),
	datad => \b1|y_ball\(3),
	combout => \b1|LessThan7~0_combout\);

-- Location: LCCOMB_X26_Y26_N22
\b1|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan7~1_combout\ = (\b1|y_ball\(6)) # ((\b1|y_ball\(5) & ((\b1|y_ball\(4)) # (\b1|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(6),
	datab => \b1|y_ball\(4),
	datac => \b1|y_ball\(5),
	datad => \b1|LessThan7~0_combout\,
	combout => \b1|LessThan7~1_combout\);

-- Location: LCCOMB_X26_Y26_N24
\b1|P2_y~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~1_combout\ = (\b1|y_ball\(8) & ((!\b1|LessThan7~1_combout\) # (!\b1|y_ball\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_ball\(7),
	datac => \b1|LessThan7~1_combout\,
	datad => \b1|y_ball\(8),
	combout => \b1|P2_y~1_combout\);

-- Location: LCCOMB_X23_Y23_N28
\b1|P2_y~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~2_combout\ = (\b1|Add11~14_combout\ & (!\b1|y_ball\(9) & ((\b1|P2_y~0_combout\) # (\b1|P2_y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y~0_combout\,
	datab => \b1|Add11~14_combout\,
	datac => \b1|y_ball\(9),
	datad => \b1|P2_y~1_combout\,
	combout => \b1|P2_y~2_combout\);

-- Location: FF_X23_Y23_N29
\b1|P2_y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|P2_y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|P2_y\(9));

-- Location: LCCOMB_X23_Y23_N16
\b1|P2_y~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~6_combout\ = (\b1|Add11~10_combout\ & (!\b1|y_ball\(9) & ((\b1|P2_y~0_combout\) # (\b1|P2_y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y~0_combout\,
	datab => \b1|Add11~10_combout\,
	datac => \b1|y_ball\(9),
	datad => \b1|P2_y~1_combout\,
	combout => \b1|P2_y~6_combout\);

-- Location: FF_X23_Y23_N17
\b1|P2_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|P2_y~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|P2_y\(7));

-- Location: LCCOMB_X26_Y26_N26
\b1|P2_y~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~4_combout\ = (\b1|y_ball\(7) & (\b1|LessThan7~1_combout\ & \b1|y_ball\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_ball\(7),
	datac => \b1|LessThan7~1_combout\,
	datad => \b1|y_ball\(8),
	combout => \b1|P2_y~4_combout\);

-- Location: LCCOMB_X23_Y23_N18
\b1|P2_y~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~7_combout\ = (\b1|y_ball\(9)) # ((\b1|Add11~8_combout\ & (\b1|P2_y~3_combout\)) # (!\b1|Add11~8_combout\ & ((\b1|P2_y~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y~3_combout\,
	datab => \b1|y_ball\(9),
	datac => \b1|Add11~8_combout\,
	datad => \b1|P2_y~4_combout\,
	combout => \b1|P2_y~7_combout\);

-- Location: FF_X23_Y23_N19
\b1|P2_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|P2_y~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|P2_y\(6));

-- Location: LCCOMB_X23_Y23_N24
\b1|P2_y~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~8_combout\ = (\b1|y_ball\(9)) # ((\b1|Add11~6_combout\ & (\b1|P2_y~3_combout\)) # (!\b1|Add11~6_combout\ & ((\b1|P2_y~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y~3_combout\,
	datab => \b1|y_ball\(9),
	datac => \b1|Add11~6_combout\,
	datad => \b1|P2_y~4_combout\,
	combout => \b1|P2_y~8_combout\);

-- Location: FF_X23_Y23_N25
\b1|P2_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|P2_y~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|P2_y\(5));

-- Location: LCCOMB_X26_Y23_N24
\b1|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan6~0_combout\ = (\b1|y_ball\(4) & (\b1|y_ball\(3) & (\b1|y_ball\(2) & \b1|y_ball\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(4),
	datab => \b1|y_ball\(3),
	datac => \b1|y_ball\(2),
	datad => \b1|y_ball\(5),
	combout => \b1|LessThan6~0_combout\);

-- Location: LCCOMB_X26_Y23_N28
\b1|P2_y~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~3_combout\ = (\b1|y_ball\(6)) # ((\b1|y_ball\(7)) # ((\b1|y_ball\(8)) # (\b1|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(6),
	datab => \b1|y_ball\(7),
	datac => \b1|y_ball\(8),
	datad => \b1|LessThan6~0_combout\,
	combout => \b1|P2_y~3_combout\);

-- Location: LCCOMB_X23_Y23_N20
\b1|P2_y~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~10_combout\ = (\b1|y_ball\(9)) # ((\b1|Add11~2_combout\ & (\b1|P2_y~3_combout\)) # (!\b1|Add11~2_combout\ & ((\b1|P2_y~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|Add11~2_combout\,
	datab => \b1|P2_y~3_combout\,
	datac => \b1|y_ball\(9),
	datad => \b1|P2_y~4_combout\,
	combout => \b1|P2_y~10_combout\);

-- Location: FF_X23_Y23_N21
\b1|P2_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|P2_y~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|P2_y\(3));

-- Location: LCCOMB_X23_Y23_N0
\b1|Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add5~1_cout\ = CARRY(\b1|P2_y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1|P2_y\(3),
	datad => VCC,
	cout => \b1|Add5~1_cout\);

-- Location: LCCOMB_X23_Y23_N2
\b1|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add5~2_combout\ = (\b1|P2_y\(4) & (\b1|Add5~1_cout\ & VCC)) # (!\b1|P2_y\(4) & (!\b1|Add5~1_cout\))
-- \b1|Add5~3\ = CARRY((!\b1|P2_y\(4) & !\b1|Add5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(4),
	datad => VCC,
	cin => \b1|Add5~1_cout\,
	combout => \b1|Add5~2_combout\,
	cout => \b1|Add5~3\);

-- Location: LCCOMB_X23_Y23_N6
\b1|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add5~6_combout\ = (\b1|P2_y\(6) & (\b1|Add5~5\ & VCC)) # (!\b1|P2_y\(6) & (!\b1|Add5~5\))
-- \b1|Add5~7\ = CARRY((!\b1|P2_y\(6) & !\b1|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|P2_y\(6),
	datad => VCC,
	cin => \b1|Add5~5\,
	combout => \b1|Add5~6_combout\,
	cout => \b1|Add5~7\);

-- Location: LCCOMB_X23_Y23_N10
\b1|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add5~10_combout\ = (\b1|P2_y\(8) & (!\b1|Add5~9\)) # (!\b1|P2_y\(8) & ((\b1|Add5~9\) # (GND)))
-- \b1|Add5~11\ = CARRY((!\b1|Add5~9\) # (!\b1|P2_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(8),
	datad => VCC,
	cin => \b1|Add5~9\,
	combout => \b1|Add5~10_combout\,
	cout => \b1|Add5~11\);

-- Location: LCCOMB_X23_Y23_N12
\b1|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add5~12_combout\ = (\b1|P2_y\(9) & (\b1|Add5~11\ $ (GND))) # (!\b1|P2_y\(9) & (!\b1|Add5~11\ & VCC))
-- \b1|Add5~13\ = CARRY((\b1|P2_y\(9) & !\b1|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|P2_y\(9),
	datad => VCC,
	cin => \b1|Add5~11\,
	combout => \b1|Add5~12_combout\,
	cout => \b1|Add5~13\);

-- Location: LCCOMB_X23_Y23_N14
\b1|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Add5~14_combout\ = \b1|Add5~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b1|Add5~13\,
	combout => \b1|Add5~14_combout\);

-- Location: FF_X28_Y25_N11
\b1|x_ball[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|x_ball[5]~20_combout\,
	asdata => VCC,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|x_ball\(5));

-- Location: LCCOMB_X26_Y26_N0
\b1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan1~1_cout\ = CARRY((!\v1|P1_paddle_y\(0) & \b1|y_ball\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(0),
	datab => \b1|y_ball\(0),
	datad => VCC,
	cout => \b1|LessThan1~1_cout\);

-- Location: LCCOMB_X26_Y26_N2
\b1|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan1~3_cout\ = CARRY((\v1|P1_paddle_y\(1) & ((!\b1|LessThan1~1_cout\) # (!\b1|y_ball\(1)))) # (!\v1|P1_paddle_y\(1) & (!\b1|y_ball\(1) & !\b1|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(1),
	datab => \b1|y_ball\(1),
	datad => VCC,
	cin => \b1|LessThan1~1_cout\,
	cout => \b1|LessThan1~3_cout\);

-- Location: LCCOMB_X26_Y26_N4
\b1|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan1~5_cout\ = CARRY((\v1|P1_paddle_y\(2) & ((\b1|y_ball\(2)) # (!\b1|LessThan1~3_cout\))) # (!\v1|P1_paddle_y\(2) & (\b1|y_ball\(2) & !\b1|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(2),
	datab => \b1|y_ball\(2),
	datad => VCC,
	cin => \b1|LessThan1~3_cout\,
	cout => \b1|LessThan1~5_cout\);

-- Location: LCCOMB_X26_Y26_N6
\b1|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan1~7_cout\ = CARRY((\v1|P1_paddle_y\(3) & ((!\b1|LessThan1~5_cout\) # (!\b1|y_ball\(3)))) # (!\v1|P1_paddle_y\(3) & (!\b1|y_ball\(3) & !\b1|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(3),
	datab => \b1|y_ball\(3),
	datad => VCC,
	cin => \b1|LessThan1~5_cout\,
	cout => \b1|LessThan1~7_cout\);

-- Location: LCCOMB_X26_Y26_N8
\b1|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan1~9_cout\ = CARRY((\v1|P1_paddle_y\(4) & ((\b1|y_ball\(4)) # (!\b1|LessThan1~7_cout\))) # (!\v1|P1_paddle_y\(4) & (\b1|y_ball\(4) & !\b1|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(4),
	datab => \b1|y_ball\(4),
	datad => VCC,
	cin => \b1|LessThan1~7_cout\,
	cout => \b1|LessThan1~9_cout\);

-- Location: LCCOMB_X26_Y26_N10
\b1|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan1~11_cout\ = CARRY((\b1|y_ball\(5) & (!\v1|P1_paddle_y\(5) & !\b1|LessThan1~9_cout\)) # (!\b1|y_ball\(5) & ((!\b1|LessThan1~9_cout\) # (!\v1|P1_paddle_y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(5),
	datab => \v1|P1_paddle_y\(5),
	datad => VCC,
	cin => \b1|LessThan1~9_cout\,
	cout => \b1|LessThan1~11_cout\);

-- Location: LCCOMB_X26_Y26_N12
\b1|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan1~13_cout\ = CARRY((\v1|P1_paddle_y\(6) & (\b1|y_ball\(6) & !\b1|LessThan1~11_cout\)) # (!\v1|P1_paddle_y\(6) & ((\b1|y_ball\(6)) # (!\b1|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(6),
	datab => \b1|y_ball\(6),
	datad => VCC,
	cin => \b1|LessThan1~11_cout\,
	cout => \b1|LessThan1~13_cout\);

-- Location: LCCOMB_X26_Y26_N14
\b1|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan1~15_cout\ = CARRY((\v1|P1_paddle_y\(7) & (!\b1|y_ball\(7) & !\b1|LessThan1~13_cout\)) # (!\v1|P1_paddle_y\(7) & ((!\b1|LessThan1~13_cout\) # (!\b1|y_ball\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(7),
	datab => \b1|y_ball\(7),
	datad => VCC,
	cin => \b1|LessThan1~13_cout\,
	cout => \b1|LessThan1~15_cout\);

-- Location: LCCOMB_X26_Y26_N16
\b1|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan1~17_cout\ = CARRY((\v1|P1_paddle_y\(8) & (\b1|y_ball\(8) & !\b1|LessThan1~15_cout\)) # (!\v1|P1_paddle_y\(8) & ((\b1|y_ball\(8)) # (!\b1|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(8),
	datab => \b1|y_ball\(8),
	datad => VCC,
	cin => \b1|LessThan1~15_cout\,
	cout => \b1|LessThan1~17_cout\);

-- Location: LCCOMB_X26_Y26_N18
\b1|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan1~18_combout\ = (\b1|y_ball\(9) & ((\b1|LessThan1~17_cout\) # (!\v1|P1_paddle_y\(9)))) # (!\b1|y_ball\(9) & (\b1|LessThan1~17_cout\ & !\v1|P1_paddle_y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_ball\(9),
	datad => \v1|P1_paddle_y\(9),
	cin => \b1|LessThan1~17_cout\,
	combout => \b1|LessThan1~18_combout\);

-- Location: LCCOMB_X27_Y25_N22
\b1|x_direction~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_direction~6_combout\ = (\b1|x_ball\(9) & (!\b1|LessThan4~18_combout\)) # (!\b1|x_ball\(9) & (((\b1|x_ball\(5)) # (!\b1|LessThan1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|LessThan4~18_combout\,
	datab => \b1|x_ball\(9),
	datac => \b1|x_ball\(5),
	datad => \b1|LessThan1~18_combout\,
	combout => \b1|x_direction~6_combout\);

-- Location: LCCOMB_X26_Y23_N22
\b1|P2_y~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~0_combout\ = (!\b1|y_ball\(8) & ((\b1|y_ball\(6)) # ((\b1|y_ball\(7)) # (\b1|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(6),
	datab => \b1|y_ball\(7),
	datac => \b1|y_ball\(8),
	datad => \b1|LessThan6~0_combout\,
	combout => \b1|P2_y~0_combout\);

-- Location: LCCOMB_X26_Y24_N4
\b1|P2_y~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|P2_y~13_combout\ = (\b1|y_ball\(0) & (!\b1|y_ball\(9) & ((\b1|P2_y~1_combout\) # (\b1|P2_y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(0),
	datab => \b1|P2_y~1_combout\,
	datac => \b1|P2_y~0_combout\,
	datad => \b1|y_ball\(9),
	combout => \b1|P2_y~13_combout\);

-- Location: FF_X26_Y24_N5
\b1|P2_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|P2_y~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|P2_y\(0));

-- Location: LCCOMB_X26_Y23_N0
\b1|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan5~1_cout\ = CARRY((!\b1|y_ball\(0) & \b1|P2_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(0),
	datab => \b1|P2_y\(0),
	datad => VCC,
	cout => \b1|LessThan5~1_cout\);

-- Location: LCCOMB_X26_Y23_N2
\b1|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan5~3_cout\ = CARRY((\b1|P2_y\(1) & (\b1|y_ball\(1) & !\b1|LessThan5~1_cout\)) # (!\b1|P2_y\(1) & ((\b1|y_ball\(1)) # (!\b1|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(1),
	datab => \b1|y_ball\(1),
	datad => VCC,
	cin => \b1|LessThan5~1_cout\,
	cout => \b1|LessThan5~3_cout\);

-- Location: LCCOMB_X26_Y23_N4
\b1|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan5~5_cout\ = CARRY((\b1|P2_y\(2) & ((!\b1|LessThan5~3_cout\) # (!\b1|y_ball\(2)))) # (!\b1|P2_y\(2) & (!\b1|y_ball\(2) & !\b1|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(2),
	datab => \b1|y_ball\(2),
	datad => VCC,
	cin => \b1|LessThan5~3_cout\,
	cout => \b1|LessThan5~5_cout\);

-- Location: LCCOMB_X26_Y23_N6
\b1|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan5~7_cout\ = CARRY((\b1|P2_y\(3) & ((\b1|y_ball\(3)) # (!\b1|LessThan5~5_cout\))) # (!\b1|P2_y\(3) & (\b1|y_ball\(3) & !\b1|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|P2_y\(3),
	datab => \b1|y_ball\(3),
	datad => VCC,
	cin => \b1|LessThan5~5_cout\,
	cout => \b1|LessThan5~7_cout\);

-- Location: LCCOMB_X26_Y23_N8
\b1|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan5~9_cout\ = CARRY((\b1|y_ball\(4) & (\b1|Add5~2_combout\ & !\b1|LessThan5~7_cout\)) # (!\b1|y_ball\(4) & ((\b1|Add5~2_combout\) # (!\b1|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(4),
	datab => \b1|Add5~2_combout\,
	datad => VCC,
	cin => \b1|LessThan5~7_cout\,
	cout => \b1|LessThan5~9_cout\);

-- Location: LCCOMB_X26_Y23_N10
\b1|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan5~11_cout\ = CARRY((\b1|Add5~4_combout\ & (\b1|y_ball\(5) & !\b1|LessThan5~9_cout\)) # (!\b1|Add5~4_combout\ & ((\b1|y_ball\(5)) # (!\b1|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|Add5~4_combout\,
	datab => \b1|y_ball\(5),
	datad => VCC,
	cin => \b1|LessThan5~9_cout\,
	cout => \b1|LessThan5~11_cout\);

-- Location: LCCOMB_X26_Y23_N12
\b1|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan5~13_cout\ = CARRY((\b1|y_ball\(6) & (\b1|Add5~6_combout\ & !\b1|LessThan5~11_cout\)) # (!\b1|y_ball\(6) & ((\b1|Add5~6_combout\) # (!\b1|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(6),
	datab => \b1|Add5~6_combout\,
	datad => VCC,
	cin => \b1|LessThan5~11_cout\,
	cout => \b1|LessThan5~13_cout\);

-- Location: LCCOMB_X26_Y23_N14
\b1|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan5~15_cout\ = CARRY((\b1|Add5~8_combout\ & (\b1|y_ball\(7) & !\b1|LessThan5~13_cout\)) # (!\b1|Add5~8_combout\ & ((\b1|y_ball\(7)) # (!\b1|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|Add5~8_combout\,
	datab => \b1|y_ball\(7),
	datad => VCC,
	cin => \b1|LessThan5~13_cout\,
	cout => \b1|LessThan5~15_cout\);

-- Location: LCCOMB_X26_Y23_N16
\b1|LessThan5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan5~17_cout\ = CARRY((\b1|y_ball\(8) & (\b1|Add5~10_combout\ & !\b1|LessThan5~15_cout\)) # (!\b1|y_ball\(8) & ((\b1|Add5~10_combout\) # (!\b1|LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(8),
	datab => \b1|Add5~10_combout\,
	datad => VCC,
	cin => \b1|LessThan5~15_cout\,
	cout => \b1|LessThan5~17_cout\);

-- Location: LCCOMB_X26_Y23_N18
\b1|LessThan5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|LessThan5~18_combout\ = (\b1|y_ball\(9) & (\b1|LessThan5~17_cout\ & \b1|Add5~12_combout\)) # (!\b1|y_ball\(9) & ((\b1|LessThan5~17_cout\) # (\b1|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_ball\(9),
	datad => \b1|Add5~12_combout\,
	cin => \b1|LessThan5~17_cout\,
	combout => \b1|LessThan5~18_combout\);

-- Location: LCCOMB_X27_Y25_N20
\b1|x_direction~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_direction~7_combout\ = (\b1|x_direction~6_combout\) # ((\b1|x_ball\(9) & (!\b1|Add5~14_combout\ & !\b1|LessThan5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(9),
	datab => \b1|Add5~14_combout\,
	datac => \b1|x_direction~6_combout\,
	datad => \b1|LessThan5~18_combout\,
	combout => \b1|x_direction~7_combout\);

-- Location: LCCOMB_X27_Y25_N28
\b1|x_direction~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|x_direction~8_combout\ = \b1|x_direction\(1) $ (((\b1|x_direction~5_combout\) # ((\b1|x_direction~2_combout\) # (\b1|x_direction~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_direction\(1),
	datab => \b1|x_direction~5_combout\,
	datac => \b1|x_direction~2_combout\,
	datad => \b1|x_direction~7_combout\,
	combout => \b1|x_direction~8_combout\);

-- Location: FF_X28_Y25_N13
\b1|x_ball[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|x_ball[6]~22_combout\,
	asdata => \~GND~combout\,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|x_ball\(6));

-- Location: LCCOMB_X28_Y23_N4
\b1|y_ball[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[6]~11_combout\ = (!\b1|x_ball\(6) & (!\b1|x_ball\(5) & (\b1|x_ball\(9) $ (!\b1|x_ball\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(9),
	datab => \b1|x_ball\(6),
	datac => \b1|x_ball\(7),
	datad => \b1|x_ball\(5),
	combout => \b1|y_ball[6]~11_combout\);

-- Location: FF_X28_Y25_N7
\b1|x_ball[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|x_ball[3]~16_combout\,
	asdata => VCC,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|x_ball\(3));

-- Location: LCCOMB_X28_Y23_N24
\b1|y_ball[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[6]~10_combout\ = (!\b1|x_ball\(4) & (!\b1|x_ball\(2) & (!\b1|x_ball\(1) & !\b1|x_ball\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(4),
	datab => \b1|x_ball\(2),
	datac => \b1|x_ball\(1),
	datad => \b1|x_ball\(3),
	combout => \b1|y_ball[6]~10_combout\);

-- Location: LCCOMB_X28_Y23_N30
\b1|y_ball[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[6]~12_combout\ = (!\b1|x_ball\(8) & (!\b1|x_ball\(0) & (\b1|y_ball[6]~11_combout\ & \b1|y_ball[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(8),
	datab => \b1|x_ball\(0),
	datac => \b1|y_ball[6]~11_combout\,
	datad => \b1|y_ball[6]~10_combout\,
	combout => \b1|y_ball[6]~12_combout\);

-- Location: LCCOMB_X28_Y23_N0
\b1|y_ball[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[6]~13_combout\ = (\b1|y_ball[6]~12_combout\) # (!\ORG_BUTTON[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ORG_BUTTON[0]~input_o\,
	datac => \b1|y_ball[6]~12_combout\,
	combout => \b1|y_ball[6]~13_combout\);

-- Location: FF_X27_Y26_N19
\b1|y_ball[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|y_ball[4]~22_combout\,
	asdata => \~GND~combout\,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|y_ball\(4));

-- Location: LCCOMB_X27_Y26_N2
\b1|y_direction~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_direction~1_combout\ = (\b1|y_ball\(3) & (((!\b1|y_ball\(6)) # (!\b1|y_ball\(4))) # (!\b1|y_ball\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(7),
	datab => \b1|y_ball\(4),
	datac => \b1|y_ball\(6),
	datad => \b1|y_ball\(3),
	combout => \b1|y_direction~1_combout\);

-- Location: LCCOMB_X27_Y26_N8
\b1|y_direction~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_direction~2_combout\ = (\b1|y_ball\(9)) # ((\b1|y_ball\(0) & (!\b1|y_ball\(3))) # (!\b1|y_ball\(0) & ((\b1|y_ball\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(0),
	datab => \b1|y_ball\(3),
	datac => \b1|y_ball\(8),
	datad => \b1|y_ball\(9),
	combout => \b1|y_direction~2_combout\);

-- Location: LCCOMB_X27_Y26_N30
\b1|y_direction~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_direction~3_combout\ = ((\b1|y_ball\(2)) # ((\b1|y_direction~2_combout\) # (\b1|y_ball\(5)))) # (!\b1|y_ball\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(1),
	datab => \b1|y_ball\(2),
	datac => \b1|y_direction~2_combout\,
	datad => \b1|y_ball\(5),
	combout => \b1|y_direction~3_combout\);

-- Location: LCCOMB_X27_Y26_N0
\b1|y_direction~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_direction~0_combout\ = (!\b1|y_ball\(8) & ((\b1|y_ball\(6)) # ((\b1|y_ball\(4)) # (\b1|y_ball\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(6),
	datab => \b1|y_ball\(4),
	datac => \b1|y_ball\(8),
	datad => \b1|y_ball\(7),
	combout => \b1|y_direction~0_combout\);

-- Location: LCCOMB_X27_Y26_N4
\b1|y_direction~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_direction~4_combout\ = \b1|y_direction\(1) $ (((\b1|y_direction~1_combout\) # ((\b1|y_direction~3_combout\) # (\b1|y_direction~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_direction\(1),
	datab => \b1|y_direction~1_combout\,
	datac => \b1|y_direction~3_combout\,
	datad => \b1|y_direction~0_combout\,
	combout => \b1|y_direction~4_combout\);

-- Location: LCCOMB_X27_Y26_N28
\b1|y_ball[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|y_ball[9]~32_combout\ = \b1|y_direction~4_combout\ $ (\b1|y_ball[8]~31\ $ (\b1|y_ball\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_direction~4_combout\,
	datad => \b1|y_ball\(9),
	cin => \b1|y_ball[8]~31\,
	combout => \b1|y_ball[9]~32_combout\);

-- Location: FF_X27_Y26_N29
\b1|y_ball[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \b1|y_ball[9]~32_combout\,
	asdata => \~GND~combout\,
	sload => \b1|y_ball[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|y_ball\(9));

-- Location: LCCOMB_X27_Y27_N4
\draw_ball|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~0_combout\ = (\b1|y_ball\(1) & (\b1|y_ball\(0) $ (VCC))) # (!\b1|y_ball\(1) & (\b1|y_ball\(0) & VCC))
-- \draw_ball|Add1~1\ = CARRY((\b1|y_ball\(1) & \b1|y_ball\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(1),
	datab => \b1|y_ball\(0),
	datad => VCC,
	combout => \draw_ball|Add1~0_combout\,
	cout => \draw_ball|Add1~1\);

-- Location: LCCOMB_X27_Y27_N6
\draw_ball|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~2_combout\ = (\b1|y_ball\(2) & (\draw_ball|Add1~1\ & VCC)) # (!\b1|y_ball\(2) & (!\draw_ball|Add1~1\))
-- \draw_ball|Add1~3\ = CARRY((!\b1|y_ball\(2) & !\draw_ball|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_ball\(2),
	datad => VCC,
	cin => \draw_ball|Add1~1\,
	combout => \draw_ball|Add1~2_combout\,
	cout => \draw_ball|Add1~3\);

-- Location: LCCOMB_X27_Y27_N18
\draw_ball|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~14_combout\ = (\b1|y_ball\(8) & (!\draw_ball|Add1~13\)) # (!\b1|y_ball\(8) & ((\draw_ball|Add1~13\) # (GND)))
-- \draw_ball|Add1~15\ = CARRY((!\draw_ball|Add1~13\) # (!\b1|y_ball\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|y_ball\(8),
	datad => VCC,
	cin => \draw_ball|Add1~13\,
	combout => \draw_ball|Add1~14_combout\,
	cout => \draw_ball|Add1~15\);

-- Location: LCCOMB_X27_Y27_N20
\draw_ball|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add1~16_combout\ = \draw_ball|Add1~15\ $ (!\b1|y_ball\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b1|y_ball\(9),
	cin => \draw_ball|Add1~15\,
	combout => \draw_ball|Add1~16_combout\);

-- Location: LCCOMB_X28_Y24_N0
\VGA_Driver|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~0_combout\ = \VGA_Driver|VS_counter\(0) $ (VCC)
-- \VGA_Driver|Add1~1\ = CARRY(\VGA_Driver|VS_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(0),
	datad => VCC,
	combout => \VGA_Driver|Add1~0_combout\,
	cout => \VGA_Driver|Add1~1\);

-- Location: LCCOMB_X28_Y24_N2
\VGA_Driver|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~2_combout\ = (\VGA_Driver|VS_counter\(1) & (\VGA_Driver|Add1~1\ & VCC)) # (!\VGA_Driver|VS_counter\(1) & (!\VGA_Driver|Add1~1\))
-- \VGA_Driver|Add1~3\ = CARRY((!\VGA_Driver|VS_counter\(1) & !\VGA_Driver|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(1),
	datad => VCC,
	cin => \VGA_Driver|Add1~1\,
	combout => \VGA_Driver|Add1~2_combout\,
	cout => \VGA_Driver|Add1~3\);

-- Location: LCCOMB_X28_Y24_N4
\VGA_Driver|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~4_combout\ = (\VGA_Driver|VS_counter\(2) & (\VGA_Driver|Add1~3\ $ (GND))) # (!\VGA_Driver|VS_counter\(2) & (!\VGA_Driver|Add1~3\ & VCC))
-- \VGA_Driver|Add1~5\ = CARRY((\VGA_Driver|VS_counter\(2) & !\VGA_Driver|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(2),
	datad => VCC,
	cin => \VGA_Driver|Add1~3\,
	combout => \VGA_Driver|Add1~4_combout\,
	cout => \VGA_Driver|Add1~5\);

-- Location: LCCOMB_X28_Y24_N6
\VGA_Driver|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~6_combout\ = (\VGA_Driver|VS_counter\(3) & (!\VGA_Driver|Add1~5\)) # (!\VGA_Driver|VS_counter\(3) & ((\VGA_Driver|Add1~5\) # (GND)))
-- \VGA_Driver|Add1~7\ = CARRY((!\VGA_Driver|Add1~5\) # (!\VGA_Driver|VS_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(3),
	datad => VCC,
	cin => \VGA_Driver|Add1~5\,
	combout => \VGA_Driver|Add1~6_combout\,
	cout => \VGA_Driver|Add1~7\);

-- Location: LCCOMB_X28_Y24_N8
\VGA_Driver|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~8_combout\ = (\VGA_Driver|VS_counter\(4) & ((GND) # (!\VGA_Driver|Add1~7\))) # (!\VGA_Driver|VS_counter\(4) & (\VGA_Driver|Add1~7\ $ (GND)))
-- \VGA_Driver|Add1~9\ = CARRY((\VGA_Driver|VS_counter\(4)) # (!\VGA_Driver|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(4),
	datad => VCC,
	cin => \VGA_Driver|Add1~7\,
	combout => \VGA_Driver|Add1~8_combout\,
	cout => \VGA_Driver|Add1~9\);

-- Location: LCCOMB_X28_Y24_N10
\VGA_Driver|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~10_combout\ = (\VGA_Driver|VS_counter\(5) & (!\VGA_Driver|Add1~9\)) # (!\VGA_Driver|VS_counter\(5) & ((\VGA_Driver|Add1~9\) # (GND)))
-- \VGA_Driver|Add1~11\ = CARRY((!\VGA_Driver|Add1~9\) # (!\VGA_Driver|VS_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(5),
	datad => VCC,
	cin => \VGA_Driver|Add1~9\,
	combout => \VGA_Driver|Add1~10_combout\,
	cout => \VGA_Driver|Add1~11\);

-- Location: LCCOMB_X28_Y24_N12
\VGA_Driver|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~12_combout\ = (\VGA_Driver|VS_counter\(6) & ((GND) # (!\VGA_Driver|Add1~11\))) # (!\VGA_Driver|VS_counter\(6) & (\VGA_Driver|Add1~11\ $ (GND)))
-- \VGA_Driver|Add1~13\ = CARRY((\VGA_Driver|VS_counter\(6)) # (!\VGA_Driver|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(6),
	datad => VCC,
	cin => \VGA_Driver|Add1~11\,
	combout => \VGA_Driver|Add1~12_combout\,
	cout => \VGA_Driver|Add1~13\);

-- Location: LCCOMB_X28_Y24_N14
\VGA_Driver|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~14_combout\ = (\VGA_Driver|VS_counter\(7) & (\VGA_Driver|Add1~13\ & VCC)) # (!\VGA_Driver|VS_counter\(7) & (!\VGA_Driver|Add1~13\))
-- \VGA_Driver|Add1~15\ = CARRY((!\VGA_Driver|VS_counter\(7) & !\VGA_Driver|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(7),
	datad => VCC,
	cin => \VGA_Driver|Add1~13\,
	combout => \VGA_Driver|Add1~14_combout\,
	cout => \VGA_Driver|Add1~15\);

-- Location: LCCOMB_X28_Y27_N0
\draw_ball|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~1_cout\ = CARRY((!\b1|y_ball\(0) & !\VGA_Driver|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|y_ball\(0),
	datab => \VGA_Driver|Add1~0_combout\,
	datad => VCC,
	cout => \draw_ball|LessThan3~1_cout\);

-- Location: LCCOMB_X28_Y27_N2
\draw_ball|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~3_cout\ = CARRY((\VGA_Driver|Add1~2_combout\ & ((!\draw_ball|LessThan3~1_cout\) # (!\draw_ball|Add1~0_combout\))) # (!\VGA_Driver|Add1~2_combout\ & (!\draw_ball|Add1~0_combout\ & !\draw_ball|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~2_combout\,
	datab => \draw_ball|Add1~0_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~1_cout\,
	cout => \draw_ball|LessThan3~3_cout\);

-- Location: LCCOMB_X28_Y27_N4
\draw_ball|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~5_cout\ = CARRY((\VGA_Driver|Add1~4_combout\ & (\draw_ball|Add1~2_combout\ & !\draw_ball|LessThan3~3_cout\)) # (!\VGA_Driver|Add1~4_combout\ & ((\draw_ball|Add1~2_combout\) # (!\draw_ball|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~4_combout\,
	datab => \draw_ball|Add1~2_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~3_cout\,
	cout => \draw_ball|LessThan3~5_cout\);

-- Location: LCCOMB_X28_Y27_N6
\draw_ball|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~7_cout\ = CARRY((\draw_ball|Add1~4_combout\ & (\VGA_Driver|Add1~6_combout\ & !\draw_ball|LessThan3~5_cout\)) # (!\draw_ball|Add1~4_combout\ & ((\VGA_Driver|Add1~6_combout\) # (!\draw_ball|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add1~4_combout\,
	datab => \VGA_Driver|Add1~6_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~5_cout\,
	cout => \draw_ball|LessThan3~7_cout\);

-- Location: LCCOMB_X28_Y27_N8
\draw_ball|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~9_cout\ = CARRY((\draw_ball|Add1~6_combout\ & ((!\draw_ball|LessThan3~7_cout\) # (!\VGA_Driver|Add1~8_combout\))) # (!\draw_ball|Add1~6_combout\ & (!\VGA_Driver|Add1~8_combout\ & !\draw_ball|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add1~6_combout\,
	datab => \VGA_Driver|Add1~8_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~7_cout\,
	cout => \draw_ball|LessThan3~9_cout\);

-- Location: LCCOMB_X28_Y27_N10
\draw_ball|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~11_cout\ = CARRY((\draw_ball|Add1~8_combout\ & (\VGA_Driver|Add1~10_combout\ & !\draw_ball|LessThan3~9_cout\)) # (!\draw_ball|Add1~8_combout\ & ((\VGA_Driver|Add1~10_combout\) # (!\draw_ball|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add1~8_combout\,
	datab => \VGA_Driver|Add1~10_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~9_cout\,
	cout => \draw_ball|LessThan3~11_cout\);

-- Location: LCCOMB_X28_Y27_N12
\draw_ball|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~13_cout\ = CARRY((\draw_ball|Add1~10_combout\ & ((!\draw_ball|LessThan3~11_cout\) # (!\VGA_Driver|Add1~12_combout\))) # (!\draw_ball|Add1~10_combout\ & (!\VGA_Driver|Add1~12_combout\ & !\draw_ball|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add1~10_combout\,
	datab => \VGA_Driver|Add1~12_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~11_cout\,
	cout => \draw_ball|LessThan3~13_cout\);

-- Location: LCCOMB_X28_Y27_N14
\draw_ball|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~15_cout\ = CARRY((\draw_ball|Add1~12_combout\ & (\VGA_Driver|Add1~14_combout\ & !\draw_ball|LessThan3~13_cout\)) # (!\draw_ball|Add1~12_combout\ & ((\VGA_Driver|Add1~14_combout\) # (!\draw_ball|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add1~12_combout\,
	datab => \VGA_Driver|Add1~14_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~13_cout\,
	cout => \draw_ball|LessThan3~15_cout\);

-- Location: LCCOMB_X28_Y27_N16
\draw_ball|LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~17_cout\ = CARRY((\VGA_Driver|Add1~16_combout\ & (\draw_ball|Add1~14_combout\ & !\draw_ball|LessThan3~15_cout\)) # (!\VGA_Driver|Add1~16_combout\ & ((\draw_ball|Add1~14_combout\) # (!\draw_ball|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datab => \draw_ball|Add1~14_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan3~15_cout\,
	cout => \draw_ball|LessThan3~17_cout\);

-- Location: LCCOMB_X28_Y27_N18
\draw_ball|LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan3~18_combout\ = (\VGA_Driver|Add1~18_combout\ & (\draw_ball|LessThan3~17_cout\ & \draw_ball|Add1~16_combout\)) # (!\VGA_Driver|Add1~18_combout\ & ((\draw_ball|LessThan3~17_cout\) # (\draw_ball|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~18_combout\,
	datad => \draw_ball|Add1~16_combout\,
	cin => \draw_ball|LessThan3~17_cout\,
	combout => \draw_ball|LessThan3~18_combout\);

-- Location: LCCOMB_X29_Y25_N30
\VGA_Driver|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~3_combout\ = \VGA_Driver|HS_counter\(7) $ (((\VGA_Driver|HS_counter\(5)) # (\VGA_Driver|HS_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datac => \VGA_Driver|HS_counter\(7),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Add0~3_combout\);

-- Location: LCCOMB_X29_Y23_N4
\draw_ball|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~1_cout\ = CARRY((\VGA_Driver|HS_counter\(0) & !\b1|x_ball\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(0),
	datab => \b1|x_ball\(0),
	datad => VCC,
	cout => \draw_ball|LessThan0~1_cout\);

-- Location: LCCOMB_X29_Y23_N6
\draw_ball|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~3_cout\ = CARRY((\b1|x_ball\(1) & ((!\draw_ball|LessThan0~1_cout\) # (!\VGA_Driver|HS_counter\(1)))) # (!\b1|x_ball\(1) & (!\VGA_Driver|HS_counter\(1) & !\draw_ball|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(1),
	datab => \VGA_Driver|HS_counter\(1),
	datad => VCC,
	cin => \draw_ball|LessThan0~1_cout\,
	cout => \draw_ball|LessThan0~3_cout\);

-- Location: LCCOMB_X29_Y23_N8
\draw_ball|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~5_cout\ = CARRY((\VGA_Driver|HS_counter\(2) & ((!\draw_ball|LessThan0~3_cout\) # (!\b1|x_ball\(2)))) # (!\VGA_Driver|HS_counter\(2) & (!\b1|x_ball\(2) & !\draw_ball|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(2),
	datab => \b1|x_ball\(2),
	datad => VCC,
	cin => \draw_ball|LessThan0~3_cout\,
	cout => \draw_ball|LessThan0~5_cout\);

-- Location: LCCOMB_X29_Y23_N10
\draw_ball|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~7_cout\ = CARRY((\b1|x_ball\(3) & ((!\draw_ball|LessThan0~5_cout\) # (!\VGA_Driver|HS_counter\(3)))) # (!\b1|x_ball\(3) & (!\VGA_Driver|HS_counter\(3) & !\draw_ball|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(3),
	datab => \VGA_Driver|HS_counter\(3),
	datad => VCC,
	cin => \draw_ball|LessThan0~5_cout\,
	cout => \draw_ball|LessThan0~7_cout\);

-- Location: LCCOMB_X29_Y23_N12
\draw_ball|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~9_cout\ = CARRY((\VGA_Driver|HS_counter\(4) & ((!\draw_ball|LessThan0~7_cout\) # (!\b1|x_ball\(4)))) # (!\VGA_Driver|HS_counter\(4) & (!\b1|x_ball\(4) & !\draw_ball|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(4),
	datab => \b1|x_ball\(4),
	datad => VCC,
	cin => \draw_ball|LessThan0~7_cout\,
	cout => \draw_ball|LessThan0~9_cout\);

-- Location: LCCOMB_X29_Y23_N14
\draw_ball|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~11_cout\ = CARRY((\VGA_Driver|HS_counter\(5) & ((\b1|x_ball\(5)) # (!\draw_ball|LessThan0~9_cout\))) # (!\VGA_Driver|HS_counter\(5) & (\b1|x_ball\(5) & !\draw_ball|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datab => \b1|x_ball\(5),
	datad => VCC,
	cin => \draw_ball|LessThan0~9_cout\,
	cout => \draw_ball|LessThan0~11_cout\);

-- Location: LCCOMB_X29_Y23_N16
\draw_ball|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~13_cout\ = CARRY((\VGA_Driver|Add0~4_combout\ & (!\b1|x_ball\(6) & !\draw_ball|LessThan0~11_cout\)) # (!\VGA_Driver|Add0~4_combout\ & ((!\draw_ball|LessThan0~11_cout\) # (!\b1|x_ball\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~4_combout\,
	datab => \b1|x_ball\(6),
	datad => VCC,
	cin => \draw_ball|LessThan0~11_cout\,
	cout => \draw_ball|LessThan0~13_cout\);

-- Location: LCCOMB_X29_Y23_N18
\draw_ball|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~15_cout\ = CARRY((\b1|x_ball\(7) & ((!\draw_ball|LessThan0~13_cout\) # (!\VGA_Driver|Add0~3_combout\))) # (!\b1|x_ball\(7) & (!\VGA_Driver|Add0~3_combout\ & !\draw_ball|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(7),
	datab => \VGA_Driver|Add0~3_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan0~13_cout\,
	cout => \draw_ball|LessThan0~15_cout\);

-- Location: LCCOMB_X29_Y23_N20
\draw_ball|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~17_cout\ = CARRY((\VGA_Driver|Add0~2_combout\ & (!\b1|x_ball\(8) & !\draw_ball|LessThan0~15_cout\)) # (!\VGA_Driver|Add0~2_combout\ & ((!\draw_ball|LessThan0~15_cout\) # (!\b1|x_ball\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~2_combout\,
	datab => \b1|x_ball\(8),
	datad => VCC,
	cin => \draw_ball|LessThan0~15_cout\,
	cout => \draw_ball|LessThan0~17_cout\);

-- Location: LCCOMB_X29_Y23_N22
\draw_ball|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan0~18_combout\ = (\VGA_Driver|Add0~1_combout\ & (\draw_ball|LessThan0~17_cout\ & !\b1|x_ball\(9))) # (!\VGA_Driver|Add0~1_combout\ & ((\draw_ball|LessThan0~17_cout\) # (!\b1|x_ball\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~1_combout\,
	datad => \b1|x_ball\(9),
	cin => \draw_ball|LessThan0~17_cout\,
	combout => \draw_ball|LessThan0~18_combout\);

-- Location: LCCOMB_X29_Y25_N6
\VGA_Driver|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~0_combout\ = (\VGA_Driver|HS_counter\(8)) # ((\VGA_Driver|HS_counter\(7) & ((\VGA_Driver|HS_counter\(5)) # (\VGA_Driver|HS_counter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(8),
	datab => \VGA_Driver|HS_counter\(7),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Add0~0_combout\);

-- Location: LCCOMB_X30_Y26_N16
\VGA_Driver|Add4~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add4~23_combout\ = (\VGA_Driver|WideNor0~0_combout\ & (\VGA_Driver|WideNor0~1_combout\ & \VGA_Driver|Add4~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|WideNor0~0_combout\,
	datac => \VGA_Driver|WideNor0~1_combout\,
	datad => \VGA_Driver|Add4~21_combout\,
	combout => \VGA_Driver|Add4~23_combout\);

-- Location: FF_X30_Y26_N17
\VGA_Driver|HS_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Add4~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|HS_counter\(9));

-- Location: LCCOMB_X26_Y25_N6
\VGA_Driver|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~1_combout\ = \VGA_Driver|Add0~0_combout\ $ (\VGA_Driver|HS_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Driver|Add0~0_combout\,
	datad => \VGA_Driver|HS_counter\(9),
	combout => \VGA_Driver|Add0~1_combout\);

-- Location: LCCOMB_X28_Y23_N8
\draw_ball|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~2_combout\ = (\b1|x_ball\(2) & (\draw_ball|Add0~1\ & VCC)) # (!\b1|x_ball\(2) & (!\draw_ball|Add0~1\))
-- \draw_ball|Add0~3\ = CARRY((!\b1|x_ball\(2) & !\draw_ball|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|x_ball\(2),
	datad => VCC,
	cin => \draw_ball|Add0~1\,
	combout => \draw_ball|Add0~2_combout\,
	cout => \draw_ball|Add0~3\);

-- Location: LCCOMB_X28_Y23_N10
\draw_ball|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~4_combout\ = (\b1|x_ball\(3) & (\draw_ball|Add0~3\ $ (GND))) # (!\b1|x_ball\(3) & (!\draw_ball|Add0~3\ & VCC))
-- \draw_ball|Add0~5\ = CARRY((\b1|x_ball\(3) & !\draw_ball|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|x_ball\(3),
	datad => VCC,
	cin => \draw_ball|Add0~3\,
	combout => \draw_ball|Add0~4_combout\,
	cout => \draw_ball|Add0~5\);

-- Location: LCCOMB_X28_Y23_N12
\draw_ball|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~6_combout\ = (\b1|x_ball\(4) & (!\draw_ball|Add0~5\)) # (!\b1|x_ball\(4) & ((\draw_ball|Add0~5\) # (GND)))
-- \draw_ball|Add0~7\ = CARRY((!\draw_ball|Add0~5\) # (!\b1|x_ball\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(4),
	datad => VCC,
	cin => \draw_ball|Add0~5\,
	combout => \draw_ball|Add0~6_combout\,
	cout => \draw_ball|Add0~7\);

-- Location: LCCOMB_X28_Y23_N14
\draw_ball|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~8_combout\ = (\b1|x_ball\(5) & (\draw_ball|Add0~7\ $ (GND))) # (!\b1|x_ball\(5) & (!\draw_ball|Add0~7\ & VCC))
-- \draw_ball|Add0~9\ = CARRY((\b1|x_ball\(5) & !\draw_ball|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|x_ball\(5),
	datad => VCC,
	cin => \draw_ball|Add0~7\,
	combout => \draw_ball|Add0~8_combout\,
	cout => \draw_ball|Add0~9\);

-- Location: LCCOMB_X28_Y23_N16
\draw_ball|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~10_combout\ = (\b1|x_ball\(6) & (!\draw_ball|Add0~9\)) # (!\b1|x_ball\(6) & ((\draw_ball|Add0~9\) # (GND)))
-- \draw_ball|Add0~11\ = CARRY((!\draw_ball|Add0~9\) # (!\b1|x_ball\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1|x_ball\(6),
	datad => VCC,
	cin => \draw_ball|Add0~9\,
	combout => \draw_ball|Add0~10_combout\,
	cout => \draw_ball|Add0~11\);

-- Location: LCCOMB_X28_Y23_N18
\draw_ball|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~12_combout\ = (\b1|x_ball\(7) & (\draw_ball|Add0~11\ $ (GND))) # (!\b1|x_ball\(7) & (!\draw_ball|Add0~11\ & VCC))
-- \draw_ball|Add0~13\ = CARRY((\b1|x_ball\(7) & !\draw_ball|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1|x_ball\(7),
	datad => VCC,
	cin => \draw_ball|Add0~11\,
	combout => \draw_ball|Add0~12_combout\,
	cout => \draw_ball|Add0~13\);

-- Location: LCCOMB_X28_Y23_N22
\draw_ball|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|Add0~16_combout\ = \draw_ball|Add0~15\ $ (!\b1|x_ball\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b1|x_ball\(9),
	cin => \draw_ball|Add0~15\,
	combout => \draw_ball|Add0~16_combout\);

-- Location: LCCOMB_X29_Y25_N28
\VGA_Driver|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add0~2_combout\ = \VGA_Driver|HS_counter\(8) $ (((\VGA_Driver|HS_counter\(7) & ((\VGA_Driver|HS_counter\(5)) # (\VGA_Driver|HS_counter\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(8),
	datab => \VGA_Driver|HS_counter\(7),
	datac => \VGA_Driver|HS_counter\(5),
	datad => \VGA_Driver|HS_counter\(6),
	combout => \VGA_Driver|Add0~2_combout\);

-- Location: LCCOMB_X27_Y23_N8
\draw_ball|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~1_cout\ = CARRY((!\VGA_Driver|HS_counter\(0) & !\b1|x_ball\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(0),
	datab => \b1|x_ball\(0),
	datad => VCC,
	cout => \draw_ball|LessThan1~1_cout\);

-- Location: LCCOMB_X27_Y23_N10
\draw_ball|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~3_cout\ = CARRY((\draw_ball|Add0~0_combout\ & (\VGA_Driver|HS_counter\(1) & !\draw_ball|LessThan1~1_cout\)) # (!\draw_ball|Add0~0_combout\ & ((\VGA_Driver|HS_counter\(1)) # (!\draw_ball|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add0~0_combout\,
	datab => \VGA_Driver|HS_counter\(1),
	datad => VCC,
	cin => \draw_ball|LessThan1~1_cout\,
	cout => \draw_ball|LessThan1~3_cout\);

-- Location: LCCOMB_X27_Y23_N12
\draw_ball|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~5_cout\ = CARRY((\VGA_Driver|HS_counter\(2) & (\draw_ball|Add0~2_combout\ & !\draw_ball|LessThan1~3_cout\)) # (!\VGA_Driver|HS_counter\(2) & ((\draw_ball|Add0~2_combout\) # (!\draw_ball|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(2),
	datab => \draw_ball|Add0~2_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~3_cout\,
	cout => \draw_ball|LessThan1~5_cout\);

-- Location: LCCOMB_X27_Y23_N14
\draw_ball|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~7_cout\ = CARRY((\VGA_Driver|HS_counter\(3) & ((!\draw_ball|LessThan1~5_cout\) # (!\draw_ball|Add0~4_combout\))) # (!\VGA_Driver|HS_counter\(3) & (!\draw_ball|Add0~4_combout\ & !\draw_ball|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(3),
	datab => \draw_ball|Add0~4_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~5_cout\,
	cout => \draw_ball|LessThan1~7_cout\);

-- Location: LCCOMB_X27_Y23_N16
\draw_ball|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~9_cout\ = CARRY((\VGA_Driver|HS_counter\(4) & (\draw_ball|Add0~6_combout\ & !\draw_ball|LessThan1~7_cout\)) # (!\VGA_Driver|HS_counter\(4) & ((\draw_ball|Add0~6_combout\) # (!\draw_ball|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(4),
	datab => \draw_ball|Add0~6_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~7_cout\,
	cout => \draw_ball|LessThan1~9_cout\);

-- Location: LCCOMB_X27_Y23_N18
\draw_ball|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~11_cout\ = CARRY((\VGA_Driver|HS_counter\(5) & (!\draw_ball|Add0~8_combout\ & !\draw_ball|LessThan1~9_cout\)) # (!\VGA_Driver|HS_counter\(5) & ((!\draw_ball|LessThan1~9_cout\) # (!\draw_ball|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(5),
	datab => \draw_ball|Add0~8_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~9_cout\,
	cout => \draw_ball|LessThan1~11_cout\);

-- Location: LCCOMB_X27_Y23_N20
\draw_ball|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~13_cout\ = CARRY((\VGA_Driver|Add0~4_combout\ & ((\draw_ball|Add0~10_combout\) # (!\draw_ball|LessThan1~11_cout\))) # (!\VGA_Driver|Add0~4_combout\ & (\draw_ball|Add0~10_combout\ & !\draw_ball|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~4_combout\,
	datab => \draw_ball|Add0~10_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~11_cout\,
	cout => \draw_ball|LessThan1~13_cout\);

-- Location: LCCOMB_X27_Y23_N22
\draw_ball|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~15_cout\ = CARRY((\VGA_Driver|Add0~3_combout\ & ((!\draw_ball|LessThan1~13_cout\) # (!\draw_ball|Add0~12_combout\))) # (!\VGA_Driver|Add0~3_combout\ & (!\draw_ball|Add0~12_combout\ & !\draw_ball|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~3_combout\,
	datab => \draw_ball|Add0~12_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~13_cout\,
	cout => \draw_ball|LessThan1~15_cout\);

-- Location: LCCOMB_X27_Y23_N24
\draw_ball|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~17_cout\ = CARRY((\draw_ball|Add0~14_combout\ & ((\VGA_Driver|Add0~2_combout\) # (!\draw_ball|LessThan1~15_cout\))) # (!\draw_ball|Add0~14_combout\ & (\VGA_Driver|Add0~2_combout\ & !\draw_ball|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|Add0~14_combout\,
	datab => \VGA_Driver|Add0~2_combout\,
	datad => VCC,
	cin => \draw_ball|LessThan1~15_cout\,
	cout => \draw_ball|LessThan1~17_cout\);

-- Location: LCCOMB_X27_Y23_N26
\draw_ball|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|LessThan1~18_combout\ = (\VGA_Driver|Add0~1_combout\ & ((\draw_ball|LessThan1~17_cout\) # (\draw_ball|Add0~16_combout\))) # (!\VGA_Driver|Add0~1_combout\ & (\draw_ball|LessThan1~17_cout\ & \draw_ball|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Add0~1_combout\,
	datad => \draw_ball|Add0~16_combout\,
	cin => \draw_ball|LessThan1~17_cout\,
	combout => \draw_ball|LessThan1~18_combout\);

-- Location: LCCOMB_X28_Y27_N26
\draw_ball|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_ball|always0~0_combout\ = (\draw_ball|LessThan2~18_combout\ & (\draw_ball|LessThan3~18_combout\ & (\draw_ball|LessThan0~18_combout\ & \draw_ball|LessThan1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_ball|LessThan2~18_combout\,
	datab => \draw_ball|LessThan3~18_combout\,
	datac => \draw_ball|LessThan0~18_combout\,
	datad => \draw_ball|LessThan1~18_combout\,
	combout => \draw_ball|always0~0_combout\);

-- Location: FF_X28_Y27_N27
\draw_ball|box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \draw_ball|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_ball|box~q\);

-- Location: LCCOMB_X31_Y25_N24
\draw_P1_paddle|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|always0~2_combout\ = (\VGA_Driver|HS_counter\(4) & (((!\VGA_Driver|HS_counter\(2)) # (!\VGA_Driver|HS_counter\(3))) # (!\VGA_Driver|HS_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|HS_counter\(1),
	datab => \VGA_Driver|HS_counter\(3),
	datac => \VGA_Driver|HS_counter\(2),
	datad => \VGA_Driver|HS_counter\(4),
	combout => \draw_P1_paddle|always0~2_combout\);

-- Location: LCCOMB_X29_Y24_N2
\draw_P1_paddle|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan0~0_combout\ = ((!\VGA_Driver|HS_counter\(1) & !\VGA_Driver|HS_counter\(0))) # (!\VGA_Driver|HS_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|HS_counter\(2),
	datac => \VGA_Driver|HS_counter\(1),
	datad => \VGA_Driver|HS_counter\(0),
	combout => \draw_P1_paddle|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y25_N30
\draw_right_border|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_right_border|always0~2_combout\ = (\draw_right_border|always0~1_combout\ & (\draw_P1_paddle|always0~2_combout\ & (!\draw_P1_paddle|LessThan0~0_combout\ & \VGA_Driver|HS_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_right_border|always0~1_combout\,
	datab => \draw_P1_paddle|always0~2_combout\,
	datac => \draw_P1_paddle|LessThan0~0_combout\,
	datad => \VGA_Driver|HS_counter\(3),
	combout => \draw_right_border|always0~2_combout\);

-- Location: FF_X31_Y25_N31
\draw_right_border|box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \draw_right_border|always0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_right_border|box~q\);

-- Location: LCCOMB_X29_Y25_N10
\draw_P1_paddle|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|always0~1_combout\ = (\draw_P1_paddle|always0~0_combout\ & (\VGA_Driver|HS_counter\(9) $ (\VGA_Driver|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_P1_paddle|always0~0_combout\,
	datac => \VGA_Driver|HS_counter\(9),
	datad => \VGA_Driver|Add0~0_combout\,
	combout => \draw_P1_paddle|always0~1_combout\);

-- Location: LCCOMB_X23_Y26_N28
\v1|P1_paddle_y[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v1|P1_paddle_y[0]~feeder_combout\ = \v1|P1_paddle_y[0]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \v1|P1_paddle_y[0]~10_combout\,
	combout => \v1|P1_paddle_y[0]~feeder_combout\);

-- Location: FF_X23_Y26_N29
\v1|P1_paddle_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|slow_clock~clkctrl_outclk\,
	d => \v1|P1_paddle_y[0]~feeder_combout\,
	clrn => \ORG_BUTTON[0]~input_o\,
	ena => \v1|P1_paddle_y[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v1|P1_paddle_y\(0));

-- Location: LCCOMB_X23_Y26_N6
\draw_P1_paddle|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan2~1_cout\ = CARRY((\VGA_Driver|Add1~0_combout\ & !\v1|P1_paddle_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~0_combout\,
	datab => \v1|P1_paddle_y\(0),
	datad => VCC,
	cout => \draw_P1_paddle|LessThan2~1_cout\);

-- Location: LCCOMB_X23_Y26_N8
\draw_P1_paddle|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan2~3_cout\ = CARRY((\VGA_Driver|Add1~2_combout\ & (\v1|P1_paddle_y\(1) & !\draw_P1_paddle|LessThan2~1_cout\)) # (!\VGA_Driver|Add1~2_combout\ & ((\v1|P1_paddle_y\(1)) # (!\draw_P1_paddle|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~2_combout\,
	datab => \v1|P1_paddle_y\(1),
	datad => VCC,
	cin => \draw_P1_paddle|LessThan2~1_cout\,
	cout => \draw_P1_paddle|LessThan2~3_cout\);

-- Location: LCCOMB_X23_Y26_N10
\draw_P1_paddle|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan2~5_cout\ = CARRY((\v1|P1_paddle_y\(2) & ((\VGA_Driver|Add1~4_combout\) # (!\draw_P1_paddle|LessThan2~3_cout\))) # (!\v1|P1_paddle_y\(2) & (\VGA_Driver|Add1~4_combout\ & !\draw_P1_paddle|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(2),
	datab => \VGA_Driver|Add1~4_combout\,
	datad => VCC,
	cin => \draw_P1_paddle|LessThan2~3_cout\,
	cout => \draw_P1_paddle|LessThan2~5_cout\);

-- Location: LCCOMB_X23_Y26_N12
\draw_P1_paddle|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan2~7_cout\ = CARRY((\VGA_Driver|Add1~6_combout\ & (\v1|P1_paddle_y\(3) & !\draw_P1_paddle|LessThan2~5_cout\)) # (!\VGA_Driver|Add1~6_combout\ & ((\v1|P1_paddle_y\(3)) # (!\draw_P1_paddle|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~6_combout\,
	datab => \v1|P1_paddle_y\(3),
	datad => VCC,
	cin => \draw_P1_paddle|LessThan2~5_cout\,
	cout => \draw_P1_paddle|LessThan2~7_cout\);

-- Location: LCCOMB_X23_Y26_N14
\draw_P1_paddle|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan2~9_cout\ = CARRY((\VGA_Driver|Add1~8_combout\ & ((\v1|P1_paddle_y\(4)) # (!\draw_P1_paddle|LessThan2~7_cout\))) # (!\VGA_Driver|Add1~8_combout\ & (\v1|P1_paddle_y\(4) & !\draw_P1_paddle|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~8_combout\,
	datab => \v1|P1_paddle_y\(4),
	datad => VCC,
	cin => \draw_P1_paddle|LessThan2~7_cout\,
	cout => \draw_P1_paddle|LessThan2~9_cout\);

-- Location: LCCOMB_X23_Y26_N16
\draw_P1_paddle|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan2~11_cout\ = CARRY((\VGA_Driver|Add1~10_combout\ & (!\v1|P1_paddle_y\(5) & !\draw_P1_paddle|LessThan2~9_cout\)) # (!\VGA_Driver|Add1~10_combout\ & ((!\draw_P1_paddle|LessThan2~9_cout\) # (!\v1|P1_paddle_y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~10_combout\,
	datab => \v1|P1_paddle_y\(5),
	datad => VCC,
	cin => \draw_P1_paddle|LessThan2~9_cout\,
	cout => \draw_P1_paddle|LessThan2~11_cout\);

-- Location: LCCOMB_X23_Y26_N18
\draw_P1_paddle|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan2~13_cout\ = CARRY((\v1|P1_paddle_y\(6) & (\VGA_Driver|Add1~12_combout\ & !\draw_P1_paddle|LessThan2~11_cout\)) # (!\v1|P1_paddle_y\(6) & ((\VGA_Driver|Add1~12_combout\) # (!\draw_P1_paddle|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(6),
	datab => \VGA_Driver|Add1~12_combout\,
	datad => VCC,
	cin => \draw_P1_paddle|LessThan2~11_cout\,
	cout => \draw_P1_paddle|LessThan2~13_cout\);

-- Location: LCCOMB_X23_Y26_N20
\draw_P1_paddle|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan2~15_cout\ = CARRY((\VGA_Driver|Add1~14_combout\ & (!\v1|P1_paddle_y\(7) & !\draw_P1_paddle|LessThan2~13_cout\)) # (!\VGA_Driver|Add1~14_combout\ & ((!\draw_P1_paddle|LessThan2~13_cout\) # (!\v1|P1_paddle_y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~14_combout\,
	datab => \v1|P1_paddle_y\(7),
	datad => VCC,
	cin => \draw_P1_paddle|LessThan2~13_cout\,
	cout => \draw_P1_paddle|LessThan2~15_cout\);

-- Location: LCCOMB_X23_Y26_N22
\draw_P1_paddle|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan2~17_cout\ = CARRY((\VGA_Driver|Add1~16_combout\ & ((!\draw_P1_paddle|LessThan2~15_cout\) # (!\v1|P1_paddle_y\(8)))) # (!\VGA_Driver|Add1~16_combout\ & (!\v1|P1_paddle_y\(8) & !\draw_P1_paddle|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datab => \v1|P1_paddle_y\(8),
	datad => VCC,
	cin => \draw_P1_paddle|LessThan2~15_cout\,
	cout => \draw_P1_paddle|LessThan2~17_cout\);

-- Location: LCCOMB_X23_Y26_N24
\draw_P1_paddle|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan2~18_combout\ = (\VGA_Driver|Add1~18_combout\ & ((\draw_P1_paddle|LessThan2~17_cout\) # (!\v1|P1_paddle_y\(9)))) # (!\VGA_Driver|Add1~18_combout\ & (\draw_P1_paddle|LessThan2~17_cout\ & !\v1|P1_paddle_y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~18_combout\,
	datad => \v1|P1_paddle_y\(9),
	cin => \draw_P1_paddle|LessThan2~17_cout\,
	combout => \draw_P1_paddle|LessThan2~18_combout\);

-- Location: LCCOMB_X28_Y24_N16
\VGA_Driver|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~16_combout\ = (\VGA_Driver|VS_counter\(8) & ((GND) # (!\VGA_Driver|Add1~15\))) # (!\VGA_Driver|VS_counter\(8) & (\VGA_Driver|Add1~15\ $ (GND)))
-- \VGA_Driver|Add1~17\ = CARRY((\VGA_Driver|VS_counter\(8)) # (!\VGA_Driver|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(8),
	datad => VCC,
	cin => \VGA_Driver|Add1~15\,
	combout => \VGA_Driver|Add1~16_combout\,
	cout => \VGA_Driver|Add1~17\);

-- Location: LCCOMB_X28_Y24_N18
\VGA_Driver|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~18_combout\ = (\VGA_Driver|VS_counter\(9) & (\VGA_Driver|Add1~17\ & VCC)) # (!\VGA_Driver|VS_counter\(9) & (!\VGA_Driver|Add1~17\))
-- \VGA_Driver|Add1~19\ = CARRY((!\VGA_Driver|VS_counter\(9) & !\VGA_Driver|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(9),
	datad => VCC,
	cin => \VGA_Driver|Add1~17\,
	combout => \VGA_Driver|Add1~18_combout\,
	cout => \VGA_Driver|Add1~19\);

-- Location: LCCOMB_X23_Y25_N16
\draw_P1_paddle|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|Add1~1_cout\ = CARRY(\v1|P1_paddle_y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \v1|P1_paddle_y\(3),
	datad => VCC,
	cout => \draw_P1_paddle|Add1~1_cout\);

-- Location: LCCOMB_X23_Y25_N18
\draw_P1_paddle|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|Add1~2_combout\ = (\v1|P1_paddle_y\(4) & (!\draw_P1_paddle|Add1~1_cout\)) # (!\v1|P1_paddle_y\(4) & (\draw_P1_paddle|Add1~1_cout\ & VCC))
-- \draw_P1_paddle|Add1~3\ = CARRY((\v1|P1_paddle_y\(4) & !\draw_P1_paddle|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v1|P1_paddle_y\(4),
	datad => VCC,
	cin => \draw_P1_paddle|Add1~1_cout\,
	combout => \draw_P1_paddle|Add1~2_combout\,
	cout => \draw_P1_paddle|Add1~3\);

-- Location: LCCOMB_X23_Y25_N22
\draw_P1_paddle|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|Add1~6_combout\ = (\v1|P1_paddle_y\(6) & (\draw_P1_paddle|Add1~5\ & VCC)) # (!\v1|P1_paddle_y\(6) & (!\draw_P1_paddle|Add1~5\))
-- \draw_P1_paddle|Add1~7\ = CARRY((!\v1|P1_paddle_y\(6) & !\draw_P1_paddle|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v1|P1_paddle_y\(6),
	datad => VCC,
	cin => \draw_P1_paddle|Add1~5\,
	combout => \draw_P1_paddle|Add1~6_combout\,
	cout => \draw_P1_paddle|Add1~7\);

-- Location: LCCOMB_X23_Y25_N26
\draw_P1_paddle|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|Add1~10_combout\ = (\v1|P1_paddle_y\(8) & (!\draw_P1_paddle|Add1~9\)) # (!\v1|P1_paddle_y\(8) & ((\draw_P1_paddle|Add1~9\) # (GND)))
-- \draw_P1_paddle|Add1~11\ = CARRY((!\draw_P1_paddle|Add1~9\) # (!\v1|P1_paddle_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(8),
	datad => VCC,
	cin => \draw_P1_paddle|Add1~9\,
	combout => \draw_P1_paddle|Add1~10_combout\,
	cout => \draw_P1_paddle|Add1~11\);

-- Location: LCCOMB_X23_Y25_N28
\draw_P1_paddle|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|Add1~12_combout\ = \draw_P1_paddle|Add1~11\ $ (!\v1|P1_paddle_y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \v1|P1_paddle_y\(9),
	cin => \draw_P1_paddle|Add1~11\,
	combout => \draw_P1_paddle|Add1~12_combout\);

-- Location: LCCOMB_X22_Y25_N10
\draw_P1_paddle|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan3~1_cout\ = CARRY((\v1|P1_paddle_y\(0) & !\VGA_Driver|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(0),
	datab => \VGA_Driver|Add1~0_combout\,
	datad => VCC,
	cout => \draw_P1_paddle|LessThan3~1_cout\);

-- Location: LCCOMB_X22_Y25_N12
\draw_P1_paddle|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan3~3_cout\ = CARRY((\v1|P1_paddle_y\(1) & (\VGA_Driver|Add1~2_combout\ & !\draw_P1_paddle|LessThan3~1_cout\)) # (!\v1|P1_paddle_y\(1) & ((\VGA_Driver|Add1~2_combout\) # (!\draw_P1_paddle|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(1),
	datab => \VGA_Driver|Add1~2_combout\,
	datad => VCC,
	cin => \draw_P1_paddle|LessThan3~1_cout\,
	cout => \draw_P1_paddle|LessThan3~3_cout\);

-- Location: LCCOMB_X22_Y25_N14
\draw_P1_paddle|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan3~5_cout\ = CARRY((\VGA_Driver|Add1~4_combout\ & (!\v1|P1_paddle_y\(2) & !\draw_P1_paddle|LessThan3~3_cout\)) # (!\VGA_Driver|Add1~4_combout\ & ((!\draw_P1_paddle|LessThan3~3_cout\) # (!\v1|P1_paddle_y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~4_combout\,
	datab => \v1|P1_paddle_y\(2),
	datad => VCC,
	cin => \draw_P1_paddle|LessThan3~3_cout\,
	cout => \draw_P1_paddle|LessThan3~5_cout\);

-- Location: LCCOMB_X22_Y25_N16
\draw_P1_paddle|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan3~7_cout\ = CARRY((\v1|P1_paddle_y\(3) & ((\VGA_Driver|Add1~6_combout\) # (!\draw_P1_paddle|LessThan3~5_cout\))) # (!\v1|P1_paddle_y\(3) & (\VGA_Driver|Add1~6_combout\ & !\draw_P1_paddle|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v1|P1_paddle_y\(3),
	datab => \VGA_Driver|Add1~6_combout\,
	datad => VCC,
	cin => \draw_P1_paddle|LessThan3~5_cout\,
	cout => \draw_P1_paddle|LessThan3~7_cout\);

-- Location: LCCOMB_X22_Y25_N18
\draw_P1_paddle|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan3~9_cout\ = CARRY((\VGA_Driver|Add1~8_combout\ & (\draw_P1_paddle|Add1~2_combout\ & !\draw_P1_paddle|LessThan3~7_cout\)) # (!\VGA_Driver|Add1~8_combout\ & ((\draw_P1_paddle|Add1~2_combout\) # (!\draw_P1_paddle|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~8_combout\,
	datab => \draw_P1_paddle|Add1~2_combout\,
	datad => VCC,
	cin => \draw_P1_paddle|LessThan3~7_cout\,
	cout => \draw_P1_paddle|LessThan3~9_cout\);

-- Location: LCCOMB_X22_Y25_N20
\draw_P1_paddle|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan3~11_cout\ = CARRY((\draw_P1_paddle|Add1~4_combout\ & (\VGA_Driver|Add1~10_combout\ & !\draw_P1_paddle|LessThan3~9_cout\)) # (!\draw_P1_paddle|Add1~4_combout\ & ((\VGA_Driver|Add1~10_combout\) # 
-- (!\draw_P1_paddle|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_P1_paddle|Add1~4_combout\,
	datab => \VGA_Driver|Add1~10_combout\,
	datad => VCC,
	cin => \draw_P1_paddle|LessThan3~9_cout\,
	cout => \draw_P1_paddle|LessThan3~11_cout\);

-- Location: LCCOMB_X22_Y25_N22
\draw_P1_paddle|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan3~13_cout\ = CARRY((\VGA_Driver|Add1~12_combout\ & (\draw_P1_paddle|Add1~6_combout\ & !\draw_P1_paddle|LessThan3~11_cout\)) # (!\VGA_Driver|Add1~12_combout\ & ((\draw_P1_paddle|Add1~6_combout\) # 
-- (!\draw_P1_paddle|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~12_combout\,
	datab => \draw_P1_paddle|Add1~6_combout\,
	datad => VCC,
	cin => \draw_P1_paddle|LessThan3~11_cout\,
	cout => \draw_P1_paddle|LessThan3~13_cout\);

-- Location: LCCOMB_X22_Y25_N24
\draw_P1_paddle|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan3~15_cout\ = CARRY((\draw_P1_paddle|Add1~8_combout\ & (\VGA_Driver|Add1~14_combout\ & !\draw_P1_paddle|LessThan3~13_cout\)) # (!\draw_P1_paddle|Add1~8_combout\ & ((\VGA_Driver|Add1~14_combout\) # 
-- (!\draw_P1_paddle|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draw_P1_paddle|Add1~8_combout\,
	datab => \VGA_Driver|Add1~14_combout\,
	datad => VCC,
	cin => \draw_P1_paddle|LessThan3~13_cout\,
	cout => \draw_P1_paddle|LessThan3~15_cout\);

-- Location: LCCOMB_X22_Y25_N26
\draw_P1_paddle|LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan3~17_cout\ = CARRY((\VGA_Driver|Add1~16_combout\ & (\draw_P1_paddle|Add1~10_combout\ & !\draw_P1_paddle|LessThan3~15_cout\)) # (!\VGA_Driver|Add1~16_combout\ & ((\draw_P1_paddle|Add1~10_combout\) # 
-- (!\draw_P1_paddle|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datab => \draw_P1_paddle|Add1~10_combout\,
	datad => VCC,
	cin => \draw_P1_paddle|LessThan3~15_cout\,
	cout => \draw_P1_paddle|LessThan3~17_cout\);

-- Location: LCCOMB_X22_Y25_N28
\draw_P1_paddle|LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|LessThan3~18_combout\ = (\VGA_Driver|Add1~18_combout\ & (\draw_P1_paddle|LessThan3~17_cout\ & \draw_P1_paddle|Add1~12_combout\)) # (!\VGA_Driver|Add1~18_combout\ & ((\draw_P1_paddle|LessThan3~17_cout\) # 
-- (\draw_P1_paddle|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|Add1~18_combout\,
	datad => \draw_P1_paddle|Add1~12_combout\,
	cin => \draw_P1_paddle|LessThan3~17_cout\,
	combout => \draw_P1_paddle|LessThan3~18_combout\);

-- Location: LCCOMB_X22_Y25_N0
\draw_P1_paddle|always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_P1_paddle|always0~4_combout\ = (\draw_P1_paddle|always0~3_combout\ & (\draw_P1_paddle|always0~1_combout\ & (\draw_P1_paddle|LessThan2~18_combout\ & \draw_P1_paddle|LessThan3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_P1_paddle|always0~3_combout\,
	datab => \draw_P1_paddle|always0~1_combout\,
	datac => \draw_P1_paddle|LessThan2~18_combout\,
	datad => \draw_P1_paddle|LessThan3~18_combout\,
	combout => \draw_P1_paddle|always0~4_combout\);

-- Location: FF_X22_Y25_N1
\draw_P1_paddle|box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \draw_P1_paddle|always0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_P1_paddle|box~q\);

-- Location: LCCOMB_X28_Y27_N20
\draw_bottom_border|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_bottom_border|LessThan2~0_combout\ = (\VGA_Driver|Add1~6_combout\ & (\VGA_Driver|Add1~2_combout\ & \VGA_Driver|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~6_combout\,
	datac => \VGA_Driver|Add1~2_combout\,
	datad => \VGA_Driver|Add1~8_combout\,
	combout => \draw_bottom_border|LessThan2~0_combout\);

-- Location: LCCOMB_X28_Y24_N20
\VGA_Driver|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~20_combout\ = (\VGA_Driver|VS_counter\(10) & ((GND) # (!\VGA_Driver|Add1~19\))) # (!\VGA_Driver|VS_counter\(10) & (\VGA_Driver|Add1~19\ $ (GND)))
-- \VGA_Driver|Add1~21\ = CARRY((\VGA_Driver|VS_counter\(10)) # (!\VGA_Driver|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VS_counter\(10),
	datad => VCC,
	cin => \VGA_Driver|Add1~19\,
	combout => \VGA_Driver|Add1~20_combout\,
	cout => \VGA_Driver|Add1~21\);

-- Location: LCCOMB_X28_Y24_N22
\VGA_Driver|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Add1~22_combout\ = \VGA_Driver|Add1~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \VGA_Driver|Add1~21\,
	combout => \VGA_Driver|Add1~22_combout\);

-- Location: LCCOMB_X28_Y24_N28
\VGA_Driver|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|LessThan1~0_combout\ = (\VGA_Driver|Add1~20_combout\) # (!\VGA_Driver|Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_Driver|Add1~22_combout\,
	datad => \VGA_Driver|Add1~20_combout\,
	combout => \VGA_Driver|LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y23_N26
\draw_top_border|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_top_border|always0~1_combout\ = (!\VGA_Driver|Add1~2_combout\ & (!\VGA_Driver|Add1~16_combout\ & (!\VGA_Driver|Add1~6_combout\ & !\VGA_Driver|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~2_combout\,
	datab => \VGA_Driver|Add1~16_combout\,
	datac => \VGA_Driver|Add1~6_combout\,
	datad => \VGA_Driver|Add1~12_combout\,
	combout => \draw_top_border|always0~1_combout\);

-- Location: LCCOMB_X24_Y23_N26
\VGA_Driver|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|LessThan1~1_combout\ = (\draw_top_border|always0~0_combout\ & (!\VGA_Driver|Add1~18_combout\ & (\draw_top_border|always0~1_combout\ & !\VGA_Driver|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_top_border|always0~0_combout\,
	datab => \VGA_Driver|Add1~18_combout\,
	datac => \draw_top_border|always0~1_combout\,
	datad => \VGA_Driver|Add1~0_combout\,
	combout => \VGA_Driver|LessThan1~1_combout\);

-- Location: LCCOMB_X29_Y25_N18
\draw_top_border|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_top_border|LessThan0~1_combout\ = ((\VGA_Driver|HS_counter\(9) $ (!\VGA_Driver|Add0~0_combout\)) # (!\draw_top_border|LessThan0~0_combout\)) # (!\draw_P1_paddle|always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_P1_paddle|always0~0_combout\,
	datab => \draw_top_border|LessThan0~0_combout\,
	datac => \VGA_Driver|HS_counter\(9),
	datad => \VGA_Driver|Add0~0_combout\,
	combout => \draw_top_border|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y24_N26
\draw_bottom_border|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_bottom_border|always0~0_combout\ = (!\VGA_Driver|Equal3~1_combout\ & (\draw_top_border|LessThan0~1_combout\ & ((\VGA_Driver|LessThan1~0_combout\) # (!\VGA_Driver|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal3~1_combout\,
	datab => \VGA_Driver|LessThan1~0_combout\,
	datac => \VGA_Driver|LessThan1~1_combout\,
	datad => \draw_top_border|LessThan0~1_combout\,
	combout => \draw_bottom_border|always0~0_combout\);

-- Location: LCCOMB_X26_Y24_N26
\draw_bottom_border|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_bottom_border|always0~1_combout\ = (\draw_bottom_border|always0~0_combout\ & ((\VGA_Driver|Add0~1_combout\) # ((!\VGA_Driver|Add0~3_combout\ & \VGA_Driver|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add0~1_combout\,
	datab => \draw_bottom_border|always0~0_combout\,
	datac => \VGA_Driver|Add0~3_combout\,
	datad => \VGA_Driver|Add0~2_combout\,
	combout => \draw_bottom_border|always0~1_combout\);

-- Location: LCCOMB_X28_Y27_N24
\draw_bottom_border|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_bottom_border|LessThan2~1_combout\ = (\VGA_Driver|Add1~16_combout\ & (\VGA_Driver|Add1~14_combout\ & \VGA_Driver|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Add1~16_combout\,
	datab => \VGA_Driver|Add1~14_combout\,
	datad => \VGA_Driver|Add1~12_combout\,
	combout => \draw_bottom_border|LessThan2~1_combout\);

-- Location: LCCOMB_X28_Y27_N28
\draw_bottom_border|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_bottom_border|always0~3_combout\ = (\draw_bottom_border|always0~2_combout\ & (\draw_bottom_border|LessThan2~0_combout\ & (\draw_bottom_border|always0~1_combout\ & \draw_bottom_border|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_bottom_border|always0~2_combout\,
	datab => \draw_bottom_border|LessThan2~0_combout\,
	datac => \draw_bottom_border|always0~1_combout\,
	datad => \draw_bottom_border|LessThan2~1_combout\,
	combout => \draw_bottom_border|always0~3_combout\);

-- Location: FF_X28_Y27_N29
\draw_bottom_border|box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \draw_bottom_border|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_bottom_border|box~q\);

-- Location: LCCOMB_X24_Y23_N0
\draw_top_border|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_top_border|always0~2_combout\ = (\draw_top_border|always0~0_combout\ & (!\VGA_Driver|Add1~18_combout\ & \draw_top_border|always0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_top_border|always0~0_combout\,
	datab => \VGA_Driver|Add1~18_combout\,
	datac => \draw_top_border|always0~1_combout\,
	combout => \draw_top_border|always0~2_combout\);

-- Location: LCCOMB_X24_Y24_N0
\draw_top_border|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_top_border|always0~3_combout\ = (\draw_top_border|always0~2_combout\ & (!\VGA_Driver|LessThan1~1_combout\ & \draw_bottom_border|always0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draw_top_border|always0~2_combout\,
	datac => \VGA_Driver|LessThan1~1_combout\,
	datad => \draw_bottom_border|always0~1_combout\,
	combout => \draw_top_border|always0~3_combout\);

-- Location: FF_X24_Y24_N1
\draw_top_border|box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \draw_top_border|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_top_border|box~q\);

-- Location: LCCOMB_X22_Y25_N6
\always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\draw_P2_paddle|box~q\) # ((\draw_P1_paddle|box~q\) # ((\draw_bottom_border|box~q\) # (\draw_top_border|box~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_P2_paddle|box~q\,
	datab => \draw_P1_paddle|box~q\,
	datac => \draw_bottom_border|box~q\,
	datad => \draw_top_border|box~q\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X31_Y25_N4
\always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (\draw_left_border|box~q\) # ((\draw_ball|box~q\) # ((\draw_right_border|box~q\) # (\always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_left_border|box~q\,
	datab => \draw_ball|box~q\,
	datac => \draw_right_border|box~q\,
	datad => \always0~0_combout\,
	combout => \always0~1_combout\);

-- Location: LCCOMB_X31_Y25_N12
\pixel_color~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_color~0_combout\ = (\draw_center|box~q\) # (\always0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_center|box~q\,
	datac => \always0~1_combout\,
	combout => \pixel_color~0_combout\);

-- Location: FF_X31_Y25_N13
\pixel_color[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pixel_color~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_color(0));

-- Location: LCCOMB_X31_Y25_N16
\VGA_Driver|VGA_BUS_R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_R~0_combout\ = (\VGA_Driver|H_visible\(0) & (\VGA_Driver|V_visible\(0) & pixel_color(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|H_visible\(0),
	datac => \VGA_Driver|V_visible\(0),
	datad => pixel_color(0),
	combout => \VGA_Driver|VGA_BUS_R~0_combout\);

-- Location: LCCOMB_X40_Y24_N12
\VGA_Driver|VGA_BUS_R[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_R[0]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_R[0]~feeder_combout\);

-- Location: FF_X40_Y24_N13
\VGA_Driver|VGA_BUS_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_R[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_R\(0));

-- Location: LCCOMB_X40_Y25_N16
\VGA_Driver|VGA_BUS_R[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_R[1]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_R[1]~feeder_combout\);

-- Location: FF_X40_Y25_N17
\VGA_Driver|VGA_BUS_R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_R[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_R\(1));

-- Location: LCCOMB_X40_Y24_N6
\VGA_Driver|VGA_BUS_R[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_R[2]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_R[2]~feeder_combout\);

-- Location: FF_X40_Y24_N7
\VGA_Driver|VGA_BUS_R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_R[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_R\(2));

-- Location: LCCOMB_X40_Y24_N8
\VGA_Driver|VGA_BUS_R[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_R[3]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_R[3]~feeder_combout\);

-- Location: FF_X40_Y24_N9
\VGA_Driver|VGA_BUS_R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_R[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_R\(3));

-- Location: LCCOMB_X40_Y24_N14
\VGA_Driver|VGA_BUS_G[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_G[0]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_G[0]~feeder_combout\);

-- Location: FF_X40_Y24_N15
\VGA_Driver|VGA_BUS_G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_G[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_G\(0));

-- Location: LCCOMB_X40_Y24_N16
\VGA_Driver|VGA_BUS_G[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_G[1]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_G[1]~feeder_combout\);

-- Location: FF_X40_Y24_N17
\VGA_Driver|VGA_BUS_G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_G[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_G\(1));

-- Location: LCCOMB_X40_Y24_N30
\VGA_Driver|VGA_BUS_G[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_G[2]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_G[2]~feeder_combout\);

-- Location: FF_X40_Y24_N31
\VGA_Driver|VGA_BUS_G[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_G[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_G\(2));

-- Location: LCCOMB_X40_Y24_N4
\VGA_Driver|VGA_BUS_G[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_G[3]~feeder_combout\ = \VGA_Driver|VGA_BUS_R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_R~0_combout\,
	combout => \VGA_Driver|VGA_BUS_G[3]~feeder_combout\);

-- Location: FF_X40_Y24_N5
\VGA_Driver|VGA_BUS_G[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_G[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_G\(3));

-- Location: FF_X31_Y25_N15
\pixel_color[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \always0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_color(8));

-- Location: LCCOMB_X31_Y25_N14
\VGA_Driver|VGA_BUS_B~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_B~0_combout\ = (\VGA_Driver|H_visible\(0) & (\VGA_Driver|V_visible\(0) & pixel_color(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|H_visible\(0),
	datab => \VGA_Driver|V_visible\(0),
	datac => pixel_color(8),
	combout => \VGA_Driver|VGA_BUS_B~0_combout\);

-- Location: LCCOMB_X32_Y25_N20
\VGA_Driver|VGA_BUS_B[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_B[0]~feeder_combout\ = \VGA_Driver|VGA_BUS_B~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_B~0_combout\,
	combout => \VGA_Driver|VGA_BUS_B[0]~feeder_combout\);

-- Location: FF_X32_Y25_N21
\VGA_Driver|VGA_BUS_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_B[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_B\(0));

-- Location: LCCOMB_X32_Y25_N2
\VGA_Driver|VGA_BUS_B[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_B[1]~feeder_combout\ = \VGA_Driver|VGA_BUS_B~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_B~0_combout\,
	combout => \VGA_Driver|VGA_BUS_B[1]~feeder_combout\);

-- Location: FF_X32_Y25_N3
\VGA_Driver|VGA_BUS_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_B[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_B\(1));

-- Location: LCCOMB_X32_Y25_N12
\VGA_Driver|VGA_BUS_B[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_B[2]~feeder_combout\ = \VGA_Driver|VGA_BUS_B~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_B~0_combout\,
	combout => \VGA_Driver|VGA_BUS_B[2]~feeder_combout\);

-- Location: FF_X32_Y25_N13
\VGA_Driver|VGA_BUS_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_B[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_B\(2));

-- Location: LCCOMB_X32_Y25_N6
\VGA_Driver|VGA_BUS_B[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|VGA_BUS_B[3]~feeder_combout\ = \VGA_Driver|VGA_BUS_B~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_Driver|VGA_BUS_B~0_combout\,
	combout => \VGA_Driver|VGA_BUS_B[3]~feeder_combout\);

-- Location: FF_X32_Y25_N7
\VGA_Driver|VGA_BUS_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|VGA_BUS_B[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_BUS_B\(3));

-- Location: LCCOMB_X31_Y24_N12
\VGA_Driver|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector0~0_combout\ = (!\VGA_Driver|Equal2~2_combout\ & ((\VGA_Driver|VGA_HS\(0)) # ((\VGA_Driver|WideNor0~1_combout\ & !\VGA_Driver|WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|WideNor0~1_combout\,
	datab => \VGA_Driver|WideNor0~0_combout\,
	datac => \VGA_Driver|VGA_HS\(0),
	datad => \VGA_Driver|Equal2~2_combout\,
	combout => \VGA_Driver|Selector0~0_combout\);

-- Location: FF_X31_Y24_N13
\VGA_Driver|VGA_HS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_HS\(0));

-- Location: LCCOMB_X29_Y24_N18
\VGA_Driver|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector6~0_combout\ = (\VGA_Driver|Equal7~0_combout\ & (\VGA_Driver|VS_counter\(5) $ (\VGA_Driver|VS_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal7~0_combout\,
	datac => \VGA_Driver|VS_counter\(5),
	datad => \VGA_Driver|VS_counter\(9),
	combout => \VGA_Driver|Selector6~0_combout\);

-- Location: LCCOMB_X29_Y24_N16
\VGA_Driver|Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Equal5~2_combout\ = (!\VGA_Driver|VS_counter\(5) & (!\VGA_Driver|VS_counter\(0) & !\VGA_Driver|VS_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_Driver|VS_counter\(5),
	datac => \VGA_Driver|VS_counter\(0),
	datad => \VGA_Driver|VS_counter\(9),
	combout => \VGA_Driver|Equal5~2_combout\);

-- Location: LCCOMB_X29_Y24_N10
\VGA_Driver|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector6~1_combout\ = (\VGA_Driver|Equal5~2_combout\ & ((\VGA_Driver|VGA_VS\(0) & (!\VGA_Driver|VS_counter\(1) & \VGA_Driver|VS_counter\(2))) # (!\VGA_Driver|VGA_VS\(0) & (\VGA_Driver|VS_counter\(1) & !\VGA_Driver|VS_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|VGA_VS\(0),
	datab => \VGA_Driver|Equal5~2_combout\,
	datac => \VGA_Driver|VS_counter\(1),
	datad => \VGA_Driver|VS_counter\(2),
	combout => \VGA_Driver|Selector6~1_combout\);

-- Location: LCCOMB_X29_Y24_N24
\VGA_Driver|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_Driver|Selector6~2_combout\ = (\VGA_Driver|Equal5~1_combout\ & ((\VGA_Driver|VGA_VS\(0) & ((!\VGA_Driver|Selector6~1_combout\))) # (!\VGA_Driver|VGA_VS\(0) & (!\VGA_Driver|Selector6~0_combout\ & \VGA_Driver|Selector6~1_combout\)))) # 
-- (!\VGA_Driver|Equal5~1_combout\ & (((\VGA_Driver|VGA_VS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_Driver|Equal5~1_combout\,
	datab => \VGA_Driver|Selector6~0_combout\,
	datac => \VGA_Driver|VGA_VS\(0),
	datad => \VGA_Driver|Selector6~1_combout\,
	combout => \VGA_Driver|Selector6~2_combout\);

-- Location: FF_X29_Y24_N25
\VGA_Driver|VGA_VS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_Driver|pll_inst0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_Driver|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_Driver|VGA_VS\(0));
END structure;


