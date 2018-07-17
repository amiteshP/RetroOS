;
;A BIOS Interrupt-Routine to print Text at boot time 
;using Tele-Printer
;

mov ah, 0x0e				;Store the telePrompter interrupt mode at high, a register

mov al, 'H'
int 0x10
mov al, 'E'
int 0x10
mov al, 'Y'
int 0x10
mov al, ','
int 0x10
mov al, ' '
int 0x10
mov al, 'A'
int 0x10
mov al, 'M'
int 0x10
mov al, 'I'
int 0x10
mov al, 'T'
int 0x10
mov al, 'E'
int 0x10
mov al, 'S'
int 0x10
mov al, 'H'
int 0x10

jmp $

;
;Pad the 512 bytes with 0s
;Insert BIOS boot sector indicator number at the end
;

times 510-($-$$) db 0

dw 0xaa55
