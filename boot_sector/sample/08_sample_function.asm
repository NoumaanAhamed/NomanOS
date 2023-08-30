alter_func:
    pusha
    mov bl,'B'
    mov al,bl
    popa
    ; int 0x10
    ret