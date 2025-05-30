data segment
  arr1 db 01h,02h,03h,04h,05h
  result db 00h
data ends
code segment
 assume cs:code,ds:data
start:
     mov ax,data
     mov ds,ax
     lea si,arr1
     mov cl,05h
     mov ax,0000h
     l1:add al,[si]
     inc si
     dec cl
     jnz l1
     mov result,al

     mov ah,4ch
     int 21h
code ends
end start
