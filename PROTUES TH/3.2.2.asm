
 .model small
 .stack 100h
 .data
 msg db 'Hello'
 .code
 main proc
 mov ax,@data
 mov ds,ax
 mov ah,09h ; xuat chuoi ra man hinh
 lea dx,msg
 int 21h
 exit:
 mov ah, Ch
 int 21h
 main endp
 ;--------
 End   
 LE VAN NGOC