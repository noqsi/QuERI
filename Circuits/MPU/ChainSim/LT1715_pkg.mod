* Packaged LT 1715 for KiCad/ngspice 20240529 jpd@noqsi.com
*

* OTA
* http://ltwiki.org/?title=Undocumented_LTspice#OTA
* in1- in1+ in2+ in2- nc nc out com
.subckt ng_ota n1 n2 n3 n4 n5 n6 n7 n8 g=1 Iout=10u Ref=0 Vhigh=2 Vlow=-2 Rclamp=1
* the formula from wiki is not correct concerning V(n3,n4)
Biraw viraw 0 V = g * ( Ref - V(n1,n2) )
* * (V(n3,n4))
Bout n7 n8 I = tanh(V(viraw)/'Iout')*'Iout'
Vh hi 0 'Vhigh'
Vl lo 0 'Vlow'
* clamp to rails with Rclamp and diodes
Rclamp1 nhi hi 'Rclamp'
Dclamp1 n7 nhi dio
Rclamp2 nlo lo 'Rclamp'
Dclamp2 nlo n7 dio
.model dio D
.ends

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
