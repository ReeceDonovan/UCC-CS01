;Traffic Lights with a various delay durations using subroutines

start:
  mov al, 84 	; 84 corresponds to Red-Green on the Traffic Lights
  out 01     	; Write to Traffic Lights Port
  mov bl, fa    ; initialize bl with a value representing the delay
  call 70 	;
  
  mov al, 48 	; 48 corresponds to Amber-Amber on the Traffic Lights
  out 01     	; Write to Traffic Lights Port
  mov bl, fe    ; initialize bl with a value representing the delay
  call 70
  
  mov al, 30 	; 30 corresponds to Green-Red on the Traffic Lightsout 01
  out 01
  mov bl, 01    ; initialize bl with a value representing the delay
  call 70

  mov al, 48 	; 48 corresponds to Amber-Amber on the Traffic Lights
  out 01     	; Write to Traffic Lights Port
  mov bl, fe    ; initialize bl with a value representing the delay
  call 70
jmp start

org 70 ; 
 loop:
 inc bl
 cmp bl, 00    ; check to see if bl has overflowed 
 jnz loop     ; if not continue incrementing and checking
 ret

end