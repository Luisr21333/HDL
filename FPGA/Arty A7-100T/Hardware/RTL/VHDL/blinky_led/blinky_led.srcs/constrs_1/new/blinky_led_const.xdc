## Clock signal
set_property PACKAGE_PIN E3 [get_ports { clk }]
set_property IOSTANDARD LVCMOS33 [get_ports { clk }]
create_clock -add -name clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }]; # 8ns --> 125 MHz

## LEDs

# LD0 RGB LED
set_property PACKAGE_PIN G6 [get_ports { led[0] }]
set_property PACKAGE_PIN F6 [get_ports { led[1] }]
set_property PACKAGE_PIN E1 [get_ports { led[2] }]

set_property IOSTANDARD LVCMOS33 [get_ports { led[0] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[1] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[2] }]

# LD1 RGB LED
set_property PACKAGE_PIN G3 [get_ports { led[3] }]
set_property PACKAGE_PIN J4 [get_ports { led[4] }]
set_property PACKAGE_PIN G4 [get_ports { led[5] }]

set_property IOSTANDARD LVCMOS33 [get_ports { led[3] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[4] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[5] }]

# LD2 RGB LED
set_property PACKAGE_PIN J3 [get_ports { led[6] }]
set_property PACKAGE_PIN J2 [get_ports { led[7] }]
set_property PACKAGE_PIN H4 [get_ports { led[8] }]

set_property IOSTANDARD LVCMOS33 [get_ports { led[6] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[7] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[8] }]

# LD3 RGB LED
set_property PACKAGE_PIN K1 [get_ports { led[9] }]
set_property PACKAGE_PIN H6 [get_ports { led[10] }]
set_property PACKAGE_PIN K2 [get_ports { led[11] }]

set_property IOSTANDARD LVCMOS33 [get_ports { led[9] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[10] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[11] }]

## Reset
set_property PACKAGE_PIN D9 [get_ports { rst }]

set_property IOSTANDARD LVCMOS33 [get_ports { rst }]
