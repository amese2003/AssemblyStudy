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
    
    ; 메모리 <-> 레지스터
    ; mov rax, a ; 주소값 복사
    ; mov rax, [a] ; a라는 변수 안에 있는 값 복사
    
    mov al, [a]    
    
    mov [a], byte 0x55
    mov [a], word 0x6666
    mov [a], cl
    
    xor rax, rax
    ret
    
    ; 초기화 된 데이터
    ; [변수이름] [크기] [초기값]
    ; [크기] db(1) dw(2) dd(4) dq(8)
    
section .data
    a db 0x11
    b dw 0x2222
    c dd 0x33333333
    d dq 0x4444444444444444
    
    ; 초기화 되지 않은 데이터
    ; [변수이름] [크기] [개수]
    ; [크기] resb(1) resw(2) resd(4) resq(8)
section .bss
    e resb 10