data segment
 arr1 db 81h,82h,33h,44h,55h
data ends
code segment
 assume cs:code,ds:data
start:
     mov ax,data
     mov ds,ax

     lea si,arr1
     mov cl,05h
     mov dl,00h
     mov dh,00h
     up:mov al,[si]
     rcl al,01
     jc odd
     inc dh
     jmp down
   odd:inc dl
   down: inc si
     dec cl
     jnz up
     mov ah,4ch
     int 21h
code ends
end start

