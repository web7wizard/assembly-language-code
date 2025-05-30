data segment
str1 db 'good$'
len db ''
data ends

code segment
start:
      assume cs:code,ds:data
      mov dx,data
      mov ds,dx

      lea di,len
      lea si,str1
      mov al,'$'

      next:cmp al,[si]
      jz exit
      mov bl,[si]
      mov [di],bl
      inc si
      inc di
      jmp next
      exit:

        mov len,cl
        mov ah,4ch
        int 21h

code ends
end start

