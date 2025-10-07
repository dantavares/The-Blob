; Use this GCode to load filament into the 3D printer using The Blob
; Insert filament before running this gcode

G28 ;Home
G92 E0 ;Reset Extruder
G1 Z10.0 F3000 ;Move Z Axis up
G1 X-2.0 Y20 F5000.0 ;Move to start position
M109 S225 ; Set hotend temperature and wait
G1 Z0.3
G1 E50 F1000 ;Extrude
G1 Z10.0 F10000 ;Move Z Axis up
M106 S255 ;Set Fan 100%
G4 S10 ;Wait 
G1 Y150 F10000
M106 S0
M104 S0 ;Turn-off hotend
M84 X Y Z E ;Disable all steppers
