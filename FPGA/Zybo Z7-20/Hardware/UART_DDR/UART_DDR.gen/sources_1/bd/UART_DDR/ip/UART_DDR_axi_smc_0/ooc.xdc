# aclk {FREQ_HZ 83333333 CLK_DOMAIN UART_DDR_mig_7series_0_0_ui_clk PHASE 0}
# Clock Domain: UART_DDR_mig_7series_0_0_ui_clk
create_clock -name aclk -period 12.000 [get_ports aclk]
# Generated clocks