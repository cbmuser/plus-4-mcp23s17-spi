;----------------------------
; toggle clock
;----------------------------
toggle_clk: ora #%00000101
            sta ioport
            and #%00000100         ; clk low , hold bit if set
            sta ioport  
            rts
;----------------------------
; shift_byte
;   x-reg: bit-counter
;   carry: bit-carrier
;----------------------------
shift_byte:
            ldx #$00
--          and #$00
            asl outbuf             ; shift left: [carry<-msb...lsb]
            bcc +
; --- set high bit ---------
            ora exp_si_high        ; set bit high
            sta ioport
            jsr toggle_clk  
            clc
            inx
            cpx #$08
            bne --
            rts
; --- set low bit ----------
+           and exp_si_low         ; set bit low
            sta ioport
            jsr toggle_clk  
            inx
            cpx #$08
            bne --
            ldx #$00
            rts
;----------------------------
; set register
; chip : used chip-address
; register: used register
; value: value to set
;----------------------------
set_register:
            and exp_cs_low
            sta ioport
            lda chip               ; chip address 
            sta outbuf
            jsr shift_byte 
            lda register
            sta outbuf
            jsr shift_byte          
            lda value
            sta outbuf
            jsr shift_byte           
            ora exp_cs_high
            sta ioport
            rts  

;----------------------------
; get register
; byte in inbuf 
;----------------------------

get_register:
            and exp_cs_low         ; flip to low: chip selected
            sta ioport
            ldx #$00
-           lda exp_clk_high       ; set clock
            sta ioport
            lda ioport
            and exp_so_low
            beq +                  ; write "0"
            lda inbuf
            ora or_table,x
            sta inbuf
+           and exp_clk_low        ; clk low     
            sta ioport
            inx
            cpx #$08
            bne -
            lda exp_cs_high        ; flip to high: chip deselected
            sta ioport
            rts
                

or_table: !by $80,$40,$20,$10,$08,$04,$02,$01




