data segment
strr db 'good$'
len db ?
s db ''
data ends


code segment
start:
      assume cs:code,ds:data
      mov dx,data
      mov ds,dx

      lea si,strr
      mov cl,00h
      mov al,'$'
      next:cmp al,[si]
      jz exit
      add cl,01h
      inc si
      jmp next
      exit:
        ;mov len,cl
       lea di,s
       inc cl
      up:
      mov al,[si]
      mov [di],al
        dec si
        inc di
        dec cl
        jnz up
      
     
        mov ah,4ch
        int 21h

code ends
end start
