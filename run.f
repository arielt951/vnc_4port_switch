# 1. SEARCH PATHS (Crucial for includes to work)
# This allows packet_pkg.sv (in design/) to find driver.sv (in verification/)
+incdir+design
+incdir+verification

# 2. PACKAGES (Must be first)
design/packet_pkg.sv

# 3. INTERFACES
design/port_if.sv

# 4. RTL (Hardware)
design/FIFO.sv
design/parser.sv
design/arbiter.sv
design/output_mux.sv
design/switch_port.sv
design/switch_4port.sv

# 5. TESTBENCH (Sanity Check)
verification/vc_test.sv

# 6. FUTURE TESTBENCH (Keep commented until needed)
# verification/switch_test.sv


// switch_test.sv
//switch_simple_tb.sv
//switch_complex_tb.sv
//switch_types_tb.sv
//switch_collision_tb.sv 