transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+clocking  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clocking xil_defaultlib.glbl

do {clocking.udo}

run 1000ns

endsim

quit -force
