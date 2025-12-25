# =================================================================
# 1. LOGICAL SYNTHESIS SETUP
# =================================================================
# We are doing Logical Synthesis only (Lecture 9).
# Suppress the errors regarding missing physical data (site rows).
# OPT-1006: Buffer/Inverter check failure
# OPT-1007: No technology data
# LGL-397:  No site rows
# FLW-*:    Flow errors caused by the above
suppress_message {OPT-1006 OPT-1007 LGL-397 FLW-2543 FLW-1762}

# =================================================================
# 2. LIBRARY SETUP
# =================================================================
# Using the Toshiba library (Logic Only)
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
# 3. READ & ELABORATE
# =================================================================
analyze -format sverilog $HDL_FILES
elaborate switch_4port
set_top_module switch_4port

# =================================================================
# 4. CONSTRAINTS & CHECK
# =================================================================
source constraints.sdc

# Use 'catch' so check_design reports issues but doesn't stop the script
redirect report_check_design.txt { catch { check_design } }
redirect report_check_timing.txt { catch { check_timing } }

# =================================================================
# 5. COMPILE (LOGICAL ONLY)
# =================================================================
# 'compile -exact_map' matches the Design Compiler behavior from the lecture.
# It performs logic mapping without requiring physical floorplanning.
compile -exact_map

# =================================================================
# 6. REPORTS
# =================================================================
# Use 'catch' here as well to ensure all reports are generated
redirect report_area_std.txt   { catch { report_area } }
redirect report_power_std.txt  { catch { report_power } }
redirect report_timing_std.txt { catch { report_timing } }
redirect report_qor_std.txt    { catch { report_qor } }

# Write output files
write -format verilog -hierarchy -output switch_4port_std.v
write_sdf switch_4port_std.sdf

exit