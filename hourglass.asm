org 100h

.model small
.data
space dw 11
star dw 1 

space1 dw 5
star1 dw 13

.code 

main proc  
    
mov cx,7
    




outer1:
mov bx,cx


mov cx,space1
k1:
    
    mov dl,32
    mov ah,02
    int 21h

  loop k1
  inc space1
  mov cx,star1
  
  
l1:

   mov dl,'*'  
   mov ah,02
   int 21h

loop l1
dec star1     
dec star1

mov dl,0Ah
mov ah,02
int 21h
mov dl,0Dh
mov ah,02
int 21h  

mov cx,bx    
            

loop outer1
    
    
    
    mov cx,7
    
outer:
mov bx,cx


mov cx,space
k:
    
    mov dl,32
    mov ah,02
    int 21h

  loop k
  dec space
  mov cx,star
  
  
l:

   mov dl,'*'  
   mov ah,02
   int 21h

loop l
inc star     ;add space,2
inc star

mov dl,0Ah
mov ah,02
int 21h
mov dl,0Dh
mov ah,02
int 21h  

mov cx,bx



loop outer
ret
end main
endp