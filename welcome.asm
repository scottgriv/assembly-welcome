section .data
    message db "Welcome to my GitHub! Enjoy your visit. Feel free to email me at scott.givner@gmail.com. Thanks! -Scott", 0

section .text
    global _start

_start:
    ; Display the message
    mov     eax, 4          ; sys_write
    mov     ebx, 1          ; file descriptor (stdout)
    mov     ecx, message   ; address of the message
    mov     edx, message_len  ; length of the message
    int     0x80            ; interrupt to invoke the kernel

    ; Exit the program
    mov     eax, 1          ; sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; interrupt to invoke the kernel

section .bss
    message_len resb 1
