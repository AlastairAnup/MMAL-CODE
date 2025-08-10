;implementation of else-if ladder using jump
;Find the grade for a corresponding student exam mark
;       Mark        Grade
;       80-100      A
;       70-79       B
;       60-69       C
;       50-59       D


mov AX, 0h      ;   AX will store grade result
mov BX, 75h      ;   let 75 is exam mark stored in BX

mov CX, 80h
cmp BX, CX        ; checking if mark >= 80
jae A

mov CX, 70h
cmp BX, CX        ; checking if mark >= 70
jae B

mov CX, 60h
cmp BX, CX        ; checking if mark >= 60
jae C

mov CX, 50h
cmp BX, CX        ; checking if mark >= 50
jae D

jmp ext

A:
    mov AX, 000Ah
    jmp ext
B:
    mov AX, 000Bh
    jmp ext
C:
    mov AX, 000Ch
    jmp ext
D:
    mov AX, 000Dh
    jmp ext

    
ext:
    ret 
