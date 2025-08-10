org 100h

.data
    array db 02h, 01h, 06h, 03h  
    len equ ($-array)   
.code
    lea si, array  ; si will store the memory address of array
    mov cl, len    ; cl is for outer looping
    dec cl
    
    x:
        lea si, array
        mov ah, cl       ; ah is for inner looping
        
        y:
            mov al, [si]  ; al will store the element of first element
            inc si        ; si will point to next element
            mov bl, [si]  ; bl will  store the element of second element
            
            cmp al, bl  ; check if first element > second element
            ja swap
            jmp w
            
            swap:
                mov [si], al   ;second element = first element
                dec si         ; si will point first element
                mov [si], bl   ; first element = second element
                inc si         ; si will point second element
                
            w:
                dec ah
                jnz y
                
            loop x
            
            
            
     ;array print
     lea si, array       ; point to start of array
     mov cx, len         ; number of elements to print

     print_loop:
        mov al, [si]        ; get number
        add al, 30h         ; convert to ASCII
        mov dl, al
        mov ah, 02h
        int 21h             ; print character
    
        mov dl, ' '         ; print space between numbers
        mov ah, 02h
        int 21h
    
        inc si
        loop print_loop

ret




