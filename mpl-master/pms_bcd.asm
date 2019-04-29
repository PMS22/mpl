.model small
.data
x db 83H
.code 
mov ax,@data
mov ds,ax
mov al,x
and al,0F0H
mov cl,04H
rcr al,cl
mov bl,x
and bl,0FH
mov ah,4ch
int 21H
end