* Dual ADA4805 in MSOP 20240529 jpd@noqsi.com
*
.include ADA4805.cir
*
* Nodes match package pin numbers
*
* 1 Vout1
* 2 -IN1
* 3 +IN1
* 4 -Vs
* 5 +IN2
* 6 -IN2
* 7 Vout2
* 8 +Vs
*
*
.subckt ADA4805_msop 1 2 3 4 5 6 7 8
XA 3 2 8 4 1 8 ADA4805
XB 5 6 8 4 7 8 ADA4805
.ends
