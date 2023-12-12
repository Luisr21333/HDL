## Clock signal
set_property PACKAGE_PIN K17 [get_ports { clk }]
set_property IOSTANDARD LVCMOS33 [get_ports { clk }]
create_clock -add -name clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }]; # 8ns --> 125 MHz

## LEDs
set_property PACKAGE_PIN M14 [get_ports { led[0] }]
set_property PACKAGE_PIN M15 [get_ports { led[1] }]
set_property PACKAGE_PIN G14 [get_ports { led[2] }]
set_property PACKAGE_PIN D18 [get_ports { led[3] }]

set_property IOSTANDARD LVCMOS33 [get_ports { led[0] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[1] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[2] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[3] }]

## Reset
set_property PACKAGE_PIN K18 [get_ports { rst }]

set_property IOSTANDARD LVCMOS33 [get_ports { rst }]

## Probe signal
set_property PACKAGE_PIN V8 [get_ports { probe }]

set_property IOSTANDARD LVCMOS33 [get_ports { probe }]
