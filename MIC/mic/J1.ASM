data segment
arr1 db 04h,05h,78h,75h,01h
data ends
code segment
start:
     assume cs:code,ds:data
     mov dx,data
     mov ds,dx

     mov bl,05h
     step1: mov si,offset arr1
     mov cl,04h
     step: mov al,[si]
     cmp al,[si+1]
     jc down
     xchg al,[si+1]
     xchg al,[si]
     down:inc si
     dec cl
     jnz step
     dec bl
     jnz step1

     mov ah,4ch
     int 21h

code ends
end start
