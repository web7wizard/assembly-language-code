data segment
str1 db 'goog$'
ans db ''
len db ''
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

     lea di,ans
    n: mov dh,[si]
      mov [di],dh
    
     dec si
     inc di
     dec cl
     jz ou
     jmp n
     ou:

    ;ou:  lea si,str1
      ;  lea di,ans
     ; cmps
     ; jz y
      ;jmp nn
      ;y: mov len,'y'
     ; jmp k
     ; nn: mov len,'n'
    ;  k:

 
        mov ah,4ch
        int 21h

code ends
end start
