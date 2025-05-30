code segment
   start: mov ax,0C59Ch;
          mov bx,0CCBBh;
          adc ax,bx
          mov ah,4ch
          int 21h
   code ends
   end start
