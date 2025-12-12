# 1. Define the Clock (100 MHz = 10ns period)
create_clock -name clk -period 10 [get_ports clk]

# 2. Input/Output Delays (Standard assumption: 20% of clock cycle)
set_input_delay  -clock clk 2.0 [all_inputs]
set_output_delay -clock clk 2.0 [all_outputs]

# 3. Drive Strength & Load (Simulate real wires)
set_load 0.1 [all_outputs]
set_driving_cell -lib_cell BUFX2 -library [get_libs] [all_inputs]

# 4. Don't touch the clock and reset networks (Let backend handle them)
set_dont_touch_network [get_ports clk]
set_dont_touch_network [get_ports rst_n]