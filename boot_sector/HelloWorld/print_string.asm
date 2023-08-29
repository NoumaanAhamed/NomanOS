print:
    pusha

start:
    mov al, [bx]
    cmp al, 0
    je done

    mov ah, 0eh
    int 10h

    inc bx
    jmp start

done:
    popa
    ret

print_nl:
    pusha

    mov ah, 0x0e

    mov al, 0x0a ;newline
    int 0x10

    mov al, 0x0d ;padding
    int 0x10

    popa
    ret