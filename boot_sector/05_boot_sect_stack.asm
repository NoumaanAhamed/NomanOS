mov ah, 0x0e 

mov bp,0x8000

mov sp,bp

push 'A'

push 'B'

push 'C'

mov al, [0x8000] ; 0x8000 -> ' '

int 0x10

mov al, [0x7fff]; 0x8000 - 1 -> ' '
int 0x10

mov al, [0x7ffe] ; 0x8000 - 2 -> A
int 0x10

mov al, [0x7ffd] ; 0x8000 - 3 -> ' '

int 0x10

mov al, [0x7ffc] ; 0x8000 - 4 -> B

int 0x10

mov al, [0x7ffb] ; 0x8000 - 5 -> ' '

int 0x10

mov al, [0x7ffa] ; 0x8000 - 6 -> C

int 0x10

; mov al, [0x7ff9] ; 0x8000 - 7 -> Garbage Value 

; int 0x10


mov al, [0x8000]
int 0x10

; recover our characters using the standard procedure: 'pop'
; We can only pop full words so we need an auxiliary register to manipulate
; the lower byte of the word
pop bx
mov al, bl
int 0x10 ; prints C

pop bx
mov al, bl
int 0x10 ; prints B

pop bx
mov al, bl
int 0x10 ; prints A

; data that has been pop'd from the stack is garbage now
mov al, [0x8000]
int 0x10

mov al, [0x8000]
int 0x10


jmp $

times 510-($-$$) db 0

dw 0xaa55
