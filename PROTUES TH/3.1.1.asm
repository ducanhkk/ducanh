 
 .model small
 .stack 100h
 .data
 msg db 'Hello$'
 .code
 main proc
 mov ax,@data
 mov ds,ax
 mov al,49h
 add al,8Ah
 mov ah,4Ch
 int 21h
 main endp
 ;--------
 End 
 LE VAN NGOC