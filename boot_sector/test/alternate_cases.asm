mov ah,0x0e

mov al,'a'; ASCII : 97

print:
    int 0x10
    sub al,32 ; 65
    inc al ; 66 -> 'B'
    int 0x10
    add al,32 ; 98
    inc al ; 99 -> 'c'
    cmp al,'z'+1 
    je exit 
    jmp print


exit:
    jmp $

times 510-($-$$) db 0

dw 0xaa55