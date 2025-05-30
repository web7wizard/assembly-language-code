data segment
str1 db 'good$'
len db 'morning$'
s db ''
data ends

code segment
start:
      assume cs:code,ds:data
      mov dx,data
      mov ds,dx

      lea di,s
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

      lea si,len
  nex:cmp al,[si]
      jz exi
      mov bl,[si]
      mov [di],bl
      add cl,01h
      inc si
      inc di
      jmp nex
      exi:

        mov len,cl
        mov ah,4ch
        int 21h

code ends
end start
