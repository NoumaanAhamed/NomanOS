; Goal: Create a file which the BIOS interprets as a bootable disk

; e9 fd ff 00 00 00 00 00 00 00 00 00 00 00 00 00
; 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
; [ 29 more lines with sixteen zero-bytes each ]
; 00 00 00 00 00 00 00 00 00 00 00 00 00 00 55 aa

; Infinite loop 
loop:
    jmp loop

; Fill with 510 zeroes minus the size of the previous code
times 510-($-$$) db 0
; Magic number
dw 0xaa55