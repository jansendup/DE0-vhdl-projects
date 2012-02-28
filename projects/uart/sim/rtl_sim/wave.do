onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group {Clk & rst} -label sample_tick /uart_transmitter_tb/sample_tick
add wave -noupdate -group {Clk & rst} -label Clk /uart_transmitter_tb/clk
add wave -noupdate -group TX -label tx_data_in /uart_transmitter_tb/data_in
add wave -noupdate -group TX -label tx_start /uart_transmitter_tb/tx_start
add wave -noupdate -group TX -label tx_done_tick /uart_transmitter_tb/tx_done_tick
add wave -noupdate -group TX -label TX /uart_transmitter_tb/tx
add wave -noupdate -group TX_REG -label shift_nLoad /uart_transmitter_tb/dut/t_shift_reg/shift_nload_i
add wave -noupdate -group TX_REG -label shift_en /uart_transmitter_tb/dut/t_shift_reg/shift_en_i
add wave -noupdate -group TX_REG -label sreg /uart_transmitter_tb/dut/t_shift_reg/reg
add wave -noupdate -group Config -label par_en /uart_transmitter_tb/par_en
add wave -noupdate -group Config -label Par_odd_nEeven /uart_transmitter_tb/par_odd_neven
add wave -noupdate -group Counters -group SC -label sc_cnt_en /uart_transmitter_tb/dut/sc_cnt_en
add wave -noupdate -group Counters -group SC -label sc_load /uart_transmitter_tb/dut/sc_load
add wave -noupdate -group Counters -group SC -label sc_cnt /uart_transmitter_tb/dut/sc_cnt
add wave -noupdate -group Counters -expand -group BC -label bc_cnt_en /uart_transmitter_tb/dut/bc_cnt_en
add wave -noupdate -group Counters -expand -group BC -label bc_load /uart_transmitter_tb/dut/bc_load
add wave -noupdate -group Counters -expand -group BC -label bc_cnt /uart_transmitter_tb/dut/bc_cnt
add wave -noupdate -label state /uart_transmitter_tb/dut/uart_transmitter_fsm_1/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
configure wave -namecolwidth 305
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {856 ps}
