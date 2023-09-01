[org 0x7c00]


mov ah,0x0e ;print the character

mov bx,label

mov al,[bx] ;load the character from the label variable

int 0x10 ;print the character

mov al,' '

int 0x10 ;print the character

mov ah,0 ;keyboard input
int 0x16 ;wait for keypress
mov [label],al ;store the keypress in the label variable
mov ah,0x0e ;otherwise, print the character
int 0x10 ;otherwise, print the character

mov al,' '

int 0x10 ;print the character

mov bx,label

mov al,[bx] ;load the character from the label variable

int 0x10 ;print the character


jmp $

label:
    db 'A'

times 510-($-$$) db 0

dw 0xaa55