Include Irvine32.inc

.data
msg             byte    "Please enter your marks: ", 0
msg1            byte    "Invalid entry",0
msgAplus        byte    "Grade A+",0
msgA            byte    "Grade A",0
msgAminus       byte    "Grade A-",0
msgBplus        byte    "Grade B+",0
msgB            byte    "Grade B",0
msgBminus       byte    "Grade B-",0
msgCplus        byte    "Grade C+",0
msgC            byte    "Grade C",0
msgCminus       byte    "Grade C-",0
msgD            byte    "Grade D",0
msgF            byte    "Grade F",0

.code
Main PROC
    mov     edx, offset msg
    call    writeString
    call    readint
    call    grade
    exit
Main ENDP

grade PROC
    cmp     eax, 100
    JA      Invalid
    cmp     eax, 95
    JAE     gAplus
    cmp     eax, 90
    JAE     gA
    cmp     eax, 85
    JAE     gAminus
    cmp     eax, 80
    JAE     gBplus
    cmp     eax, 75
    JAE     gB
    cmp     eax, 70
    JAE     gBminus
    cmp     eax, 65
    JAE     gCplus
    cmp     eax, 60
    JAE     gC
    cmp     eax, 55
    JAE     gCminus
    cmp     eax, 50
    JAE     gD
    jmp     gF

Invalid:
    mov     edx, offset msg1
    call    writeString
    jmp     last

gAplus:
    mov     edx, offset msgAplus
    call    writeString
    jmp     last

gA:
    mov     edx, offset msgA
    call    writeString
    jmp     last

gAminus:
    mov     edx, offset msgAminus
    call    writeString
    jmp     last

gBplus:
    mov     edx, offset msgBplus
    call    writeString
    jmp     last

gB:
    mov     edx, offset msgB
    call    writeString
    jmp     last

gBminus:
    mov     edx, offset msgBminus
    call    writeString
    jmp     last

gCplus:
    mov     edx, offset msgCplus
    call    writeString
    jmp     last

gC:
    mov     edx, offset msgC
    call    writeString
    jmp     last

gCminus:
    mov     edx, offset msgCminus
    call    writeString
    jmp     last

gD:
    mov     edx, offset msgD
    call    writeString
    jmp     last

gF:
    mov     edx, offset msgF
    call    writeString

last:
    exit
grade ENDP

END Main
