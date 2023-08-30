[org 0x7c00]

mov ah,0x0e

mov bx, 0002h

; mov al , 'A'

; add al, bl

add bl, 30h
mov al,bl

int 0x10

jmp $

var:
    db "Hello",0

times 510-($-$$) db 0

dw 0xaa55