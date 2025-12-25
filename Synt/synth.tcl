# =================================================================
# 1. SETUP
# =================================================================
# Use the Toshiba library (or lsi_10k.db if this fails)
set target_library "/tools/synopsys/syn/W-2024.09-SP3/libraries/syn/tc6a_cbacore.db"
set link_library   "* $target_library"

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
analyze -format sverilog $HDL_FILES
elaborate switch_4port
set_top_module switch_4port

# =================================================================
# 3. APPLY CONSTRAINTS
# =================================================================
source constraints.sdc
check_design > report_check_design.txt

# =================================================================
# 4. COMPILE (The Fix)
# =================================================================
# Use standard compile for dc_shell
compile -exact_map

# =================================================================
# 5. EXPORT RESULTS
# =================================================================
report_area > report_area_std.txt
report_power > report_power_std.txt
report_timing > report_timing_std.txt
write -format verilog -hierarchy -output switch_4port_std.v
write_sdf switch_4port_std.sdf

exit