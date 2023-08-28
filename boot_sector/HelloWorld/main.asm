[org 0x7c00]

mov bx,Hello_MSG
call print

call print_nl
mov bx,GOODBYE_MSG
call print
call print_nl


jmp $

%include "print_string.asm"

Hello_MSG :
    db "Hello World!",0

GOODBYE_MSG :
    db "Goodbye World!",0

times 510-($-$$) db 0
dw 0xaa55