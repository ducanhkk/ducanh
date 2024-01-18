.model small
.stack 100h
.data
    buffer db 0
    msg db 'Hello $'

.code
main proc
    input_loop:
        mov ah, 01h
        int 21h
        mov [buffer], al
        cmp al, 27
        je exit_program
        cmp al, 'a'
        jb not_lowercase
        cmp al, 'z'
        ja not_lowercase
        sub byte ptr [buffer], 32
    not_lowercase:
        mov ah, 09h
        lea dx, msg
        int 21h
        mov ah, 02h
        mov dl, [buffer]
        int 21h
        jmp input_loop

    exit_program:
        mov ah, 4Ch
        int 21h

main endp
End main
 LE VAN NGOC

