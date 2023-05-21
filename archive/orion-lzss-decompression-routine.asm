; LZss Decompression Routine
; Original C Source Code by Haruhiko Okumura 1989
; Public domain - https://oku.edu.mie-u.ac.jp/~okumura/compression/lzss.c
; Converted to 16 bits 80186 Assembly code by Orion_ [2008]
; Public domain - per https://twitter.com/onorisoft/status/1660355152014897152

LZ_N		equ	4096
LZ_F		equ	18
LZ_THRESHOLD	equ	2

; si = Packed Data Address Start
; ax = Packed Data Address End
; di = Destination buffer for Unpacked Data
; dx = Working Buffer of 4114 bytes

; Packed Data use the DS segment
; Destination and Working Buffer use the RAM segment by default

LZssDecode:
	pusha
	push	es
	mov	bp,ax

	xor	ax,ax		; RAM Segment destination
	mov	es,ax

	push	di		; Clear buffer
	mov	di,dx
	xor	ax,ax
	mov	cx,(LZ_N - LZ_F)/2
	rep	stosw
	pop	di

	mov	bx,LZ_N - LZ_F	; r
	xor	cx,cx		; flags
.loop:
	shr	cx,1
	test	ch,1
	jnz	.np1
	mov	ch,0xFF
	cmp	bp,si		; check file end
	jz	.end
	lodsb
	mov	cl,al
.np1:	test	cl,1
	jz	.np2
	cmp	bp,si		; check file end
	jz	.end
	lodsb
	stosb
	push	di
	mov	di,dx
	add	di,bx
	stosb
	pop	di
	inc	bx
	and	bx,LZ_N - 1
	jmp	.loop
.np2:
	cmp	bp,si		; check file end
	jz	.end
	lodsb
	mov	ah,al	; i,j
	cmp	bp,si		; check file end
	jz	.end
	lodsb

	push	bp
	push	cx	; save flags

	mov	cx,ax	; j = (j & 0x0f) + THRESHOLD;
	and	cx,0x0F
	add	cx,LZ_THRESHOLD
	mov	bp,cx	; j
	xor	cx,cx	; k

	and	al,0xF0	; i |= ((j & 0xf0) << 4);
	shr	al,4
	xchg	ah,al

.reloop:
	push	ax	; save i
	add	ax,cx
	and	ax,LZ_N - 1
	push	si
	mov	si,dx
	add	si,ax
	mov	al,[es:si]
	pop	si
	stosb
	push	di
	mov	di,dx
	add	di,bx
	stosb
	pop	di
	inc	bx
	and	bx,LZ_N - 1
	pop	ax

	inc	cx
	cmp	bp,cx
	jge	.reloop

	pop	cx	; restore flags
	pop	bp
	jmp	.loop

.end:	pop	es
	popa
	ret
