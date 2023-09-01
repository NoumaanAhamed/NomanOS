[org 0x7c00]


mov cx,0
mov bx,buffer

buffer_input:
    cmp cx,11
    je clear_bx
    mov ah,0
    int 0x16
    mov [bx],al
    mov ah,0x0e
    mov al,al
    int 0x10
    inc bx
    inc cx
    jmp buffer_input


clear_bx:
    mov bx,buffer

    newline:
        mov ah,0x0e
        mov al,0x0a
        int 0x10
        mov al,0x0d
        int 0x10

    jmp print_buffer

print_buffer:

    mov ah, 0x0e
    mov al, [bx]
    cmp al,0
    je exit
    int 0x10
    inc bx
    jmp print_buffer

exit:
    jmp $

buffer:
    times 10 db 0,0

times 510-($-$$) db 0

dw 0xaa55
