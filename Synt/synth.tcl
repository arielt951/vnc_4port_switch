# =================================================================
# 1. SETUP & SUPPRESSION
# =================================================================
# Suppress strict physical errors (Site rows, etc.)
suppress_message {OPT-1006 OPT-1007 LGL-397 FLW-2543 FLW-1762 CMD-109}

# Define Libraries
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
# 2. READ & ELABORATE
# =================================================================
analyze -format sverilog $HDL_FILES
elaborate switch_4port
set_top_module switch_4port

# Apply Constraints
source constraints.sdc

# =================================================================
# 3. COMPILE
# =================================================================
# We use the legacy 'compile' command. 
# It is deprecated in Fusion Compiler but is the only one that 
# works with your logic-only library.
compile 

# =================================================================
# 4. REPORTS (The Goal)
# =================================================================
# We wrap these in catch to ensure you get partial results if one fails
redirect report_area_std.txt   { catch { report_area } }
redirect report_power_std.txt  { catch { report_power } }
redirect report_timing_std.txt { catch { report_timing } }
redirect report_qor_std.txt    { catch { report_qor } }

# Write the final netlist
write -format verilog -hierarchy -output switch_4port_std.v
write_sdf switch_4port_std.sdf

exit