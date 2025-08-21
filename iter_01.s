	.arch armv8.5-a
	.build_version macos,  15, 0
	.text
	.align	2
	.globl _main
_main:
LFB4:
	sub	sp, sp, #2736
LCFI0:
	sub	sp, sp, #397312
LCFI1:
	stp	x29, x30, [sp]
LCFI2:
	mov	x29, sp
LCFI3:
	str	w0, [x29, 28]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	add	x0, x0, 8
	ldr	x0, [x0]
	bl	_atoi
	add	x1, x29, 393216
	str	w0, [x1, 6828]
	ldr	x0, [x29, 16]
	add	x0, x0, 16
	ldr	x0, [x0]
	bl	_atoi
	add	x1, x29, 393216
	str	w0, [x1, 6824]
	add	x0, x29, 32
	mov	w1, 34464
	movk	w1, 0x1, lsl 16
	bl	_inicializar
	add	x0, x29, 32
	add	x1, x29, 393216
	ldr	w2, [x1, 6824]
	add	x1, x29, 393216
	ldr	w1, [x1, 6828]
	bl	_proceso
	add	x1, x29, 393216
	str	w0, [x1, 6820]
	add	x0, x29, 32
	add	x1, x29, 393216
	ldr	w1, [x1, 6820]
	bl	_mostrar
	mov	w0, 0
	ldp	x29, x30, [sp]
LCFI4:
	add	sp, sp, 2736
LCFI5:
	add	sp, sp, 397312
LCFI6:
	ret
LFE4:
	.align	2
	.globl _inicializar
_inicializar:
LFB5:
	sub	sp, sp, #32
LCFI7:
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 28]
	b	L4
L5:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	wzr, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
L4:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	L5
	nop
	nop
	add	sp, sp, 32
LCFI8:
	ret
LFE5:
	.cstring
	.align	3
lC0:
	.ascii "%d : %d\12\0"
	.text
	.align	2
	.globl _mostrar
_mostrar:
LFB6:
	sub	sp, sp, #64
LCFI9:
	stp	x29, x30, [sp, 16]
LCFI10:
	add	x29, sp, 16
LCFI11:
	str	x0, [x29, 24]
	str	w1, [x29, 20]
	str	wzr, [x29, 44]
	b	L7
L8:
	ldr	x0, [x29, 24]
	ldr	w0, [x0]
	str	w0, [sp, 8]
	ldr	w0, [x29, 44]
	str	w0, [sp]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	bl	_printf
	ldr	x0, [x29, 24]
	add	x0, x0, 4
	str	x0, [x29, 24]
	ldr	w0, [x29, 44]
	add	w0, w0, 1
	str	w0, [x29, 44]
L7:
	ldr	w1, [x29, 44]
	ldr	w0, [x29, 20]
	cmp	w1, w0
	blt	L8
	nop
	nop
	ldp	x29, x30, [sp, 16]
	add	sp, sp, 64
LCFI12:
	ret
LFE6:
	.align	2
	.globl _proceso
_proceso:
LFB7:
	sub	sp, sp, #32
LCFI13:
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	str	wzr, [sp, 28]
	mov	w0, 2
	str	w0, [sp, 24]
	b	L10
L15:
	str	wzr, [sp, 16]
	mov	w0, 2
	str	w0, [sp, 20]
	b	L11
L13:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 20]
	mul	w1, w2, w1
	sub	w0, w0, w1
	bne	L12
	mov	w0, 1
	str	w0, [sp, 16]
L12:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
L11:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	L13
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bne	L14
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 24]
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
L14:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
L10:
	ldr	w1, [sp, 24]
	ldr	w0, [sp]
	cmp	w1, w0
	blt	L15
	ldr	w0, [sp, 28]
	add	sp, sp, 32
LCFI14:
	ret
LFE7:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB4-.
	.set L$set$2,LFE4-LFB4
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB4
	.long L$set$3
	.byte	0xe
	.uleb128 0xab0
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xe
	.uleb128 0x61ab0
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x9d
	.uleb128 0xc356
	.byte	0x9e
	.uleb128 0xc355
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xdd
	.byte	0xde
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xe
	.uleb128 0x61000
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE1:
LSFDE3:
	.set L$set$10,LEFDE3-LASFDE3
	.long L$set$10
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB5-.
	.set L$set$11,LFE5-LFB5
	.quad L$set$11
	.uleb128 0
	.byte	0x4
	.set L$set$12,LCFI7-LFB5
	.long L$set$12
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$13,LCFI8-LCFI7
	.long L$set$13
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE3:
LSFDE5:
	.set L$set$14,LEFDE5-LASFDE5
	.long L$set$14
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB6-.
	.set L$set$15,LFE6-LFB6
	.quad L$set$15
	.uleb128 0
	.byte	0x4
	.set L$set$16,LCFI9-LFB6
	.long L$set$16
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.set L$set$17,LCFI10-LCFI9
	.long L$set$17
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$18,LCFI11-LCFI10
	.long L$set$18
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x30
	.byte	0x4
	.set L$set$19,LCFI12-LCFI11
	.long L$set$19
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE5:
LSFDE7:
	.set L$set$20,LEFDE7-LASFDE7
	.long L$set$20
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB7-.
	.set L$set$21,LFE7-LFB7
	.quad L$set$21
	.uleb128 0
	.byte	0x4
	.set L$set$22,LCFI13-LFB7
	.long L$set$22
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$23,LCFI14-LCFI13
	.long L$set$23
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE7:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
