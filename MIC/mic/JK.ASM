
data segment
  n1 dd 1122F000H
  n2 dd 33441000H
  n3 dd 00000000H
data ends
code segment
 assume cs:code,ds:data
start:
    mov ax,data
    mov ds,ax
    mov si,offset N1
    mov bx,[si]
    inc si
    inc si
    mov ax,[si]
    lea si,n2
    mov dx,[si]
    inc si
    inc si
    mov cx,[si]
    add bx,dx
    adc ax,cx
    lea si,n3
    mov [si],bx
    inc si
    inc si
    mov [si],ax
 mov ah,4ch
 int 21h
code ends
end start
