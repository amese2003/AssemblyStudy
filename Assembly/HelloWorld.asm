%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ; 8 bit = 1 byte
    ; 16 bit = 2 bytes = 1 word
    ; 32 bit = 4 bytes = 2 word = 1 dword (double-word)
    ; 64 bit = 8 bytes = 4 word = 1 qword (quad-word)
    
    ; mov reg1, cst
    ; mov reg1, reg2
    
    mov eax, 0x1234
    mov rbx, 0x12345678
    mov cl, 0xff
    
    mov al, 0x00
    mov rax, rdx
    
    
    xor rax, rax
    ret
    
;section .data