[org 0x7c00]

mov ah,0x0e

; undestand how all formats works in assembly

; decimal

; mov al,1 ; -> ASCII value of 1

; int 0x10

; mov al, 49 ;a

; ;size of al : 1 byte

; ;size of 49: 1 byte


; int 0x10

; mov al, 50 ; b

; ;size : 1 byte

; int 0x10

; ;conclusion: decimal -> ASCII 

; ; character

; mov al, 'A' ; --> A

; ;size : 1 byte

; int 0x10

; ; mov al, A ; error

; ; int 0x10

; ;conclusion: character -> character

; ; strings

; mov al, "Hi" ; --> H

; ;size of al : 1 byte

; ;size of 'Hi' : 2 bytes

; int 0x10

; ;how to get second character?

; mov bx, "Bi"

; ;size of bx : 2 bytes

; ;size of "Bi" : 2 bytes

; mov al,bl

; int 0x10
; mov al,bh

; int 0x10

;conclusion: string -> first character

; binary

; mov al,00110001b ; 49 -> 1

; int 0x10

; ;conclusion: binary -> ASCII character

; ; hexadecimal

; mov al, 0x31 ; 49 -> 1

; int 0x10

; ; octal

; mov al, 61q ; 49 -> 1

; int 0x10

; variables

; other registers
mov bx, var3

mov al, [bx]

int 0x10

mov al, [bx+1] ; i

int 0x10

mov al, [bx+2]

int 0x10

mov al, 'Yohooo'


int 0x10


jmp $

;contagious memory allocation
; var1 dw 0x32

; size of var1 : 2 bytes

; var2 dd 0x3233

;size of var2 : 4 bytes

var3 db "Hello World",0

; var4 db "Bye guys yes",0

; var5 db "no idk wtf",0



times 510-($-$$) db 0

dw 0xaa55