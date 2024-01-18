.model small
.stack 100h
.data
    msg db 'Hello$'
.code
main proc
    mov ax, @data
    mov ds, ax
    mov si, 0    
    mov ah, 02h
    mov bh, 0  
    mov dh, 0  
    mov dl, 0  
    int 10h

lap:
    mov dl, msg[si]
    cmp dl, '$'
    je exit    
    mov ah, 02h
    int 21h   
    mov ah, 02h
    mov dl, 0Ah  ;
    int 21h
    inc si
    jmp lap

exit:
    mov ah, 4Ch
    int 21h
main endp
end main
 LE VAN NGOC