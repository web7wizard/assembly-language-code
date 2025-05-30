code segment
start: mov al,08h
       mov bl,02h
       div bl

       mov ah,4ch
       int 21h


 
 code ends
 end start
