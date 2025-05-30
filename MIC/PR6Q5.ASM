data segment
start:
      mov al,03h
      mov bl,07h
      sub al,bl
      daa
code ends
end start
