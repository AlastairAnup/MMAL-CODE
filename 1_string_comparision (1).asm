
; Comparision of two string

org 100h

.data                   ; data segment for storing data
    string1 db 'DIU'    
    len equ ($-string1) ; equ for calculate, $ means current address
                        ; string1 means string1 starting address
    string2 db 'DIU'
    output db 'a$'
    
.code                   ; code segment for storing code
    lea si, string1     ; lea -> (load effective address)
    ;lea di, string2     ; store string2 address into di register
    mov di, offset string2  ;   work same as lea di, string2
    
    mov cx, len         ; storing the length of string into cx register
    cld                 ; cld -> (clear directional flag)
    
    repe cmpsb          ; repe -> (repeat with equal)
    jne not_equal       ; cmpsb -> (compare string byte)
    
    mov output, 'Y'
    
    jmp end
    
    not_equal:
    mov output, 'N'
    
    end:
    mov ah, 09h         ; DOS print string function
    lea dx, output      ; address of string to print
    int 21h             ; call DOS interrupt
        ret





