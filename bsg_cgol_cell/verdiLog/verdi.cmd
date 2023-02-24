simSetSimulator "-vcssv" -exec \
           "/home/kangll/ee477-designs-final-project/bsg_cgol_cell/build/sim-rtl-rundir/simv" \
           -args
debImport "-full64" "-dbdir" \
          "/home/kangll/ee477-designs-final-project/bsg_cgol_cell/build/sim-rtl-rundir/simv.daidir"
debLoadSimResult \
           /home/kangll/ee477-designs-final-project/bsg_cgol_cell/build/sim-rtl-rundir/waveform.fsdb
wvCreateWindow
srcHBSelect "bsg_cgol_cell_tb.DUT" -win $_nTrace1
srcSetScope -win $_nTrace1 "bsg_cgol_cell_tb.DUT" -delim "."
srcHBSelect "bsg_cgol_cell_tb.DUT" -win $_nTrace1
srcHBSelect "bsg_cgol_cell_tb.DUT" -win $_nTrace1
srcSignalViewSelect "bsg_cgol_cell_tb.DUT.clk_i"
srcSignalViewSelect "bsg_cgol_cell_tb.DUT.clk_i" "bsg_cgol_cell_tb.DUT.en_i"
srcSignalViewSelect "bsg_cgol_cell_tb.DUT.clk_i" "bsg_cgol_cell_tb.DUT.en_i" \
           "bsg_cgol_cell_tb.DUT.data_i\[7:0\]"
srcSignalViewSelect "bsg_cgol_cell_tb.DUT.clk_i" "bsg_cgol_cell_tb.DUT.en_i" \
           "bsg_cgol_cell_tb.DUT.data_i\[7:0\]" "bsg_cgol_cell_tb.DUT.data_o"
srcSignalViewSelect "bsg_cgol_cell_tb.DUT.clk_i" "bsg_cgol_cell_tb.DUT.en_i" \
           "bsg_cgol_cell_tb.DUT.data_i\[7:0\]" "bsg_cgol_cell_tb.DUT.data_o" \
           "bsg_cgol_cell_tb.DUT.update_i"
srcSignalViewSelect "bsg_cgol_cell_tb.DUT.clk_i" "bsg_cgol_cell_tb.DUT.en_i" \
           "bsg_cgol_cell_tb.DUT.data_i\[7:0\]" "bsg_cgol_cell_tb.DUT.data_o" \
           "bsg_cgol_cell_tb.DUT.update_i" "bsg_cgol_cell_tb.DUT.update_val_i"
srcSignalViewSelect "bsg_cgol_cell_tb.DUT.clk_i" "bsg_cgol_cell_tb.DUT.en_i" \
           "bsg_cgol_cell_tb.DUT.data_i\[7:0\]" "bsg_cgol_cell_tb.DUT.data_o" \
           "bsg_cgol_cell_tb.DUT.update_i" "bsg_cgol_cell_tb.DUT.update_val_i" \
           "bsg_cgol_cell_tb.DUT.num_of_alive\[3:0\]"
srcSignalViewSelect "bsg_cgol_cell_tb.DUT.clk_i" "bsg_cgol_cell_tb.DUT.en_i" \
           "bsg_cgol_cell_tb.DUT.data_i\[7:0\]" "bsg_cgol_cell_tb.DUT.data_o" \
           "bsg_cgol_cell_tb.DUT.update_i" "bsg_cgol_cell_tb.DUT.update_val_i" \
           "bsg_cgol_cell_tb.DUT.num_of_alive\[3:0\]" \
           "bsg_cgol_cell_tb.DUT.state"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 5755.547217 -snap {("G1" 7)}
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 90565.228268 -snap {("G1" 6)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 334541.181989 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 320575.515947 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 325019.136961 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 329885.959975 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 333059.974984 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 334752.782989 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 334117.979987 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 334541.181989 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 334964.383990 -snap {("G1" 1)}
debReload
wvSetCursor -win $_nWave2 292432.582864 -snap {("G1" 2)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 355537.054409 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 351046.060038 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 354788.555347 -snap {("G1" 4)}
debReload
wvSetCursor -win $_nWave2 174782.426517 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 5)}
srcHBSelect "bsg_cgol_cell_tb.trace_replay" -win $_nTrace1
srcSetScope -win $_nTrace1 "bsg_cgol_cell_tb.trace_replay" -delim "."
srcHBSelect "bsg_cgol_cell_tb.trace_replay" -win $_nTrace1
srcSignalViewSelect "bsg_cgol_cell_tb.trace_replay.data_i\[9:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "bsg_cgol_cell_tb.ROM" -win $_nTrace1
srcHBSelect "bsg_cgol_cell_tb.ROM" -win $_nTrace1
srcSetScope -win $_nTrace1 "bsg_cgol_cell_tb.ROM" -delim "."
srcHBSelect "bsg_cgol_cell_tb.ROM" -win $_nTrace1
srcSignalViewSelect "bsg_cgol_cell_tb.ROM.addr_i\[31:0\]"
srcSignalViewSelect "bsg_cgol_cell_tb.ROM.addr_i\[31:0\]" \
           "bsg_cgol_cell_tb.ROM.data_o\[13:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetRadix -win $_nWave2 -format Bin
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 331317.933083 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 331574.577861 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 312685.522201 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 291435.334584 -snap {("G1" 6)}
debReload
wvSetCursor -win $_nWave2 360232.051282 -snap {("G1" 2)}
debReload
wvSetCursor -win $_nWave2 295155.597248 -snap {("G1" 3)}
debExit
