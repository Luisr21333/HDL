set_property SRC_FILE_INFO {cfile:{c:/Users/luisr/Desktop/FPGA/Arty A7-100T/Pmod_AD2/Pmod_AD2.gen/sources_1/bd/Pmod_AD2/ip/Pmod_AD2_clk_wiz_0_2/Pmod_AD2_clk_wiz_0_2.xdc} rfile:../../../Pmod_AD2.gen/sources_1/bd/Pmod_AD2/ip/Pmod_AD2_clk_wiz_0_2/Pmod_AD2_clk_wiz_0_2.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
