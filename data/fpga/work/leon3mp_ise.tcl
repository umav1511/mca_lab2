project new leon3mp.ise
project set family "Virtex6"
project set device XC6VLX240T
project set speed -1
project set package ff1156
puts "Adding files to project"
lib_vhdl new grlib
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/stdlib/version.vhd" -lib_vhdl grlib
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/stdlib/version.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/stdlib/config_types.vhd" -lib_vhdl grlib
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/stdlib/config_types.vhd"
xfile add "grlib_config.vhd" -lib_vhdl grlib
puts "grlib_config.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/stdlib/stdlib.vhd" -lib_vhdl grlib
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/stdlib/stdlib.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/sparc/sparc.vhd" -lib_vhdl grlib
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/sparc/sparc.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/modgen/multlib.vhd" -lib_vhdl grlib
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/modgen/multlib.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/amba.vhd" -lib_vhdl grlib
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/amba.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/devices.vhd" -lib_vhdl grlib
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/devices.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/defmst.vhd" -lib_vhdl grlib
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/defmst.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/apbctrl.vhd" -lib_vhdl grlib
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/apbctrl.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/ahbctrl.vhd" -lib_vhdl grlib
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/ahbctrl.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/dma2ahb_pkg.vhd" -lib_vhdl grlib
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/dma2ahb_pkg.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/dma2ahb.vhd" -lib_vhdl grlib
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/dma2ahb.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/ahbmst.vhd" -lib_vhdl grlib
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/grlib/amba/ahbmst.vhd"
lib_vhdl new secureip
lib_vhdl new unisim
lib_vhdl new synplify
lib_vhdl new techmap
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/gencomp/gencomp.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/gencomp/gencomp.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/gencomp/netcomp.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/gencomp/netcomp.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/inferred/memory_inferred.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/inferred/memory_inferred.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/inferred/ddr_inferred.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/inferred/ddr_inferred.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/inferred/mul_inferred.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/inferred/mul_inferred.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/inferred/ddr_phy_inferred.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/inferred/ddr_phy_inferred.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/inferred/ddrphy_datapath.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/inferred/ddrphy_datapath.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/memory_virtex.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/memory_virtex.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/memory_unisim.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/memory_unisim.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/buffer_unisim.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/buffer_unisim.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/pads_unisim.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/pads_unisim.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/clkgen_virtex.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/clkgen_virtex.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/clkgen_unisim.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/clkgen_unisim.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/tap_unisim.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/tap_unisim.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/ddr_unisim.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/ddr_unisim.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/ddr_phy_unisim.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/ddr_phy_unisim.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/sysmon_unisim.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/sysmon_unisim.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/mul_unisim.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/mul_unisim.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/spictrl_unisim.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/unisim/spictrl_unisim.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/allclkgen.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/allclkgen.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/allddr.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/allddr.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/allmem.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/allmem.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/allmul.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/allmul.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/allpads.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/allpads.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/alltap.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/alltap.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkgen.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkgen.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkmux.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkmux.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkinv.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkinv.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkand.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkand.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/ddr_ireg.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/ddr_ireg.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/ddr_oreg.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/ddr_oreg.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/ddrphy.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/ddrphy.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram64.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram64.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram_2p.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram_2p.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram_dp.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram_dp.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncfifo_2p.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncfifo_2p.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/regfile_3p.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/regfile_3p.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/tap.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/tap.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/techbuf.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/techbuf.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/nandtree.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/nandtree.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkpad.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkpad.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkpad_ds.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkpad_ds.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/inpad.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/inpad.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/inpad_ds.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/inpad_ds.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/iodpad.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/iodpad.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/iopad.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/iopad.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/iopad_ds.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/iopad_ds.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/lvds_combo.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/lvds_combo.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/odpad.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/odpad.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/outpad.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/outpad.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/outpad_ds.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/outpad_ds.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/toutpad.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/toutpad.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/skew_outpad.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/skew_outpad.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/grlfpw_net.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/grlfpw_net.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/grfpw_net.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/grfpw_net.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/leon4_net.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/leon4_net.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/mul_61x61.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/mul_61x61.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/cpu_disas_net.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/cpu_disas_net.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/ringosc.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/ringosc.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/system_monitor.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/system_monitor.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/grgates.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/grgates.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/inpad_ddr.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/inpad_ddr.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/outpad_ddr.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/outpad_ddr.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/iopad_ddr.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/iopad_ddr.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram128bw.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram128bw.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram256bw.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram256bw.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram128.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram128.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram156bw.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram156bw.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/techmult.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/techmult.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/spictrl_net.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/spictrl_net.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/scanreg.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/scanreg.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncrambw.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncrambw.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram_2pbw.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncram_2pbw.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/sdram_phy.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/sdram_phy.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncreg.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/syncreg.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkinv.vhd" -lib_vhdl techmap
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/techmap/maps/clkinv.vhd"
lib_vhdl new eth
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/comp/ethcomp.vhd" -lib_vhdl eth
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/comp/ethcomp.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/greth_pkg.vhd" -lib_vhdl eth
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/greth_pkg.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/eth_rstgen.vhd" -lib_vhdl eth
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/eth_rstgen.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/eth_edcl_ahb_mst.vhd" -lib_vhdl eth
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/eth_edcl_ahb_mst.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/eth_ahb_mst.vhd" -lib_vhdl eth
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/eth_ahb_mst.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/greth_tx.vhd" -lib_vhdl eth
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/greth_tx.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/greth_rx.vhd" -lib_vhdl eth
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/greth_rx.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/grethc.vhd" -lib_vhdl eth
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/core/grethc.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/wrapper/greth_gen.vhd" -lib_vhdl eth
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/wrapper/greth_gen.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/wrapper/greth_gbit_gen.vhd" -lib_vhdl eth
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/eth/wrapper/greth_gbit_gen.vhd"
lib_vhdl new opencores
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/opencores/i2c/i2c_master_bit_ctrl.vhd" -lib_vhdl opencores
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/opencores/i2c/i2c_master_bit_ctrl.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/opencores/i2c/i2c_master_byte_ctrl.vhd" -lib_vhdl opencores
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/opencores/i2c/i2c_master_byte_ctrl.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/opencores/i2c/i2coc.vhd" -lib_vhdl opencores
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/opencores/i2c/i2coc.vhd"
lib_vhdl new gaisler
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/arith/arith.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/arith/arith.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/arith/mul32.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/arith/mul32.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/arith/div32.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/arith/div32.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/memctrl/memctrl.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/memctrl/memctrl.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/memctrl/sdctrl.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/memctrl/sdctrl.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/memctrl/sdctrl64.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/memctrl/sdctrl64.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/memctrl/sdmctrl.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/memctrl/sdmctrl.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/memctrl/srctrl.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/memctrl/srctrl.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmuconfig.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmuconfig.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmuiface.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmuiface.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/libmmu.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/libmmu.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmutlbcam.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmutlbcam.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmulrue.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmulrue.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmulru.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmulru.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmutlb.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmutlb.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmutw.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmutw.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmu.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/srmmu/mmu.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/leon3/leon3.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/leon3/leon3.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/leon3/grfpushwx.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/leon3/grfpushwx.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/irqmp/irqmp.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/irqmp/irqmp.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/l2cache/v2-pkg/l2cache.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/l2cache/v2-pkg/l2cache.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/misc.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/misc.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/rstgen.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/rstgen.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/gptimer.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/gptimer.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahbram.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahbram.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahbdpram.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahbdpram.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahbtrace_mmb.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahbtrace_mmb.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahbtrace_mb.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahbtrace_mb.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahbtrace.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahbtrace.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/grgpio.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/grgpio.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahbstat.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahbstat.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/logan.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/logan.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/apbps2.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/apbps2.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/charrom_package.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/charrom_package.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/charrom.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/charrom.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/apbvga.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/apbvga.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/svgactrl.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/svgactrl.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/grsysmon.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/grsysmon.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/grgpreg.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/grgpreg.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahb_mst_iface.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/ahb_mst_iface.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/grgprbank.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/misc/grgprbank.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/net/net.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/net/net.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/pci.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/pci.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/pcipads.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/pcipads.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/pcitrace/pcitrace.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/pcitrace/pcitrace.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/pcilib.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/pcilib.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/pciahbmst.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/pciahbmst.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/pci_target.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/pci_target.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/pci_mt.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/pci_mt.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/dmactrl.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/dmactrl.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/pci_mtf.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/pci_mtf.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/pcidma.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/pci/grpci1/pcidma.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/uart/uart.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/uart/uart.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/uart/libdcom.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/uart/libdcom.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/uart/apbuart.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/uart/apbuart.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/uart/dcom.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/uart/dcom.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/uart/dcom_uart.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/uart/dcom_uart.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/uart/ahbuart.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/uart/ahbuart.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/jtag.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/jtag.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/libjtagcom.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/libjtagcom.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/jtagcom.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/jtagcom.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/ahbjtag.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/ahbjtag.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/ahbjtag_bsd.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/ahbjtag_bsd.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/bscanregs.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/bscanregs.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/bscanregsbd.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/bscanregsbd.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/jtagcom2.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/jtag/jtagcom2.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/ethernet_mac.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/ethernet_mac.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/greth.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/greth.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/greth_mb.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/greth_mb.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/greth_gbit.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/greth_gbit.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/greth_gbit_mb.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/greth_gbit_mb.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/grethm.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/grethm.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/rgmii.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/greth/rgmii.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddrpkg.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddrpkg.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddrintpkg.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddrintpkg.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddrphy_wrap.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddrphy_wrap.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddrspa.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddrspa.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr2spa.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr2spa.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr2buf.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr2buf.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr2spax.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr2spax.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr2spax_ahb.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr2spax_ahb.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr2spax_ddr.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr2spax_ddr.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr1spax.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr1spax.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr1spax_ddr.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ddr1spax_ddr.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ahb2mig_series7_pkg.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ahb2mig_series7_pkg.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ahb2mig_series7.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ahb2mig_series7.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ahb2avl_async.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ahb2avl_async.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ahb2avl_async_be.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/ddr/ahb2avl_async_be.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2c.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2c.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2cmst.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2cmst.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2cmst_gen.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2cmst_gen.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2cslv.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2cslv.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2c2ahbx.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2c2ahbx.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2c2ahb.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2c2ahb.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2c2ahb_apb.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2c2ahb_apb.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2c2ahb_gen.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2c2ahb_gen.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2c2ahb_apb_gen.vhd" -lib_vhdl gaisler
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/gaisler/i2c/i2c2ahb_apb_gen.vhd"
lib_vhdl new esa
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/esa/memoryctrl/memoryctrl.vhd" -lib_vhdl esa
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/esa/memoryctrl/memoryctrl.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/esa/memoryctrl/mctrl.vhd" -lib_vhdl esa
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/esa/memoryctrl/mctrl.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/esa/pci/pcicomp.vhd" -lib_vhdl esa
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/esa/pci/pcicomp.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/esa/pci/pci_arb_pkg.vhd" -lib_vhdl esa
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/esa/pci/pci_arb_pkg.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/esa/pci/pci_arb.vhd" -lib_vhdl esa
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/esa/pci/pci_arb.vhd"
xfile add "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/esa/pci/pciarb.vhd" -lib_vhdl esa
puts "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/lib/esa/pci/pciarb.vhd"
lib_vhdl new fmf
lib_vhdl new rvex
xfile add "rvex-lib/rvex/common/common_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/common/common_pkg.vhd"
xfile add "rvex-lib/rvex/utils/utils_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/utils/utils_pkg.vhd"
xfile add "rvex-lib/rvex/utils/utils_sync.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/utils/utils_sync.vhd"
xfile add "rvex-lib/rvex/utils/utils_fracDiv.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/utils/utils_fracDiv.vhd"
xfile add "rvex-lib/rvex/utils/utils_crc.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/utils/utils_crc.vhd"
xfile add "rvex-lib/rvex/utils/utils_uart_rxBit.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/utils/utils_uart_rxBit.vhd"
xfile add "rvex-lib/rvex/utils/utils_uart_rxByte.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/utils/utils_uart_rxByte.vhd"
xfile add "rvex-lib/rvex/utils/utils_uart_tx.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/utils/utils_uart_tx.vhd"
xfile add "rvex-lib/rvex/utils/utils_uart.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/utils/utils_uart.vhd"
xfile add "rvex-lib/rvex/utils/utils_optiprims.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/utils/utils_optiprims.vhd"
xfile add "rvex-lib/rvex/utils/simUtils_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/utils/simUtils_pkg.vhd"
xfile add "rvex-lib/rvex/utils/simUtils_mem_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/utils/simUtils_mem_pkg.vhd"
xfile add "rvex-lib/rvex/utils/simUtils_scanner_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/utils/simUtils_scanner_pkg.vhd"
xfile add "rvex-lib/rvex/bus/bus_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/bus/bus_pkg.vhd"
xfile add "rvex-lib/rvex/bus/bus_addrConv_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/bus/bus_addrConv_pkg.vhd"
xfile add "rvex-lib/rvex/bus/bus_ramBlock_singlePort.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/bus/bus_ramBlock_singlePort.vhd"
xfile add "rvex-lib/rvex/bus/bus_ramBlock.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/bus/bus_ramBlock.vhd"
xfile add "rvex-lib/rvex/bus/bus_arbiter.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/bus/bus_arbiter.vhd"
xfile add "rvex-lib/rvex/bus/bus_demux.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/bus/bus_demux.vhd"
xfile add "rvex-lib/rvex/bus/bus_crossClock.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/bus/bus_crossClock.vhd"
xfile add "rvex-lib/rvex/bus/bus_stage.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/bus/bus_stage.vhd"
xfile add "rvex-lib/rvex/core/core_version_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_version_pkg.vhd"
xfile add "rvex-lib/rvex/core/core_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_pkg.vhd"
xfile add "rvex-lib/rvex/core/core_pipeline_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_pipeline_pkg.vhd"
xfile add "rvex-lib/rvex/core/core_ctrlRegs_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_ctrlRegs_pkg.vhd"
xfile add "rvex-lib/rvex/core/core_intIface_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_intIface_pkg.vhd"
xfile add "rvex-lib/rvex/core/core_opcodeDatapath_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_opcodeDatapath_pkg.vhd"
xfile add "rvex-lib/rvex/core/core_opcodeAlu_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_opcodeAlu_pkg.vhd"
xfile add "rvex-lib/rvex/core/core_opcodeBranch_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_opcodeBranch_pkg.vhd"
xfile add "rvex-lib/rvex/core/core_opcodeMemory_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_opcodeMemory_pkg.vhd"
xfile add "rvex-lib/rvex/core/core_opcodeMultiplier_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_opcodeMultiplier_pkg.vhd"
xfile add "rvex-lib/rvex/core/core_opcode_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_opcode_pkg.vhd"
xfile add "rvex-lib/rvex/core/core_trap_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_trap_pkg.vhd"
xfile add "rvex-lib/rvex/core/core_asDisas_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_asDisas_pkg.vhd"
xfile add "rvex-lib/rvex/core/core_alu.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_alu.vhd"
xfile add "rvex-lib/rvex/core/core_brku.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_brku.vhd"
xfile add "rvex-lib/rvex/core/core_br.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_br.vhd"
xfile add "rvex-lib/rvex/core/core_cfgCtrl_decode.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_cfgCtrl_decode.vhd"
xfile add "rvex-lib/rvex/core/core_cfgCtrl.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_cfgCtrl.vhd"
xfile add "rvex-lib/rvex/core/core_forward.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_forward.vhd"
xfile add "rvex-lib/rvex/core/core_contextPipelaneIFace.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_contextPipelaneIFace.vhd"
xfile add "rvex-lib/rvex/core/core_contextRegLogic.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_contextRegLogic.vhd"
xfile add "rvex-lib/rvex/core/core_ctrlRegs_busSwitch.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_ctrlRegs_busSwitch.vhd"
xfile add "rvex-lib/rvex/core/core_ctrlRegs_contextLaneSwitch.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_ctrlRegs_contextLaneSwitch.vhd"
xfile add "rvex-lib/rvex/core/core_ctrlRegs.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_ctrlRegs.vhd"
xfile add "rvex-lib/rvex/core/core_dmemSwitch.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_dmemSwitch.vhd"
xfile add "rvex-lib/rvex/core/core_globalRegLogic.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_globalRegLogic.vhd"
xfile add "rvex-lib/rvex/core/core_gpRegs_mem.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_gpRegs_mem.vhd"
xfile add "rvex-lib/rvex/core/core_gpRegs_sim.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_gpRegs_sim.vhd"
xfile add "rvex-lib/rvex/core/core_gpRegs_simple.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_gpRegs_simple.vhd"
xfile add "rvex-lib/rvex/core/core_gpRegs.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_gpRegs.vhd"
xfile add "rvex-lib/rvex/core/core_limmRouting.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_limmRouting.vhd"
xfile add "rvex-lib/rvex/core/core_memu.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_memu.vhd"
xfile add "rvex-lib/rvex/core/core_mulu.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_mulu.vhd"
xfile add "rvex-lib/rvex/core/core_pipelane.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_pipelane.vhd"
xfile add "rvex-lib/rvex/core/core_stopBitRouting.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_stopBitRouting.vhd"
xfile add "rvex-lib/rvex/core/core_trapRouting.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_trapRouting.vhd"
xfile add "rvex-lib/rvex/core/core_pipelanes.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_pipelanes.vhd"
xfile add "rvex-lib/rvex/core/core_instructionBuffer.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_instructionBuffer.vhd"
xfile add "rvex-lib/rvex/core/core_trace.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core_trace.vhd"
xfile add "rvex-lib/rvex/core/core.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/core/core.vhd"
xfile add "rvex-lib/rvex/cache/cache_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache_pkg.vhd"
xfile add "rvex-lib/rvex/cache/cache_data_blockData.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache_data_blockData.vhd"
xfile add "rvex-lib/rvex/cache/cache_data_blockTag.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache_data_blockTag.vhd"
xfile add "rvex-lib/rvex/cache/cache_data_blockValid.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache_data_blockValid.vhd"
xfile add "rvex-lib/rvex/cache/cache_data_mainCtrl.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache_data_mainCtrl.vhd"
xfile add "rvex-lib/rvex/cache/cache_data_block.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache_data_block.vhd"
xfile add "rvex-lib/rvex/cache/cache_data.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache_data.vhd"
xfile add "rvex-lib/rvex/cache/cache_instr_blockData.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache_instr_blockData.vhd"
xfile add "rvex-lib/rvex/cache/cache_instr_blockTag.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache_instr_blockTag.vhd"
xfile add "rvex-lib/rvex/cache/cache_instr_blockValid.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache_instr_blockValid.vhd"
xfile add "rvex-lib/rvex/cache/cache_instr_missCtrl.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache_instr_missCtrl.vhd"
xfile add "rvex-lib/rvex/cache/cache_instr_block.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache_instr_block.vhd"
xfile add "rvex-lib/rvex/cache/cache_instr.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache_instr.vhd"
xfile add "rvex-lib/rvex/cache/cache.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/cache/cache.vhd"
xfile add "rvex-lib/rvex/gaisler/bus2ahb.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/gaisler/bus2ahb.vhd"
xfile add "rvex-lib/rvex/gaisler/ahb2bus.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/gaisler/ahb2bus.vhd"
xfile add "rvex-lib/rvex/gaisler/ahb_snoop.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/gaisler/ahb_snoop.vhd"
xfile add "rvex-lib/rvex/periph/periph_uart_packetHandler.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/periph/periph_uart_packetHandler.vhd"
xfile add "rvex-lib/rvex/periph/periph_uart_packetBuffer.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/periph/periph_uart_packetBuffer.vhd"
xfile add "rvex-lib/rvex/periph/periph_uart_packetControl.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/periph/periph_uart_packetControl.vhd"
xfile add "rvex-lib/rvex/periph/periph_uart_fifo.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/periph/periph_uart_fifo.vhd"
xfile add "rvex-lib/rvex/periph/periph_uart_busIface.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/periph/periph_uart_busIface.vhd"
xfile add "rvex-lib/rvex/periph/periph_uart_switch.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/periph/periph_uart_switch.vhd"
xfile add "rvex-lib/rvex/periph/periph_uart.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/periph/periph_uart.vhd"
xfile add "rvex-lib/rvex/periph/periph_irq.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/periph/periph_irq.vhd"
xfile add "rvex-lib/rvex/periph/periph_trace.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/periph/periph_trace.vhd"
xfile add "rvex-lib/rvex/system/rvsys_grlib_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/system/rvsys_grlib_pkg.vhd"
xfile add "rvex-lib/rvex/system/rvsys_grlib_rctrl.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/system/rvsys_grlib_rctrl.vhd"
xfile add "rvex-lib/rvex/system/rvsys_grlib.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/system/rvsys_grlib.vhd"
xfile add "rvex-lib/rvex/system/rvsys_standalone_pkg.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/system/rvsys_standalone_pkg.vhd"
xfile add "rvex-lib/rvex/system/rvsys_standalone_core.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/system/rvsys_standalone_core.vhd"
xfile add "rvex-lib/rvex/system/rvsys_standalone_cachedCore.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/system/rvsys_standalone_cachedCore.vhd"
xfile add "rvex-lib/rvex/system/rvsys_standalone.vhd" -lib_vhdl rvex
puts "rvex-lib/rvex/system/rvsys_standalone.vhd"
lib_vhdl new work
xfile add "leon3mp.ucf"
xfile add "ahb2mig_ml605.vhd" -lib_vhdl work
puts "ahb2mig_ml605.vhd"
xfile add "config.vhd" -lib_vhdl work
puts "config.vhd"
xfile add "ahbrom.vhd" -lib_vhdl work
puts "ahbrom.vhd"
xfile add "svga2ch7301c.vhd" -lib_vhdl work
puts "svga2ch7301c.vhd"
xfile add "gtxclk.vhd" -lib_vhdl work
puts "gtxclk.vhd"
xfile add "ptag.vhd" -lib_vhdl work
puts "ptag.vhd"
xfile add "gracectrl.vhd" -lib_vhdl work
puts "gracectrl.vhd"
xfile add "leon3mp.vhd" -lib_vhdl work
puts "leon3mp.vhd"
project set top "rtl" "leon3mp"
project set "Bus Delimiter" ()
project set "FSM Encoding Algorithm" None
project set "Pack I/O Registers into IOBs" yes
project set "Verilog Macros" ""
project set "Other XST Command Line Options" "-uc leon3mp.xcf" -process "Synthesize - XST"
project set "Allow Unmatched LOC Constraints" true -process "Translate"
project set "Macro Search Path" "/home/user/workspace/rvex-rewrite/grlib/grlib-gpl-1.3.7-b4144/netlists/xilinx/Virtex4" -process "Translate"
project set "Pack I/O Registers/Latches into IOBs" {For Inputs and Outputs}
project set "Other MAP Command Line Options" "" -process Map
project set "Drive Done Pin High" true -process "Generate Programming File"
project set "Create ReadBack Data Files" true -process "Generate Programming File"
project set "Create Mask File" true -process "Generate Programming File"
project set "Run Design Rules Checker (DRC)" false -process "Generate Programming File"
project close
exit
