quit -sim

vlib work
vmap work work
vcom -93 deslocador.vhd
vsim work.deslocador(ifsc_v1)

add wave -divider "Entradas"
add wave reset
add wave clk
add wave ctrl
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


force ctrl 11
force d 1000
run 50ns


force ctrl 01
run 50ns


force ctrl 10
run 50ns


force ctrl 00
run 50ns

wave zoom full
