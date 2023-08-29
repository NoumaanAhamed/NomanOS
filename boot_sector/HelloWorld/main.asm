[org 0x7c00]

; mov bx,"Noumaan"; avoid this as it will cause an error


mov bx,Hello_MSG
call print

call print_nl
mov bx,GOODBYE_MSG
call print
call print_nl

;give varying length inputs
mov dx,'H' ;or 0x12FE

call print_hex

jmp $

; remember to include subroutines below the hang

%include "print_string.asm"
%include "print_hex.asm"

Hello_MSG :
    db "Hello World!",0

GOODBYE_MSG :
    db "Goodbye World!",0

times 510-($-$$) db 0
dw 0xaa55