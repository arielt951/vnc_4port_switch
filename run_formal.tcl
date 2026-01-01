# 1. Read Design Files with SVA enabled
read_file -format sverilog -sva { \
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

# 2. Compile Top Module
elaborate switch_4port

# 3. Set Clocks and Resets
create_clock clk -period 10
create_reset rst_n -sense low

# 4. Run Verification
check_fv