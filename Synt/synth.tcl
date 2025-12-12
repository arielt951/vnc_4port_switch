# =================================================================
# 1. SETUP
# =================================================================
# EDIT THIS: Point to your standard cell library (.db file)
set target_library "your_library_file.db" 
set link_library   "* $target_library"

# Define Design Files
set HDL_FILES { \
    design/packet_pkg.sv \
    design/fifo.sv \
    design/arbiter.sv \
    design/parser.sv \
    design/output_mux.sv \
    design/switch_port.sv \
    design/switch_4port.sv \
}

# =================================================================
# 2. READ & LINK
# =================================================================
analyze -format sverilog $HDL_FILES
elaborate switch_4port
current_design switch_4port
link

# =================================================================
# 3. APPLY CONSTRAINTS
# =================================================================
source constraints.sdc
check_design

# =================================================================
# 4. COMPILE (First Pass: No Clock Gating)
# =================================================================
# This converts RTL to Gates
compile -map_effort medium

# =================================================================
# 5. REPORTS (For your final PDF)
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