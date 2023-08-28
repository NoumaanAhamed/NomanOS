mov ah, 0x0e

mov bx,30

cmp bx,4

jle if_block

cmp bx,40

jle else_if_block

jmp else_block

if_block:
    mov al,'A'
    int 0x10
    jmp end

else_if_block:
    mov al,'B'
    int 0x10
    jmp end

else_block:
    mov al,'C'
    int 0x10
    jmp end

end:
    jmp $

times 510-($-$$) db 0

dw 0xaa55
