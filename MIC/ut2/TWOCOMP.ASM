data segment
data ends
code segment
    assume cs:code,ds:data
start:
      mov ax,data
      mov ds,ax
      mov ax,1234h
      not ax
      add ax,01h
      mov ah,04h
      int 21h
code ends
end start
