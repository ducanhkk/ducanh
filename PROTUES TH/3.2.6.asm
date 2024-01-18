.model small
.stack 100h
.data
buffer db 0
msg db 'Hello$'

.code
main proc                                             
    
    
   
mov ah, 01h      
int 21h           

mov [buffer], al

mov ah, [buffer]
cmp ah, 'a'
jb next
cmp ah, 'z'
ja next
  
sub byte ptr [buffer], 32

next:
   
mov ah, 09h        
lea dx, msg      
int 21h            
 
mov ah, 02h       
mov dl, [buffer]   
int 21h            
   
mov ah, 4Ch      
int 21h            

main endp
End main   
LE VAN NGOC