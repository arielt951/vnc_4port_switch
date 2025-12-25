# =================================================================
# 1. COMPATIBILITY SETTINGS
# =================================================================
# Ignore missing physical data errors (OPT-1006, OPT-1007)
suppress_message {OPT-1006 OPT-1007}

# =================================================================
# 2. SETUP
# =================================================================
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
# 3. READ & LINK
# =================================================================
analyze -format sverilog $HDL_FILES
elaborate switch_4port
set_top_module switch_4port

# =================================================================
# 4. APPLY CONSTRAINTS & CHECK (The Fix)
# =================================================================
source constraints.sdc

# USE "CATCH": Runs the check, but prevents the script from stopping if it fails
redirect report_check_design.txt { catch { check_design } }
redirect report_check_timing.txt { catch { check_timing } }

# =================================================================
# 5. COMPILE
# =================================================================
# Use legacy compile to support the old library
compile -exact_map

# =================================================================
# 6. EXPORT RESULTS
# =================================================================
# Wrap these in catch too, just to be safe
redirect report_area_std.txt   { catch { report_area } }
redirect report_power_std.txt  { catch { report_power } }
redirect report_timing_std.txt { catch { report_timing } }
redirect report_qor_std.txt    { catch { report_qor } }

write -format verilog -hierarchy -output switch_4port_std.v
write_sdf switch_4port_std.sdf

exit