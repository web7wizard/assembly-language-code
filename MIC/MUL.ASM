code segment
start: mov al,05h
       mov bl,04h
       mul bl
       mov al,-05h
       mov bl,04h
       mul bl 

       mov ah,4ch
       int 21h


 
 code ends
 end start
