# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Clouds\Dropbox\Vivado_Project\Final\Zedboard\Vitis_Baremetal\sha256_top\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Clouds\Dropbox\Vivado_Project\Final\Zedboard\Vitis_Baremetal\sha256_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {sha256_top}\
-hw {D:\Clouds\Dropbox\Vivado_Project\Final\Zedboard\Vivado\sha256_top.xsa}\
-out {D:/Clouds/Dropbox/Vivado_Project/Final/Zedboard/Vitis_Baremetal}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {sha256_top}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
