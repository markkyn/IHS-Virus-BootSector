[BITS 16]
[ORG 0x7e00] // Global Offset do Boot

start:
; Referências:
;      https:;en.wikipedia.org/wiki/INT_10H    
    mov ah, 0x13 ; Write string (EGA+, meaning PC AT minimum) 
    mov al, 0x01 ; Write Mode = True
    mov bx, 0x0a
    xor dx, dx
    mov bp, Message ; Ponteiro de String 
    mov cx, MessageLen     ; Numero de Caracteres
    int 0x10

End:
    hlt
    jmp End


Message: db "Loader Carregado com sucesso!"
MessageLen: equ $-Message