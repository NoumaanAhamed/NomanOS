[org 0x7c00]

mov ah,0x0e

mov al,[var + 4]

int 0x10

jmp $

var:
    db "Hello",0

times 510-($-$$) db 0

dw 0xaa55