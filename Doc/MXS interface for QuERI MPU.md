## MXS interface for QuERI MPU

RR3 20230627 jpd
### Signals

LVDS:

**MXDS±** - chip select for the DAC7562 DAC.  
**MXAS±** - chip select for the ADS7953 ADC.  
**MXCLK±** - serial clock for ADC and DAC.  
**MXDD±** - data to DAC.  
**MXAD±** - data from ADC.

Open collector output, 20V tolerant:

**~MXINH** - Pulled low to inhibit MXS HV

### Pin assignments

J13 is a 15 pin MDM plug

J13 pin | Signal | U1 pin
------ | ------- | ------
1   |  ~MXINH | M7
9 | MXDS- | W21
2 | MXDS+ | V21
10 | GND |
3 | MXAS- | U20
11 | MXAS+ | T20
4 | GND |
12 | MXCLK- | U21
5 | MXCLK+ | T21
13 | GND |
6 | MXDD- | R19
14 | MXDD+ | P19
7 | GND
15 | MXAD- | R21
8 | MXAD+ | P21
