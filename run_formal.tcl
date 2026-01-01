# 1. Set Mode to Formal Property Verification
set_app_mode FPV

# 2. Read Design Files (Order Matters!)
read_file -format sverilog { \
    packet_pkg.sv \
    fifo.sv \
    switch_port.sv \
    arbiter.sv \
    switch_4port.sv \
    assertions.sv \
    formal_binds.sv \
}

# 3. Set the Top Module
set_top switch_4port

# 4. Define Clock and Reset
# (Adjust period if needed, but 10 is standard)
create_clock clk -period 10
create_reset rst_n -sense low

# 5. Compile and Run
go_analyze
go_compile
go_verify