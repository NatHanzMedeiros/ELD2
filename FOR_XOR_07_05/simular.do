quit -sim
vlib work
vmap work work

vsim work.for_xor_gerador(ifsc_v1)

add wave -divider "Entradas"
add wave A
add wave -divider "FioCarregador"
add wave P
add wave -divider "Saidas"
add wave B

force A "00000111"
run 100ns

force A "00001111"
run 100ns

wave zoom full