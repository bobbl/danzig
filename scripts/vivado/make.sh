#!/bin/sh

sed -e 's/@0 /@3f80 /' ../../sw/bootloader/tiny.hex > bootloader.hex

/opt/Xilinx/Vivado/2018.3/bin/vivado -nojournal -mode batch -source genesys2_synth.tcl
/opt/Xilinx/Vivado/2018.3/bin/vivado -nojournal -mode batch -source prog.tcl
