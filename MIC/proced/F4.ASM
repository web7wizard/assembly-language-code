data segment
result db 01h,02h,03h,04h,05h
data ends


code segment
assume cs:code,ds:data
start:
     mov ax,data
     mov ds,ax
     
     mov al,01h
     mov bl,02h
     call fact
     mov cl,al
     mov al,03h
     mov bl,04h
     call fact
     mul cl


 
     mov ah,4ch
     int 21h

fact proc near
add al,bl
ret
fact endp

code ends
 end start
