code segment
start:
     ;assume cs:code,ds:data
     mov ax,5a2ch
     mov bx,225fh
     add bx,ax

     code ends
     end start
