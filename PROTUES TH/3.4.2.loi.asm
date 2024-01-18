CSEG SEGMENT
ASSUME CS:CSEG
start: mov dl, 'A' ; DL chua ky tu dau tien 'A'
nhan: mov ah,02h   ; in ky tu trong DL ra màn hinh
int 21h
inc dl             ; DL chua ky tu ke can in
cmp dl, 'Z'        ; so sanh DL voi 'Z'
rol bl,1
jna nhan           ; neu <= 'Z' thi tep tuc in
mov ah, 08h        ; neu >'Z' thi thoat int 21h
mov ah, 4Ch

int 21h
CSEG ENDS
END start 
le van ngoc