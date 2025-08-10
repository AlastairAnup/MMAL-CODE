org 100h

;addition
mov AX, 0005h   ;   store 5h in AX
mov BX, 0003h   ;   store 3h in BX
add AX, BX      ;   AX = AX + BX

;subtraction
mov AX, 0005h   ;   store 5h in AX
mov BX, 0003h   ;   store 3h in BX
sub AX, BX      ;   AX = AX - BX

;multiple
mov AX, 0005h   ;   store 5h in AX
mov BX, 0003h   ;   store 3h in BX
mul BX          ;   AX = AX * BX    output will be stored
                ;                   in hexa formate
                
;division
mov AX, 0005h   ;   store 5h in AX
mov BX, 0003h   ;   store 3h in BX
div BX          ;   AX = AX / BX    output will be stored
                ;                   in hexa formate

         
