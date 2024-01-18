 .model small
 .stack 100h
 .data
 msg db 'Hello$'
 .code
 main proc
 mov ax,@data
 mov ds,ax
 mov ah,08h   ; nhap ky tu tu ban phim
 int 21h
 push ax
 mov ah,02h   ; luu ky tu vua nhap
 mov dx,0B0Ah ; chuyen toa do con tro
 int 10h
 pop ax  
 mov dl,al    ; xuat ky tu
 mov ah,02h
 int 21h
 mov ah,4Ch
 int 21h
 main endp
 ;-------
 End
 LE VAN NGOC
