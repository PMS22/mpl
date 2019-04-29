.model small
.Data
d1 db 9,6,5,3,8
d2 db 10 dup(0)
.Code
mov ax,@data
mov ds,ax
lea si,d1
lea di,d2
mov cx,05
up: mov al,[si]
    mov [di],al
	inc si
	inc di
	dec cx
	jnz up
mov ah,4ch
int 21h
end