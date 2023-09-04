; mov ah,0x0e
; mov bp,0x8000
; mov sp,bp
; mov bh,'A'
; push bx
; mov al,bh
; int 0x10

; mov bh,'B'

; push bx
; mov al,bh
; int 0x10
; pop bx

; mov al,bh
; int 0x10
; pop bx

; mov al,bh
; int 0x10
; pop bx

; mov al,bh
; int 0x10
; jmp $

; times 510-($-$$) db 0

; dw 0xaa55

[org 0x7c00]
mov ah,0x0e

start:
    mov al,'A'
    int 0x10
    call sample_func
    int 0x10
    jmp exit

sample_func:
    pusha
    mov al,'B'
    int 0x10
    popa
    ret
exit:
    jmp $

times 510-($-$$) db 0

dw 0xaa55