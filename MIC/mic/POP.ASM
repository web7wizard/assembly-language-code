; add of two 8 bit number
data segment
 n1 db 05h
 n2 db 07h
 n3 db 00h
data ends

code segment
 assume cs:code,ds:data
 start:
        mov ax,data
        mov ds,ax
        
        mov si,offset n1
        mov ax,[si]
        inc si
        mov bx,[si]
        add ax,bx
        inc si
        mov [si],ax


        ;mov ax,data
       ; mov ds,ax
       ; mov al,n1
        ;mov bl,n2
       ; add al,bl
       ; mov n3,al
        mov ah,4ch
        int 21h
   code ends
   end start
