mov ah, 0x0e
mov bl,'A'
mov al,bl

int 0x10

call alter_func

int 0x10


jmp $

;write functions below the loop
alter_func:
    pusha
    int 0x10
    mov bl,'B'
    mov al,bl
    int 0x10
    popa
    ret

times 510-($-$$) db 0

dw 0xaa55

