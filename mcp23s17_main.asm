;--------------------------------
; MCP23S17 SPI 
; example for one expander @ $40
;--------------------------------
; expander-labels
; set up your wires, port, etc.
;-------------------------------
!src "mcp23s17_cfg.asm"
!to "p4userport.prg",cbm
*= $1000
!byte $00,$0c,$10,$0a,$00,$9e,$34,$31,$35,$39,$00,$00,$00
; main
!src "mcp23s17_lbl.asm"
*=$103f
            lda #$93           ; clear screen
            jsr $ffd2
; init the expander(s)       
            lda expander_0     ; expander_0 : $40
            sta chip
            lda IOCON          ; i/o config 
            sta register
            lda #$08           ; hardware-addressing
            sta value
            jsr set_register   ; (chip, register, value) 
; set dir-register 
            lda IODIRA         ; Port A 
            sta register
            lda output         ; to output
            sta value
            jsr set_register   ; (chip, register, value) 
; set byte on port 
            lda OLATA          ; use latch A 
            sta register
            lda #%10101010 
            sta value
            jsr set_register   ; (chip, register, value)
            rts
;--------------------------------
; some lowlevel SPI-routines
!src "mcp23s17_macro.asm"
;--------------------------------



