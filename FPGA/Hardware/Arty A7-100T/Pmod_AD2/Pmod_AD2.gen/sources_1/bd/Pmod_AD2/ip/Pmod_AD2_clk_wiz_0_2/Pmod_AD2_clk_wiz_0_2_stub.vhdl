-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Feb 24 14:12:52 2023
-- Host        : DESKTOP-AJV8A0J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/luisr/Desktop/FPGA/Arty
--               A7-100T/Pmod_AD2/Pmod_AD2.gen/sources_1/bd/Pmod_AD2/ip/Pmod_AD2_clk_wiz_0_2/Pmod_AD2_clk_wiz_0_2_stub.vhdl}
-- Design      : Pmod_AD2_clk_wiz_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Pmod_AD2_clk_wiz_0_2 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end Pmod_AD2_clk_wiz_0_2;

architecture stub of Pmod_AD2_clk_wiz_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out2,resetn,locked,clk_in1";
begin
end;
