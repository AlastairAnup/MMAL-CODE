;jump
;conditional jump:
;statements:    1.je    ->  jump equal          ==
;               2.ja    ->  jump above          >
;               3.jb    ->  jump below          <
;               4.jae   ->  jump above equal    >=
;               5.jbe   ->  jump below equal    <=

;unconditional jump:
;statements:    jmp level   next code will execute from level
;                code
;               level:
;                code



;implementation of if-else using jump
mov AX, 0005h
mov BX, 0005h

cmp AX, BX
je equal

mov CX, 0001h   ; CX will store 1h, if AX!=BX
jmp ext        ; jump to exit for escaping the execution of next lines

equal:
    mov CX, 0002h   ; CX will store 2h, if AX==BX
    
ext:
    ret 
    

    