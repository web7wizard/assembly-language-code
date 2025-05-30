data segment
result db 00h
data ends


code segment
assume cs:code,ds:data
start:
     mov ax,data
     mov ds,ax
     mov cl,05h
     mov al,01h
     call fact
     mov ah,4ch
     int 21h

fact proc near
mul cl
dec cl
jz outt
call fact
outt: ret
fact endp

code ends
 end start
