* Packaged LT 1715 20240529 jpd@noqsi.com
*
.include LT1715.cir
*
* Nodes match package pin numbers
*
* 1 +IN A
* 2 -IN A
* 3 +IN B
* 4 -IN B
* 5 Vee
* 6 GND
* 7 OUT B
* 8 OUT A
* 9 +VS
* 10 Vcc
*
*
.subckt lt1715_pkg 1 2 3 4 5 6 7 8 9 10
XA 1 2 10 5 9 6 8 LT1715
XB 3 4 10 5 9 6 7 LT1715
.ends
