.model small
.Data
n dw 6935H
z dw ?
o dw ?
.Code
mov ax,@data
mov ds,ax
mov ax,n
mov bx,0000H
mov dx,0000H
mov cx,10H
up: rol ax,1
    jc one
	inc bx
	jmp nxt
one: inc dx
nxt: dec cx
jnz up
mov z,bx
mov o,dx
mov ah,4ch
int 21h
end