
data segment
a db 10h
b db 20h
res db ''
data ends
code segment
assume cs:code,ds:data
start:
     mov ax,data
     mov ds,ax

     lea si,a
     mov al,[si]
     lea si,b
     mov bl,[si]
     cmp al,bl
     jnc bls
     mov res,al
     bls:
     mov res,bl
     mov ah,4ch
     int 21h
code ends
end start
