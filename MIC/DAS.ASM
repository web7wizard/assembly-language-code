code segment
       start:
           mov al,016h
           mov bl,04h
           sub al,bl
           das

           mov ah,4ch
           int 21h
code ends
end start      
