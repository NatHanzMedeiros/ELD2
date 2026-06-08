transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/nathan.mc05/Documentos/ELETRONICA DIGITAL 2/ATIVADES EM AULA/Lista1_VHDL_Circuitos_Sequenciais/Questao5/ContadorUpLoad.vhd}

