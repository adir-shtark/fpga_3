
# "GCLK"
set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
set_property PACKAGE_PIN E3 [get_ports clk100]
set_property IOSTANDARD LVCMOS33 [get_ports clk100]

# All timing constraint translations are rough conversions, intended to act as a template for further manual refinement. 
#The translations should not be expected to produce semantically identical results to the original ucf. 
#Each xdc timing constraint must be manually inspected and verified to ensure it captures the desired intent

# VGA out
set_property PACKAGE_PIN B7      [get_ports {vga_blue[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[0]}]

set_property PACKAGE_PIN C7      [get_ports {vga_blue[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[1]}]

set_property PACKAGE_PIN D7      [get_ports {vga_blue[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[2]}]

set_property PACKAGE_PIN D8      [get_ports {vga_blue[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[3]}]

set_property PACKAGE_PIN C6      [get_ports {vga_green[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[0]}]

set_property PACKAGE_PIN A5      [get_ports {vga_green[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[1]}]

set_property PACKAGE_PIN B6      [get_ports {vga_green[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[2]}]

set_property PACKAGE_PIN A6      [get_ports {vga_green[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[3]}]

set_property PACKAGE_PIN A3      [get_ports {vga_red[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[0]}]

set_property PACKAGE_PIN B4      [get_ports {vga_red[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[1]}]

set_property PACKAGE_PIN C5      [get_ports {vga_red[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[2]}]

set_property PACKAGE_PIN A4      [get_ports {vga_red[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[3]}]

set_property PACKAGE_PIN B11      [get_ports vga_hsync]
set_property IOSTANDARD  LVCMOS33 [get_ports vga_hsync]

set_property PACKAGE_PIN B12      [get_ports vga_vsync]
set_property IOSTANDARD  LVCMOS33 [get_ports vga_vsync]


# JA0 all this needs pin edeting: [
set_property PACKAGE_PIN E6  [get_ports OV7670_PWDN]
set_property IOSTANDARD LVTTL [get_ports OV7670_PWDN]
#set_property SLEW SLOW        [get_ports OV7670_PWDN]
# JA4
set_property PACKAGE_PIN C12  [get_ports btn]
set_property IOSTANDARD LVTTL [get_ports btn]

set_property PACKAGE_PIN P17  [get_ports decide_btn]
set_property IOSTANDARD LVTTL [get_ports decide_btn]

set_property PACKAGE_PIN J4  [get_ports OV7670_RESET]
set_property IOSTANDARD LVTTL [get_ports OV7670_RESET]
#set_property SLEW SLOW        [get_ports OV7670_RESET]
# JA1
set_property PACKAGE_PIN H4 [get_ports {OV7670_D[0]}]
set_property IOSTANDARD LVTTL [get_ports {OV7670_D[0]}]
#set_property SLEW SLOW        [get_ports {OV7670_D[0]}]
# JA5
set_property PACKAGE_PIN H1 [get_ports {OV7670_D[1]}]
set_property IOSTANDARD LVTTL [get_ports {OV7670_D[1]}]
#set_property SLEW SLOW        [get_ports {OV7670_D[1]}]
# JA2
set_property PACKAGE_PIN G1  [get_ports {OV7670_D[2]}]
set_property IOSTANDARD LVTTL [get_ports {OV7670_D[2]}]
#set_property SLEW SLOW        [get_ports {OV7670_D[2]}]
# JA6
set_property PACKAGE_PIN G3  [get_ports {OV7670_D[3]}]
set_property IOSTANDARD LVTTL [get_ports {OV7670_D[3]}]
#set_property SLEW SLOW        [get_ports {OV7670_D[3]}]
# JA3
set_property PACKAGE_PIN H2  [get_ports {OV7670_D[4]}]
set_property IOSTANDARD LVTTL [get_ports {OV7670_D[4]}]
#set_property SLEW SLOW        [get_ports {OV7670_D[4]}]
# JA7
set_property PACKAGE_PIN G4  [get_ports {OV7670_D[5]}]
set_property IOSTANDARD LVTTL [get_ports {OV7670_D[5]}]
#set_property SLEW SLOW        [get_ports {OV7670_D[5]}]

# JB0
set_property PACKAGE_PIN G2  [get_ports {OV7670_D[6]}]
set_property IOSTANDARD LVTTL [get_ports {OV7670_D[6]}]
#set_property SLEW SLOW        [get_ports {OV7670_D[6]}]
# JB4
set_property PACKAGE_PIN F3  [get_ports {OV7670_D[7]}]
set_property IOSTANDARD LVTTL [get_ports {OV7670_D[7]}]
#set_property SLEW SLOW        [get_ports {OV7670_D[7]}]
# JB1
set_property PACKAGE_PIN E7  [get_ports OV7670_XCLK]
set_property IOSTANDARD LVTTL [get_ports OV7670_XCLK]
#set_property SLEW SLOW        [get_ports OV7670_XCLK]
# JB5
set_property PACKAGE_PIN J3             [get_ports OV7670_PCLK]
set_property IOSTANDARD LVTTL            [get_ports OV7670_PCLK]
create_clock -period 20.00 -waveform {0 5} [get_ports {OV7670_PCLK}];
#set_property SLEW SLOW                   [get_ports OV7670_PCLK]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets OV7670_PCLK]
# JB2
set_property PACKAGE_PIN G6  [get_ports OV7670_HREF]
set_property IOSTANDARD LVTTL [get_ports OV7670_HREF]
#set_property SLEW SLOW        [get_ports OV7670_HREF]
# JB6
set_property PACKAGE_PIN J2   [get_ports OV7670_VSYNC]
set_property IOSTANDARD LVTTL [get_ports OV7670_VSYNC]
##set_property SLEW SLOW        [get_ports OV7670_VSYNC]
# JB3
set_property PACKAGE_PIN K1   [get_ports OV7670_SIOD]
set_property IOSTANDARD LVTTL [get_ports OV7670_SIOD]
#set_property SLEW SLOW        [get_ports OV7670_SIOD]
set_property PULLUP true      [get_ports OV7670_SIOD]
# JB7
set_property PACKAGE_PIN F6   [get_ports OV7670_SIOC]
set_property IOSTANDARD LVTTL [get_ports OV7670_SIOC]
#set_property SLEW SLOW        [get_ports OV7670_SIOC]

# until here]

#LEDs
set_property PACKAGE_PIN H17     [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

set_property PACKAGE_PIN K15     [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]

set_property PACKAGE_PIN J13     [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]

set_property PACKAGE_PIN N14     [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]

set_property PACKAGE_PIN R18     [get_ports {LED[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[4]}]

set_property PACKAGE_PIN V17     [get_ports {LED[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[5]}]

set_property PACKAGE_PIN U17     [get_ports {LED[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[6]}]

set_property PACKAGE_PIN U16     [get_ports {LED[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[7]}]


