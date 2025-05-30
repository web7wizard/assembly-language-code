code segment
     start: mov al,08h
            mov bl,09h
            add al,bl

            mov ah,4ch
            int 21h
code ends
end start
