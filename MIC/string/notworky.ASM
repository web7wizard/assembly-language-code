data segment
str1 db 'goog$'
ans db ''
data ends

code segment
start:
      assume cs:code,ds:data
      mov dx,data
      mov ds,dx

      lea si,str1
      mov cl,00h
      mov al,'$'
     nex:cmp al,[si]
      jz exi
      inc cl
      inc si
      jmp nex
     exi:

     lea di,str1
    n: mov dh,[si]
      cmp dh,[di]
     jz oue
     dec si
     inc di
     dec cl
     jz ou
     jmp n
     oue:mov ans,'y'
     jmp o
     ou: mov ans,'n'

      o:

 
        mov ah,4ch
        int 21h

code ends
end start
