-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Sep 21 18:06:22 2023
-- Host        : DESKTOP-2822QQS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Public/Code/vhdl/rotatingProject/done_project_copied/done_project_copied.gen/sources_1/ip/clocking/clocking_stub.vhdl
-- Design      : clocking
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clocking is
  Port ( 
    CLK_50 : out STD_LOGIC;
    CLK_25 : out STD_LOGIC;
    CLK_100 : in STD_LOGIC
  );

end clocking;

architecture stub of clocking is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK_50,CLK_25,CLK_100";
begin
end;
