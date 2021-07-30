section .text
    global _start
_start:
    mov edx,len ;add lenght
    mov ecx,msg ;add message
    mov ebx,1
    mov eax,4   ;eax (32 bits)
    int 0x80    

    mov eax,1
    int 0x80    ;kernel call

section .data
msg db "wry"    ;yep, that's a jojo's reference
len equ $ -msg
