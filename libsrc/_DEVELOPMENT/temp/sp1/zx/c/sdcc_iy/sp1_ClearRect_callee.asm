; void sp1_ClearRect(struct sp1_Rect *r, uchar colour, uchar tile, uchar rflag)

SECTION code_temp_sp1

PUBLIC _sp1_ClearRect_callee

EXTERN asm_sp1_ClearRect

_sp1_ClearRect_callee:

   pop af
   pop hl
   pop bc
   pop de
   ld d,b
   pop bc
   push af
   
   ld a,c
   push de
   ld d,(hl)
   inc hl
   ld e,(hl)
   inc hl
   ld b,(hl)
   inc hl
   ld c,(hl)
   pop hl

   jp asm_sp1_ClearRect
