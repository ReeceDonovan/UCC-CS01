;The following code displays a numberic key from the keyboard on the 7-segment display

loop:
  in 00        ; kbd input put in al
  sub al, 30   ; subtract ascii value of 0 to get numberic value of key
  add al, 50   ; index into the translation table by adding the numberic kbd key 
               ; value to the base address of the translation table.
  mov al, [al] ; copy the 7-seg code at address given in al into al
  ;add al, 01
  out 02       ; write to 7-seg display
  jmp loop
  
org 50

DB FA ; 7-seg code for symbol for 0
DB 0A ; 7-seg code for symbol for 1
DB B6 ; 7-seg code for symbol for 2
DB 9E ; 7-seg code for symbol for 3
DB 4E ; 7-seg code for symbol for 4
DB DC ; 7-seg code for symbol for 5
DB FC ; 7-seg code for symbol for 6
DB 8A ; 7-seg code for symbol for 7
DB FE ; 7-seg code for symbol for 8
DB CE ; 7-seg code for symbol for 9

end
