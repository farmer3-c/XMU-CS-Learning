assume cs:code,ds:data
data segment
    msg db 'hello, world!$'
data ends

code segment
start:
    mov ax, data
    mov ds, ax
    mov dx, offset msg   ; DX指向字符串
    mov ah, 09h          ; DOS显示字符串功能
    int 21h
    
    mov ax, 4c00h        ; 程序返回
    int 21h
code ends
end start