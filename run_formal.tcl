# 1. Set App Mode
set_app_mode FPV

# 2. Read Design Files with Relative Paths
# Note: "design/" is added before the RTL files
read_file -format sverilog { \
    design/packet_pkg.sv \
    design/port_if.sv \
    design/FIFO.sv \
    design/parser.sv \
    design/arbiter.sv \
    design/output_mux.sv \
    design/switch_port.sv \
    design/switch_4port.sv \
    verification/assertions.sv \
    formal_binds.sv \
}

# 3. Compile the Top Module
elaborate design/switch_4port

# 4. Set Clocks and Resets
create_clock clk -period 10
create_reset rst_n -sense low

# 5. Run Verification
check_fv