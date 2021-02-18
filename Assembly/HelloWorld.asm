%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging    
    
    ; 연습문제: a배열의 모든 데이터 출력해보기
    xor rax, rax
    
LABEL_COUNT:
    PRINT_DEC 1, [a + rax]
    NEWLINE
    inc rax
    cmp rax, 5
    jne LABEL_COUNT
    
    xor rcx, rcx
    
LABEL_COUNT_B:
    PRINT_DEC 2, [b + rcx * 2]
    NEWLINE
    inc rcx
    cmp rcx, 5
    jne LABEL_COUNT_B

    
    
    xor rax, rax
    ret
   
    
    ; 초기화 된 데이터
    ; [변수이름] [크기] [초기값]
    ; [크기] db(1) dw(2) dd(4) dq(8)
    
section .data
    msg db 'Hello World', 0x00
    a db 0x01, 0x02, 0x03, 0x04, 0x05
    b times 5 dw 1
    
    ; 초기화 되지 않은 데이터
    ; [변수이름] [크기] [개수]
    ; [크기] resb(1) resw(2) resd(4) resq(8)
section .bss
    num resb 1