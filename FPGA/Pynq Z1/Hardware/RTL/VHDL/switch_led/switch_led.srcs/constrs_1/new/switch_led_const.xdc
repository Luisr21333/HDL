## Clock signal
set_property PACKAGE_PIN H16 [get_ports { clk }]
set_property IOSTANDARD LVCMOS33 [get_ports { clk }]
create_clock -add -name clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }]; # 8ns --> 125 MHz

## LEDs
set_property PACKAGE_PIN R14 [get_ports { led[0] }]
set_property PACKAGE_PIN P14 [get_ports { led[1] }]
set_property PACKAGE_PIN N16 [get_ports { led[2] }]
set_property PACKAGE_PIN M14 [get_ports { led[3] }]

set_property IOSTANDARD LVCMOS33 [get_ports { led[0] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[1] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[2] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[3] }]

## RGB LEDs

# LD4 RGB LED
set_property PACKAGE_PIN N15 [get_ports { led[4] }]
set_property PACKAGE_PIN G17 [get_ports { led[5] }]
set_property PACKAGE_PIN L15 [get_ports { led[6] }]

set_property IOSTANDARD LVCMOS33 [get_ports { led[4] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[5] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[6] }]

# LD5 RGB LED
set_property PACKAGE_PIN M15 [get_ports { led[7] }]
set_property PACKAGE_PIN L14 [get_ports { led[8] }]
set_property PACKAGE_PIN G14 [get_ports { led[9] }]

set_property IOSTANDARD LVCMOS33 [get_ports { led[7] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[8] }]
set_property IOSTANDARD LVCMOS33 [get_ports { led[9] }]

## Slide switches
set_property PACKAGE_PIN M20 [get_ports { switch[0] }]
set_property PACKAGE_PIN M19 [get_ports { switch[1] }]

set_property IOSTANDARD LVCMOS33 [get_ports { switch[0] }]
set_property IOSTANDARD LVCMOS33 [get_ports { switch[1] }]

# Push buttons 1-3
set_property PACKAGE_PIN D20 [get_ports { switch[2] }]
set_property PACKAGE_PIN L20 [get_ports { switch[3] }]
set_property PACKAGE_PIN L19 [get_ports { switch[4] }]

set_property IOSTANDARD LVCMOS33 [get_ports { switch[2] }]
set_property IOSTANDARD LVCMOS33 [get_ports { switch[3] }]
set_property IOSTANDARD LVCMOS33 [get_ports { switch[4] }]

## Reset signal connects to push button 0
set_property PACKAGE_PIN D19 [get_ports { rst }]

set_property IOSTANDARD LVCMOS33 [get_ports { rst }]
