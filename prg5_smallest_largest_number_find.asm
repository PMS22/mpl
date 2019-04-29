.model small
.data
a db 0,4,1,5,7,8,2,3
b db ?
.code
mov ax,@data
mov ds,ax
mov cl,08
lea bx,a
mov al,00
mov ah,byte ptr[bx]
l1:cmp ah,byte ptr[bx]
jnc l2
mov al,byte ptr[bx]
l2:cmp ah,byte ptr[bx]
jc l3
mov ah,byte ptr[bx]
l3:inc bx
dec cl
cmp cl,00
jnz l1
mov ah,4ch
int 21h
end
