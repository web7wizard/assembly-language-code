data segment
 arr1 db 04h
data ends
code segment
 assume cs:code,ds:data
start:
     mov ax,data
     mov ds,ax

     lea si,arr1
     mov cl,08h
     mov dl,00h
     mov dh,00h
     mov al,[si]
    up: rcl al,01
     jc one
     inc dh
     jmp down
   one:inc dl
   down: 
     dec cl
     jnz up
     mov ah,4ch
     int 21h
code ends
end start

