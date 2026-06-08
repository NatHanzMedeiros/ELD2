quit -sim

vlib work
vmap work work
vcom -93 ContadorArb.vhd
vsim work.ContadorArb(ifsc_v1)

add wave -divider "Entradas"
add wave reset
add wave clk
add wave d


add wave -divider "Next State"
add wave r_next

add wave -divider "Out State"
add wave r_reg

add wave -divider "Saidas"
add wave q

force clk 0 0ns, 1 25ns -repeat 50ns


force reset 1
run 20ns
force reset 0


force d "000"
run 50 ns

force d "011"
run 50 ns

force d "100"
run 50 ns

force d "101"
run 50 ns

force d "111"
run 50 ns

force d "110"
run 50 ns


wave zoom full
