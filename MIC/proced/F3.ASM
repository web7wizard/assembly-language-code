data segment
result db 00h
data ends


code segment
assume cs:code,ds:data
start:
     mov ax,data
     mov ds,ax

     mov al,02h
     call fact
     mov bl,al
     mov al,03h
     call fact
     add bl,al
     mov al,04h
     call fact
     add bl,al


     mov ah,4ch
     int 21h

fact proc near
mul al
ret
fact endp

code ends
 end start
