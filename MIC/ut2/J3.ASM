data segment
str db 'good morning$'
len db ?
data ends


code segment
start:
      assume cs:code,ds:data
      mov dx,data
      mov ds,dx

      lea si,str
      mov cl,00h
      mov al,'$'
      next:cmp al,[si]
      jz exit
      add cl,01h
      inc si
      jmp next
      exit:
        mov len,cl
        mov ah,4ch
        int 21h

code ends
end start
