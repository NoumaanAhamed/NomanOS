[org 0x7c00]

; print hello message

mov bx, Hello_MSG


print_hello: 
    mov al, [bx]
    cmp al,0

    je end

    mov ah, 0x0e

    int 0x10

    inc bx

    jmp print_hello

print_goodbye:

    mov bx, GOODBYE_MSG

    call start

    call print_nl

    ret

end:

    mov al, 0x0a

    int 0x10

    mov al, 0x0d

    int 0x10

    call print_goodbye

    jmp $

%include "print_string.asm"

Hello_MSG db 'Hello World!',0

GOODBYE_MSG db 'Goodbye World!',0

times 510-($-$$) db 0

dw 0xaa55
