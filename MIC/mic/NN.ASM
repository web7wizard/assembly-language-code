data segment
arr1 db 33h,22h,11h

data ends
code segment
 assume cs:code,ds:data
 start:
      mov ax,data
      mov ds,ax

      lea di,arr1
      lea si,arr1
      inc di
      mov ch,03h 
      
   l1:  mov  al,[si]
           mov cl,03h


   l3: 
    mov bl,[di]
     
     cmp al,bl
      jnc l2
     mov ah,[si]
      mov bh,[di]
      mov [di],ah
      mov [si],bh
    l2: 
      inc di
      dec cl
     jnz l3


    inc si
    dec ch
    jnz l1

      mov ah,4ch
      int 21h
 code ends
 end start








