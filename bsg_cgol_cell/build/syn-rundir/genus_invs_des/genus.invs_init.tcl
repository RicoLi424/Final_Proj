################################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 02/24/2023 16:52:21
#
################################################################################
if { ![is_common_ui_mode] } { error "ERROR: This script requires common_ui to be active."}

read_mmmc genus_invs_des/genus.mmmc.tcl

read_physical -lef {/home/kangll/ee477-designs-final-project/bsg_cgol_cell/build/tech-sky130-cache/sky130_fd_sc_hd__nom.tlef /home/projects/ee477.2023wtr/cad/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef}

read_netlist genus_invs_des/genus.v.gz

init_design
