	.file	"main.c"
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.encoderRead,"ax",@progbits
.global	encoderRead
	.type	encoderRead, @function
encoderRead:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,old_AB.1810
	mov r24,r30
	lsl r24
	lsl r24
	sts old_AB.1810,r24
	sbis 0x16,2
	rjmp .L3
	ldi r18,0
	rjmp .L2
.L3:
	ldi r18,lo8(2)
.L2:
	in r25,0x16
	bst r25,1
	clr r30
	bld r30,0
	ldi r25,lo8(1)
	eor r30,r25
	or r30,r18
	or r30,r24
	sts old_AB.1810,r30
	andi r30,lo8(15)
	ldi r31,0
	subi r30,lo8(-(enc_states.1809))
	sbci r31,hi8(-(enc_states.1809))
	ld r24,Z
	ret
	.size	encoderRead, .-encoderRead
	.section	.text.__vector_4,"ax",@progbits
.global	__vector_4
	.type	__vector_4, @function
__vector_4:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	lds r22,millis
	lds r23,millis+1
	lds r24,millis+2
	lds r25,millis+3
	ldi r18,lo8(5)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	rcall __udivmodsi4
	or r22,r23
	or r22,r24
	or r22,r25
	brne .L6
	lds r25,targetPwm
	lds r24,currentPwm
	cp r24,r25
	brsh .L7
	cpi r24,lo8(-2)
	brsh .L7
	subi r24,lo8(-(1))
	rjmp .L13
.L7:
	cp r25,r24
	brsh .L8
	tst r24
	breq .L8
	subi r24,lo8(-(-1))
.L13:
	sts currentPwm,r24
.L8:
	lds r24,currentPwm
	out 0x29,r24
	tst r24
	breq .L9
	in r24,0x33
	ori r24,lo8(1)
	out 0x33,r24
	rjmp .L6
.L9:
	out 0x33,__zero_reg__
.L6:
	lds r24,millis
	lds r25,millis+1
	lds r26,millis+2
	lds r27,millis+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts millis,r24
	sts millis+1,r25
	sts millis+2,r26
	sts millis+3,r27
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_4, .-__vector_4
	.section	.text.timerInit,"ax",@progbits
.global	timerInit
	.type	timerInit, @function
timerInit:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,0x39
	ori r24,lo8(4)
	out 0x39,r24
	in r24,0x30
	ori r24,lo8(6)
	out 0x30,r24
	ret
	.size	timerInit, .-timerInit
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	rcall timerInit
/* #APP */
 ;  261 "main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	out 0x29,__zero_reg__
	sbi 0x17,0
	in r24,0x2a
	ori r24,lo8(-125)
	out 0x2a,r24
	in r24,0x33
	ori r24,lo8(1)
	out 0x33,r24
	out 0x29,__zero_reg__
	out 0x33,__zero_reg__
	ldi r16,0
	ldi r17,0
.L24:
	ldi r28,0
.L16:
	rcall encoderRead
	add r28,r24
	ldi r24,lo8(3)
	add r24,r28
	cpi r24,lo8(7)
	brlo .L16
	sbrc r28,7
	mov r28,r24
.L17:
	asr r28
	asr r28
	lds r20,millis
	lds r21,millis+1
	lds r22,millis+2
	lds r23,millis+3
	sub r20,r12
	sbc r21,r13
	sbc r22,r14
	sbc r23,r15
	mov r24,r28
	clr r25
	sbrc r24,7
	com r25
	cpi r20,20
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brsh .L18
	ldi r22,lo8(10)
	ldi r23,0
	rjmp .L28
.L18:
	lds r20,millis
	lds r21,millis+1
	lds r22,millis+2
	lds r23,millis+3
	sub r20,r12
	sbc r21,r13
	sbc r22,r14
	sbc r23,r15
	cpi r20,30
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brsh .L20
	ldi r22,lo8(5)
	ldi r23,0
.L28:
	rcall __mulhi3
	rjmp .L21
.L20:
	lds r20,millis
	lds r21,millis+1
	lds r22,millis+2
	lds r23,millis+3
	sub r20,r12
	sbc r21,r13
	sbc r22,r14
	sbc r23,r15
	cpi r20,40
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brsh .L21
	lsl r24
	rol r25
.L21:
	add r16,r24
	adc r17,r25
	cpi r16,-68
	cpc r17,__zero_reg__
	brge .L25
	sbrs r17,7
	rjmp .L23
	ldi r16,0
	ldi r17,0
	rjmp .L23
.L25:
	ldi r16,lo8(-69)
	ldi r17,0
.L23:
	movw r30,r16
	subi r30,lo8(-(pwm))
	sbci r31,hi8(-(pwm))
/* #APP */
 ;  288 "main.c" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts targetPwm,r30
	lds r12,millis
	lds r13,millis+1
	lds r14,millis+2
	lds r15,millis+3
	rjmp .L24
	.size	main, .-main
	.section	.rodata.enc_states.1809,"a",@progbits
	.type	enc_states.1809, @object
	.size	enc_states.1809, 16
enc_states.1809:
	.byte	0
	.byte	-1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	-1
	.byte	0
	.section	.bss.old_AB.1810,"aw",@nobits
	.type	old_AB.1810, @object
	.size	old_AB.1810, 1
old_AB.1810:
	.zero	1
.global	currentPwm
	.section	.bss.currentPwm,"aw",@nobits
	.type	currentPwm, @object
	.size	currentPwm, 1
currentPwm:
	.zero	1
.global	targetPwm
	.section	.bss.targetPwm,"aw",@nobits
	.type	targetPwm, @object
	.size	targetPwm, 1
targetPwm:
	.zero	1
.global	millis
	.section	.bss.millis,"aw",@nobits
	.type	millis, @object
	.size	millis, 4
millis:
	.zero	4
.global	pwm
	.section	.progmem.data.pwm,"a",@progbits
	.type	pwm, @object
	.size	pwm, 188
pwm:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	62
	.byte	63
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	90
	.byte	91
	.byte	92
	.byte	93
	.byte	95
	.byte	96
	.byte	97
	.byte	99
	.byte	100
	.byte	101
	.byte	103
	.byte	104
	.byte	105
	.byte	107
	.byte	108
	.byte	109
	.byte	111
	.byte	112
	.byte	114
	.byte	115
	.byte	117
	.byte	118
	.byte	119
	.byte	121
	.byte	122
	.byte	124
	.byte	125
	.byte	127
	.byte	-128
	.byte	-126
	.byte	-125
	.byte	-123
	.byte	-121
	.byte	-120
	.byte	-118
	.byte	-117
	.byte	-115
	.byte	-114
	.byte	-112
	.byte	-110
	.byte	-109
	.byte	-107
	.byte	-105
	.byte	-104
	.byte	-102
	.byte	-100
	.byte	-99
	.byte	-97
	.byte	-95
	.byte	-94
	.byte	-92
	.byte	-90
	.byte	-88
	.byte	-87
	.byte	-85
	.byte	-83
	.byte	-81
	.byte	-80
	.byte	-78
	.byte	-76
	.byte	-74
	.byte	-72
	.byte	-70
	.byte	-69
	.byte	-67
	.byte	-65
	.byte	-63
	.byte	-61
	.byte	-59
	.byte	-57
	.byte	-55
	.byte	-53
	.byte	-51
	.byte	-49
	.byte	-47
	.byte	-45
	.byte	-43
	.byte	-41
	.byte	-39
	.byte	-37
	.byte	-35
	.byte	-33
	.byte	-31
	.byte	-29
	.byte	-27
	.byte	-25
	.byte	-23
	.byte	-21
	.byte	-19
	.byte	-17
	.byte	-15
	.byte	-12
	.byte	-10
	.byte	-8
	.byte	-6
	.byte	-4
	.byte	-1
	.ident	"GCC: (GNU) 4.9.2"
.global __do_copy_data
.global __do_clear_bss
