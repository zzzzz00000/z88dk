; lookup table for output format specifiers
; 05.2008 aralbrec

XLIB jumptbl_printf

; output format specifiers: "bcdeEfFinopPsuxX"
; place most common first

.jumptbl_printf

   defb 'd', 195
   LIB stdio_out_ld            ; stdio_out_d
   defw stdio_out_ld
   
   defb 'c', 195
   LIB stdio_out_c
   defw stdio_out_c
   
   defb 's', 195
   LIB stdio_out_s
   defw stdio_out_s
   
   defb 'u', 195
   LIB stdio_out_lu            ; stdio_out_u
   defw stdio_out_lu
   
   defb 'x', 195
   LIB stdio_out_lx            ; stdio_out_x
   defw stdio_out_lx
   
   defb 'i', 195
   LIB stdio_out_ld            ; stdio_out_d
   defw stdio_out_ld
   
   defb 'X', 195
   LIB stdio_out_caplx         ; stdio_out_capx
   defw stdio_out_caplx
   
   defb 'b', 195
   LIB stdio_out_lb            ; stdio_out_b
   defw stdio_out_lb
   
   defb 'o', 195
   LIB stdio_out_lo            ; stdio_out_o
   defw stdio_out_lo
   
   defb 'p', 195
   LIB stdio_out_lp            ; stdio_out_p
   defw stdio_out_lp
   
   defb 'P', 195
   LIB stdio_out_caplp         ; stdio_out_capp
   defw stdio_out_caplp
   
   defb 'n', 195
   LIB stdio_out_n
   defw stdio_out_n
   
;   defb 'f', 195
;   defw
   
;   defb 'e', 195
;   defw
   
;   defb 'F', 195
;   defw
   
;   defb 'E', 195
;   defw
   
   defb 'I', 195
   LIB stdio_out_capi
   defw stdio_out_capi
   
   defb 0                      ; end of table
