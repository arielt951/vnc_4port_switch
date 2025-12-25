# =================================================================
# 1. SETUP
# =================================================================
# 1. Define the Real Library Path (You found it!)
set target_library "/tools/synopsys/syn/W-2024.09-SP3/libraries/syn/class.db"

# 2. Link Library = Standard Cells (*) + Your Design in memory
set link_library   "* $target_library"

# Define Design Files (Order matters!)
# Note: No backslashes used inside the list
set HDL_FILES { 
    ../design/packet_pkg.sv 
    ../design/port_if.sv 
    ../design/FIFO.sv 
    ../design/arbiter.sv 
    ../design/parser.sv 
    ../design/output_mux.sv 
    ../design/switch_port.sv 
    ../design/switch_4port.sv 
}

# =================================================================
# 2. READ & LINK
# =================================================================
# Analyze the Verilog files
analyze -format sverilog $HDL_FILES

# Elaborate the top-level module
elaborate switch_4port

# Set the top module (Fusion Compiler style)
set_top_module switch_4port

# =================================================================
# 3. APPLY CONSTRAINTS
# =================================================================
source constraints.sdc

# Optional: Check for obvious errors before compiling
# check_design -checks all 

# =================================================================
# 4. COMPILE
# =================================================================
# Use the modern Fusion Compiler optimization engine
compile_fusion -no_map

# =================================================================
# 5. REPORTS
# =================================================================
report_area > report_area.txt
report_power > report_power.txt
report_timing > report_timing.txt
report_qor > report_qor.txt

# =================================================================
# 6. EXPORT NETLIST
# =================================================================
# The .v file is the "Gate Level" design
write -format verilog -hierarchy -output switch_4port_netlist.v

# The .sdf file contains the timing delays for simulation
write_sdf switch_4port.sdf

exit
