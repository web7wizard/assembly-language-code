
data segment
str1 db 'golg$'
ans db ''
len db ''

data ends

code segment
start:
      assume cs:code,ds:data
      mov dx,data
      mov ds,dx

      lea si,str1
      mov cx,00h
      mov al,'$'
     nex:cmp al,[si]
      jz exi
      inc cx
      inc si
      jmp nex
     exi:
        dec si
        mov bx,cx
     lea di,ans
    n: mov dh,[si]
      mov [di],dh
    
     dec si
     inc di
     dec bx
     jz ou
     jmp n
     ou:

     lea si, str1
     lea di,ans
    n1: mov dh,[si]
      cmp dh,[di]
      jnz ou1
     dec si
     inc di
     dec cl
     jz oue
     jmp n1

     oue:mov ans,'y'
     jmp o
     ou1: mov ans,'n'

     o:

     
        mov ah,4ch
        int 21h

code ends
end start
