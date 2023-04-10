
; Register-Table
*=$100d
IODIRA:   !by 0x00  ; I/O direction A
IODIRB:   !by 0x01  ; I/O direction B
IPOLA:    !by 0x02  ; I/O polarity A
IPOLB:    !by 0x03  ; I/O polarity B
GPINTENA: !by 0x04  ; interrupt enable A
GPINTENB: !by 0x05  ; interrupt enable B
DEFVALA:  !by 0x06  ; register default value A (interupts)
DEFVALB:  !by 0x07  ; register default value B (interupts)
INTCONA:  !by 0x08  ; interrupt control A
INTCONB:  !by 0x09  ; interrupt control B
IOCON:    !by 0x0a  ; I/O config (also 0x0B)
GPPUA:    !by 0x0c  ; port A pullups
GPPUB:    !by 0x0d  ; port B pullups
INTFA:    !by 0x0e  ; interrupt flag A (where the interupt came from)
INTFB:    !by 0x0f  ; interrupt flag B
INTCAPA:  !by 0x10  ; interrupt capture A (value at interupt is saved here)
INTCAPB:  !by 0x11  ; interrupt capture B
GPIOA:    !by 0x12  ; port A
GPIOB:    !by 0x13  ; port B
OLATA:    !by 0x14  ; output latch A
OLATB:    !by 0x15  ; output latch B

; I/O config
BANK_ON:        !by 0x80  ; addressing mode
BANK_OFF:       !by 0x00  
INT_MIRROR_ON:  !by 0x40  ; interrupt mirror (INTa|INTb)
INT_MIRROR_OFF: !by 0x00
SEQOP_OFF:      !by 0x20  ; incrementing address pointer
SEQOP_ON:       !by 0x00
DISSLW_ON:      !by 0x10  ; slew rate
DISSLW_OFF:     !by 0x00
HAEN_ON:        !by 0x08  ; hardware addressing
HAEN_OFF:       !by 0x00
ODR_ON:         !by 0x04  ; open drain for interupts
ODR_OFF:        !by 0x00
INTPOL_HIGH:    !by 0x02  ; interrupt polarity
INTPOL_LOW:     !by 0x00

; constants
output:         !by 0x00  ; directions for full port
input:          !by 0xff
expander_0      !by 0x40
expander_1      !by 0x41       
exp_clk_low:    !by 0x00
exp_clk_high:   !by 0x01
exp_cs_low:     !by 0x00  
exp_cs_high:    !by 0x02
exp_si_low:     !by 0x00
exp_si_high:    !by 0x04
exp_so_low:     !by 0x00 
exp_so_high     !by 0x08 
