org 100h

;1+2+3+4+5 = ? using loop

mov cx, 0005h   ;   cx stores how many time the loop will execute
mov ax, 0000h   ;   ax stores result
mov bx, 0001h   ;   bx is for count

x:
    add ax, bx  ;   ax = ax + bx
    inc bx      ;   bx = bx + 1
    loop x      ;   jmp to x until cx != 0, cx will automatically
                ;   reduce one
    
ret