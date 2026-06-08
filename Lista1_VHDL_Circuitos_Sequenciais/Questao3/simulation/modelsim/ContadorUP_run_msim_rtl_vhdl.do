transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aluno/Documentos/Lista1_VHDL_Circuitos_Sequenciais/Questao3/ContadorUP.vhd}

