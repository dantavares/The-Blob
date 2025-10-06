G28 ;Home
G92 E0 ;Reset Extruder
G1 Z10.0 F3000 ;Move Z Axis up
G1 X-2.0 Y20 F5000.0 ;Move to start position
M109 S225 ; Set hotend temperature and wait
G1 Z0.28
G1 E50 F500 ;Extrude
G1 Z10.0 F3000 ;Move Z Axis up
G1 Y100 F500
M104 S0 ;Turn-off hotend
M84 X Y Z E ;Disable all steppers