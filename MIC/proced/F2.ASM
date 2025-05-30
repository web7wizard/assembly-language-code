data segment
result db 01h,02h,03h,04h,05h
data ends


code segment
assume cs:code,ds:data
start:
     mov ax,data
     mov ds,ax
     mov cl,05h

     lea si,result
    up: mov al,[si]
     call fact
     inc si
     dec cl
     jnz up
     




     mov ah,4ch
     int 21h

fact proc near
add bl,al
ret
fact endp

code ends
 end start
