%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ; CMP dst, src (dst 기준)
    ; 비교를 한 결과물은 Flag Register 저장
    
    ; JMP [label] 시리즈
    ; JMP : 무조건 JUMP
    ; JE : JumpEquals 같으면 jump
    ; JNE : JumpNotEquals 다르면 jump
    ; JG : JumpGreater 크면 jump
    ; JGE : JumpGreaterEquals 크거나 같으면 jump
    ; JL
    ; JLE
    
    
    mov ax, 100
    mov bl, 2    
    div bl    
    PRINT_DEC 1, ax    
    CMP ah, 0
    
    JE LABEL_DUO
    
    mov rcx, 0
    JMP LABEL_PASS
    
    
LABEL_DUO:
    mov rcx, 1
LABEL_PASS:
    NEWLINE
    PRINT_DEC 1, rcx
    
    
    
    
    
    
    xor rax, rax
    ret
    
    ; 초기화 된 데이터
    ; [변수이름] [크기] [초기값]
    ; [크기] db(1) dw(2) dd(4) dq(8)
    
;section .data
    
    ; 초기화 되지 않은 데이터
    ; [변수이름] [크기] [개수]
    ; [크기] resb(1) resw(2) resd(4) resq(8)
section .bss
    num resb 1