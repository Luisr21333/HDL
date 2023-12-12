## Clock signal
set_property PACKAGE_PIN E3 [get_ports { clk }]
set_property IOSTANDARD LVCMOS33 [get_ports { clk }]
create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]
#create_clock -add -name clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }]; # 8ns --> 125 MHz

## tx_enable connects to slide switch 0
set_property PACKAGE_PIN A8 [get_ports { tx_enable }]

set_property IOSTANDARD LVCMOS33 [get_ports { tx_enable }]

## TX & RX Loopback
set_property PACKAGE_PIN D10 [get_ports { tx }] 
set_property PACKAGE_PIN A9 [get_ports { rx }]

set_property IOSTANDARD LVCMOS33 [get_ports { tx }]
set_property IOSTANDARD LVCMOS33 [get_ports { rx }]

## Probe TX & RX
set_property PACKAGE_PIN D4 [get_ports { probe_tx }] 
set_property PACKAGE_PIN D3 [get_ports { probe_rx }]

set_property IOSTANDARD LVCMOS33 [get_ports { probe_tx }]
set_property IOSTANDARD LVCMOS33 [get_ports { probe_rx }]

## Reset signal connects to push button 0
set_property PACKAGE_PIN D9 [get_ports { reset }]

set_property IOSTANDARD LVCMOS33 [get_ports { reset }]
