# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\luisr\Desktop\Vitis\Graduate_Project\FPGA\Pmod_AD2\Pmod_AD2_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\luisr\Desktop\Vitis\Graduate_Project\FPGA\Pmod_AD2\Pmod_AD2_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Pmod_AD2_wrapper}\
-hw {C:\Users\luisr\.Xilinx\VHDL_Projects\Graduate_Project\FPGA\Pmod_AD2\Pmod_AD2_wrapper.xsa}\
-out {C:/Users/luisr/Desktop/Vitis/Graduate_Project/FPGA/Pmod_AD2}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {Pmod_AD2_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform config -updatehw {C:/Users/luisr/.Xilinx/VHDL_Projects/Graduate_Project/FPGA/Pmod_AD2/Pmod_AD2_wrapper.xsa}
platform generate -domains 
platform generate
platform generate
platform clean
platform generate
platform clean
platform generate
platform generate
