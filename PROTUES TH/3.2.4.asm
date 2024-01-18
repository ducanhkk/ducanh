
 .model small
 .stack 100h
 .data
 msg db 'Hello$'
 .code
 main proc
 mov ax,@data
 mov ds,ax
 mov AH,02h  ; xuat chuoi ra man hinh
 mov bh,0
 mov dh,9
 mov dl,9
 int 10h
 mov ah,09h
 lea dx,msg
 int 21h
 exit:
 mov ah, Ch
 int 21h
 main endp
 ;--------
 End   
 LE VAN NGOC