mov ah, 0x0e
mov bl,'A'
mov al,bl

int 0x10

call alter_func

int 0x10


jmp $

%include "08_sample_function.asm"
times 510-($-$$) db 0

dw 0xaa55

