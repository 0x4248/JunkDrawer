	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 0
	.globl	_halfAdder                      ; -- Begin function halfAdder
	.p2align	2
_halfAdder:                             ; @halfAdder
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-3]
	sturb	w1, [x29, #-4]
	ldurb	w9, [x29, #-3]
	ldurb	w8, [x29, #-4]
	and	w0, w9, #0x1
	and	w1, w8, #0x1
	bl	_XOR
	sturb	w0, [x29, #-2]
	ldurb	w9, [x29, #-3]
	ldurb	w8, [x29, #-4]
	and	w0, w9, #0x1
	and	w1, w8, #0x1
	bl	_AND
	sturb	w0, [x29, #-1]
	ldurh	w0, [x29, #-2]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
