.model small
.Data
n1 db 04H
n2 db 03H
.code
mov ax,@data
mov ds,ax
mov al,n1
add al,bl
mov  ah,4CH
int 21H
end
