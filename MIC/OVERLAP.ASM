data segment
   arr1 db 11h,22h,33h,44h,55h
   
   r1 db 00h
   r2 db 00h
   r3 db 00h


data ends
code segment
   assume cs:code,ds:data
   start:
         mov ax,data
         mov ds,ax
         lea si,arr1
         add si,02h
         mov al,[si]
         mov r1,al
         inc si
         mov al,[si]
         mov r2,al
         inc si
         mov al,[si]
         mov r3,al
         inc si

         lea si,arr1
         lea di,arr1
         add si,02h

         mov al,[di]
         mov [si],al
         inc si
         inc di

         mov al,[di]
         mov [si],al
         inc si
         inc di

         mov al,r1
         mov [si],al
         inc si
         mov al,r2
         mov [si],al
         inc si
         mov al,r3
         mov [si],al

       mov ah,4ch
         int 21h
code ends
end start
