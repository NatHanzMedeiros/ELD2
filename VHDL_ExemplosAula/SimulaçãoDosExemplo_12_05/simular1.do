quit -sim


vlib work
vmap work work
vcom -93 exemplo1.vhd
vsim work.exemplo1(ifsc_v1)

add wave -divider "Entradas"
add wave reset
add wave clk

add wave -divider "Saidas"
add wave q
add wave max_pulse

force clk 0 0ns, 1 25ns -repeat 50ns

force reset "1"
run 20ns
force reset "0"

run 1000ns

wave zoom full