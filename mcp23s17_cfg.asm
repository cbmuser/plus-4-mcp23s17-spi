;
;        MCP 23S17 Pinout
;           ----()----
;  GPB0 <-> *1      28 <-> GPA7
;  GPB1 <-> 2       27 <-> GPA6
;  GPB2 <-> 3       26 <-> GPA5
;  GPB3 <-> 4       25 <-> GPA4
;  GPB4 <-> 5       24 <-> GPA3
;  GPB5 <-> 6       23 <-> GPA2
;  GPB6 <-> 7       22 <-> GPA1
;  GPB7 <-> 8       21 <-> GPA0
;       VDD 9       20 --> INTA
;       VSS 10      19 --> INTB 
;        CS 11      18 --> RESET
;       SCK 12      17 <-- A2 
;        SI 13      16 <-- A1 
;        SO 14      15 <-- A0 
;           ----------     
;
; I/O Base
ioport    = $fd10 ; Userport Commodore Plus/4
outbuf    = $0a   ; byte-buffer for output  
inbuf     = $0b   ; byte-buffer for input  
chip      = $0c   ; chip address container
register  = $0d   ; register to use
value     = $0e   ; value for register
t_lo      = $d8   ; storage
t_hi      = $d9   ;
