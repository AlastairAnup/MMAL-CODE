
; Find the maximum element of an array 

org 100h

.data
    arr db 1h, 2h, 4h, 3h   ;   arr with db->data byte type elements
                            ;   means each elemnet will take 1 byte storage
                            ;   similarly dw->data word is also available for 2 byte
    len equ ($-arr)         ;   equ to calculate the length
                            ;   $ holds current address
    max_val db 0h
    
.code
    lea si, arr             ;   lea->load effective address, si will store
                            ;   arr address 
    lea di, max_val         ;   di will store max_val address
    mov dl, 0
    
    mov cx, len             ;
    find_max:
        
        cmp [si], dl        ;   [si] means value stored at si address
        ja update
        
        jmp next_element
        
        update:
            mov dl, [si]
            mov [di], dl    
        
        next_element:
            inc si
            loop find_max
        
ret




