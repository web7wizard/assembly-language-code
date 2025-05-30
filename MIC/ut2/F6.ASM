data segment
fact macro 
mul al
endm

data ends
code segment
assume cs:code,ds:data
start:
     mov ax,data
     mov ds,ax

     mov al,02h
     fact
     
     mov ah,4ch
     int 21h
code ends
end start
