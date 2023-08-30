[org 0x7c00]

mov ah, 0x0e



jmp $

convert_this:
    dw 1234
times 510-($-$$) db 0

dw 0xaa55