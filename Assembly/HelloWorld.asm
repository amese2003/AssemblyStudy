%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging    
    
    ; 스택 메모리, 스택 프레임
    
    ; 레지스터는 다양한 용도로 사용
    ; - a b c d 범용 레지스터
    ; - 포인터 레지스터 (포인터 = 위치를 가르키는 무언가)
    ; -- ip (Insturction Pointer) : 다음 수행 명령어
    ; -- sp (Stack Pointer) : 현재 스택 top 위치 (일종의 Cursor)
    ; -- bp (Base Pointer) : 스택 상대주소 계산용
    
    push 1
    push 2
    call MAX
    PRINT_DEC 8, rax
    NEWLINE
    
    add rsp, 16
    
    xor rax, rax
    ret
    
MAX:
    push rbp
    mov rbp, rsp
    
    mov rax, [rbp + 16]
    mov rbx, [rbp + 24]
    cmp rax, rbx    
    jg L1
    mov rax, rbx
L1:
    pop rbp
    ret
    
    
    
    ; [!] 스택(stack)이라는 메모리 영역을 사용
    ; 함수가 사용하는 일종의 메모장
    ; - 매개변수 전달
    ; - 돌아갈 주소 관
   
    
    ; 초기화 된 데이터
    ; [변수이름] [크기] [초기값]
    ; [크기] db(1) dw(2) dd(4) dq(8)
    
section .data
    msg db 'Hello World', 0x00
    
    ; 초기화 되지 않은 데이터
    ; [변수이름] [크기] [개수]
    ; [크기] resb(1) resw(2) resd(4) resq(8)
section .bss
    num resb 1