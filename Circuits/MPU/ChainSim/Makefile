# !@#$ kicad doesn't install kicad-cli in a sane place
CLI:=$(shell locate kicad-cli)

%.cir : %.kicad_sch
	$(CLI) sch export netlist --output $@ --format spice $<

FastSim : FastSim.cir
	ngspice FastSim.cir

FastSim.cir : FastShaper.kicad_sch PulseCapture.kicad_sch

