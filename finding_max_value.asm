;Find the maximum and minimum number from
;the register value

org 100h

mov AH, 2h
mov AL, 1h
mov BH, 5h
mov BL, 4h

;Let DH will store the maximum

mov DH, AH  ;Let maximum value is stored in AH. So, DH = AH

cmp AL, DH  ; AL > DH ?
ja swap1

jmp next1

swap1:
    mov DH, AL;     DH = AL
    
next1:
    cmp BH, DH;     BH > DH ?
    ja swap2
    
    jmp next2
    
swap2:
    mov DH, BH;     DH = BH
    
next2:
    cmp BL, DH;     BL > DH ?
    ja swap3
    
    jmp ext
    
swap3:
    mov DH, BL;     DH = BL
    
ext:
    ret
    
