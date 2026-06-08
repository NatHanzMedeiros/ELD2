quit -sim


vlib work
vmap work work
vcom -93 exemplo3.vhd
vsim work.exemplo3(ifsc_v1)

add wave -divider "Entradas"
add wave reset
add wave clk
add wave d


add wave -divider "Interno"
add wave r_reg

add wave -divider "Saidas"
add wave q

force clk 0 0ns, 1 25ns -repeat 50ns

force reset "1"
run 20ns
force reset "0"

force d 0 0ns, 1 70ns -repeat 140ns

run 1000ns

wave zoom full