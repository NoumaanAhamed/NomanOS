[org 0x7c00]
mov ah, 0x0e

; mov al,[var1]

; ; mov al, bl

; int 0x10

; mov bx,[var2]

; mov al, bl

; int 0x10

; mov al, bh

; int 0x10

mov al, [var3]

int 0x10

mov [var1],al

int 0x10

mov al, [var1]

int 0x10

jmp $

var1 db 'A'
var2 dw 'BC'
var3 db 'D'
arr db 'a','b','c','d','e'

times 510-($-$$) db 0

dw 0xaa55
