%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging    
    
    ; 함수 (프로시저 procedure 서브루틴 subroutine)
    ; call PRINT_MSG
    
    
    
    mov eax, 10
    mov ebx, 15
    
    call MAX
    PRINT_DEC 4, ecx
    NEWLINE
    
    xor rax, rax
    ret
    
PRINT_MSG:
    PRINT_STRING msg
    NEWLINE
    ret
    
    ; ex) 두 값중 더 큰값을 반환하는 max
    ; 근데 두 값을 어떻게 넘겨 받지? 반환은?
    ; eax와 ebx 입력값을 ecx에 반환
    
MAX:
    cmp eax, ebx
    jg L1
    mov ecx, ebx,
    jmp L2
    
    
L1:
    mov ecx, eax
L2:
    ret
    
    
    ; 근데 인제가 10개라면?
    ; eax, ebx에 중요한 값이 있으면?
    ; [!] .data .bss 사용하면? 
    ; 인자를 도대체 몇개를 할댕해야 할까?리
    
    ; 다른 메모리 구조가 필요하다
    ; - 꿈이 유효한 동안에는 그 꿈을 유지시켜야 함 (유효범위 개념이 있다)
    ; - 꿈이 끝나면 그 꿈을 부셔버려도 됨 (정리의 개념이 있다)
    ; - 꿈에서도 또 꿈을 꿀 수 있다는 것을 고려 (유동적으로 유효 범위가 확장 가능해야함)
    
    ; [!] 스택(stack)이라는 메모리 영역을 사용
    ; 함수가 사용하는 일종의 메모장
    ; - 매개변수 전달
    ; - 돌아갈 주소 관
   
    
    ; 초기화 된 데이터
    ; [변수이름] [크기] [초기값]
    ; [크기] db(1) dw(2) dd(4) dq(8)
    
section .data
    msg db 'Hello World', 0x00
    dd a 0
    dd b 0
    dd c 0
    
    ; 초기화 되지 않은 데이터
    ; [변수이름] [크기] [개수]
    ; [크기] resb(1) resw(2) resd(4) resq(8)
section .bss
    num resb 1