.model small
.Data
n1 dw 4567H
n2 dw 1234H
.code
mov ax,@data
mov ds,ax
mov ax,n1
mov bx,n2
add ax,bx
mov ah,4CH
int 21H
end