data segment
    arr1 db 08h,02h,07h,04h,09h
data ends

 code segment
   assume cs:code, ds:data
start:
   mov ax,data
   mov ds,ax
   lea si,arr1
   mov cl,05h
   mov al,0FFh
   l2: cmp al,[si]
   jc l1
   mov al,[si]
   l1:
   inc si
   dec cl
   jnz l2
mov ah,4ch
int 21h
code ends
end start
