quit -sim

vlib work
vmap work work
vcom -93 ContadorUP.vhd
vsim work.ContadorUP(ifsc_v1)

add wave -divider "Entradas"
add wave reset
add wave clk
add wave up

add wave -divider "Next State"
add wave r_next

add wave -divider "Out State"
add wave r_reg

add wave -divider "Saidas"
add wave saida

force clk 0 0ns, 1 25ns -repeat 50ns


force reset 1
run 20ns
force reset 0

force up "1"
run 50 ns

force up "1"
run 50 ns

force up "0"
run 50 ns

force up "0"
run 50 ns

wave zoom full
