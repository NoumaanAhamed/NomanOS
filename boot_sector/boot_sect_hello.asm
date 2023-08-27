mov ah, 0x0e ; Set ah register for tty mode

; genearte a message "Hello from NomanOS"

mov al, 'H' ; Set al register for 'H'

int 0x10 ; Call interrupt 0x10

mov al, 'e' ; Set al register for 'e'

int 0x10 ; Call interrupt 0x10

mov al, 'l' ; Set al register for 'l'

int 0x10 ; Call interrupt 0x10

mov al, 'l' ; optional as we can use the same register for 'l'

int 0x10 ; Call interrupt 0x10

mov al, 'o' ; Set al register for 'o'

int 0x10 ; Call interrupt 0x10

mov al, ' ' ; Set al register for ' '

int 0x10 ; Call interrupt 0x10

mov al, 'f' ; Set al register for 'f'

int 0x10 ; Call interrupt 0x10

mov al, 'r' ; Set al register for 'r'

int 0x10 ; Call interrupt 0x10

mov al, 'o' ; Set al register for 'o'

int 0x10 ; Call interrupt 0x10

mov al, 'm' ; Set al register for 'm'

int 0x10 ; Call interrupt 0x10

mov al, ' ' ; Set al register for ' '

int 0x10 ; Call interrupt 0x10

mov al, 'N' ; Set al register for 'N'

int 0x10 ; Call interrupt 0x10

mov al, 'o' ; Set al register for 'o'

int 0x10 ; Call interrupt 0x10

mov al, 'm' ; Set al register for 'm'

int 0x10 ; Call interrupt 0x10

mov al, 'a' ; Set al register for 'a'

int 0x10 ; Call interrupt 0x10

mov al, 'n' ; Set al register for 'n'

int 0x10 ; Call interrupt 0x10

mov al, 'O' ; Set al register for 'O'

int 0x10 ; Call interrupt 0x10

mov al, 'S' ; Set al register for 'S'

int 0x10 ; Call interrupt 0x10

jmp $        ; Jump to the current address, creating an infinite loop

; Padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55
