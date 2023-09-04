mov ax,0x7c0
mov ds,ax
mov ah, 0x0e
mov al,'H'
int 0x10

jmp $

times 510-($-$$) db 0

dw 0xaa55