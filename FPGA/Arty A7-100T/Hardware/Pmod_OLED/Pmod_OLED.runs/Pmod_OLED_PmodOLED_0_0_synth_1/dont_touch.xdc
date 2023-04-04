# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# IP: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.srcs/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/Pmod_OLED_PmodOLED_0_0.xci
# IP: The module: 'Pmod_OLED_PmodOLED_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_pmod_bridge_0_0/PmodOLED_pmod_bridge_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PmodOLED_pmod_bridge_0_0 || ORIG_REF_NAME==PmodOLED_pmod_bridge_0_0} -quiet] -quiet

# IP: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/PmodOLED_axi_quad_spi_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PmodOLED_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodOLED_axi_quad_spi_0_0} -quiet] -quiet

# IP: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/PmodOLED_axi_gpio_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PmodOLED_axi_gpio_0_0 || ORIG_REF_NAME==PmodOLED_axi_gpio_0_0} -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_pmod_bridge_0_0/PmodOLED_pmod_bridge_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodOLED_pmod_bridge_0_0 || ORIG_REF_NAME==PmodOLED_pmod_bridge_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_pmod_bridge_0_0/src/pmod_concat_ooc.xdc

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/Pmod_OLED_PmodOLED_0_0_board.xdc
# XDC: The top module name and the constraint reference have the same name: 'Pmod_OLED_PmodOLED_0_0'. Do not add the DONT_TOUCH constraint.
set_property KEEP_HIERARCHY SOFT [get_cells inst -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'Pmod_OLED_PmodOLED_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property KEEP_HIERARCHY SOFT [get_cells inst -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/PmodOLED_axi_quad_spi_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodOLED_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodOLED_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/PmodOLED_axi_quad_spi_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodOLED_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodOLED_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/PmodOLED_axi_quad_spi_0_0_ooc.xdc

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/PmodOLED_axi_quad_spi_0_0_clocks.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodOLED_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodOLED_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/PmodOLED_axi_gpio_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodOLED_axi_gpio_0_0 || ORIG_REF_NAME==PmodOLED_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/PmodOLED_axi_gpio_0_0_ooc.xdc

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/PmodOLED_axi_gpio_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodOLED_axi_gpio_0_0 || ORIG_REF_NAME==PmodOLED_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# IP: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.srcs/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/Pmod_OLED_PmodOLED_0_0.xci
# IP: The module: 'Pmod_OLED_PmodOLED_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_pmod_bridge_0_0/PmodOLED_pmod_bridge_0_0.xci
#dup# set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PmodOLED_pmod_bridge_0_0 || ORIG_REF_NAME==PmodOLED_pmod_bridge_0_0} -quiet] -quiet

# IP: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/PmodOLED_axi_quad_spi_0_0.xci
#dup# set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PmodOLED_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodOLED_axi_quad_spi_0_0} -quiet] -quiet

# IP: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/PmodOLED_axi_gpio_0_0.xci
#dup# set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PmodOLED_axi_gpio_0_0 || ORIG_REF_NAME==PmodOLED_axi_gpio_0_0} -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_pmod_bridge_0_0/PmodOLED_pmod_bridge_0_0_board.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodOLED_pmod_bridge_0_0 || ORIG_REF_NAME==PmodOLED_pmod_bridge_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_pmod_bridge_0_0/src/pmod_concat_ooc.xdc

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/Pmod_OLED_PmodOLED_0_0_board.xdc
# XDC: The top module name and the constraint reference have the same name: 'Pmod_OLED_PmodOLED_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property KEEP_HIERARCHY SOFT [get_cells inst -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'Pmod_OLED_PmodOLED_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property KEEP_HIERARCHY SOFT [get_cells inst -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/PmodOLED_axi_quad_spi_0_0_board.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodOLED_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodOLED_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/PmodOLED_axi_quad_spi_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodOLED_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodOLED_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/PmodOLED_axi_quad_spi_0_0_ooc.xdc

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/PmodOLED_axi_quad_spi_0_0_clocks.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodOLED_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodOLED_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/PmodOLED_axi_gpio_0_0_board.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodOLED_axi_gpio_0_0 || ORIG_REF_NAME==PmodOLED_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/PmodOLED_axi_gpio_0_0_ooc.xdc

# XDC: c:/Users/luisr/Desktop/FPGA/Hardware/Arty A7-100T/Pmod_OLED/Pmod_OLED.gen/sources_1/bd/Pmod_OLED/ip/Pmod_OLED_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/PmodOLED_axi_gpio_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodOLED_axi_gpio_0_0 || ORIG_REF_NAME==PmodOLED_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet
