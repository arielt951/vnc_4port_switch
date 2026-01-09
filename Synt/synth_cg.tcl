# =================================================================
# 1. SETUP LIBRARY PATHS
# =================================================================
set LIB_PATH "/data/synopsys/lib/saed32nm/ref/CLIBs"
set TLU_PATH "/data/synopsys/lib/saed32nm/ref/tech"

set_host_options -max_cores 4

# =================================================================
# 2. CREATE WORKSPACE LIBRARY
# =================================================================
set TECH_FILE "$TLU_PATH/saed32nm_1p9m.tf"
set REF_LIBS [list \
    "${LIB_PATH}/saed32_hvt.ndm" \
    "${LIB_PATH}/saed32_lvt.ndm" \
    "${LIB_PATH}/saed32_rvt.ndm" \
]

if {[file exists switch_lib_cg.dlib]} {
    file delete -force switch_lib_cg.dlib
}

create_lib -technology $TECH_FILE -ref_libs $REF_LIBS switch_lib_cg.dlib

read_parasitic_tech -tlu $TLU_PATH/saed32nm_1p9m_Cmax.lv.tluplus -name Cmax
read_parasitic_tech -tlu $TLU_PATH/saed32nm_1p9m_Cmin.lv.tluplus -name Cmin

# =================================================================
# 3. READ & ELABORATE
# =================================================================
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

analyze -format sverilog $HDL_FILES
elaborate switch_4port
set_top_module switch_4port

# =================================================================
# 4. CLOCK GATING SETUP (Force Insertion)
# =================================================================
# We removed the 'set_clock_gating_style' because it failed.
# Instead, we will rely on the direct insertion command in Section 6.

# =================================================================
# 5. CONSTRAINTS
# =================================================================
remove_corners -all; remove_modes -all; remove_scenarios -all

create_corner Fast
create_corner Slow
create_mode   FUNC

set_parasitics_parameters -early_spec Cmin -late_spec Cmin -corners {Fast}
set_parasitics_parameters -early_spec Cmax -late_spec Cmax -corners {Slow}

create_scenario -mode FUNC -corner Fast -name FUNC_Fast
create_scenario -mode FUNC -corner Slow -name FUNC_Slow

current_scenario FUNC_Fast
source constraints.sdc

current_scenario FUNC_Slow
source constraints.sdc

# =================================================================
# 6. COMPILE (With EXPLICIT Clock Gating)
# =================================================================
set_auto_floorplan_constraints -core_utilization 0.7 -side_ratio {1 1} -core_offset 2

# FORCE COMMAND: This command physically looks for registers and adds latches.
# We wrap it in 'catch' just in case, but print the result.
puts "--- Attempting to Insert Clock Gating ---"
if { [catch { insert_clock_gating -global } err] } {
    puts "WARNING: insert_clock_gating failed: $err"
} else {
    puts "SUCCESS: insert_clock_gating command executed."
}

# Run Compilation (This cleans up the logic around the new gates)
compile_fusion -to logic_opto
compile_fusion -to final_opto

# =================================================================
# 7. REPORTS & EXPORT
# =================================================================
redirect -file report_timing_cg.txt { report_timing }
redirect -file report_power_cg.txt  { report_power }
redirect -file report_area_cg.txt   { report_area }
redirect -file report_qor_cg.txt    { report_qor }

# SAFER CLOCK GATING REPORT
# We use 'catch' so the script finishes even if this specific report fails.
if { [catch { redirect -file report_clock_gating_cg.txt { report_clock_gating -verbose } } err] } {
    puts "WARNING: report_clock_gating failed or is not supported in this shell: $err"
} else {
    puts "SUCCESS: Clock gating report generated."
}

change_names -rules verilog -hierarchy
write_verilog -hierarchy all switch_4port_netlist_cg.v
write_sdf switch_4port_cg.sdf

save_block -as switch_4port_final_cg
exit