# 1 "gates.s"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 467 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "gates.s" 2
 .section __TEXT,__text,regular,pure_instructions
 .build_version macos, 26, 0 sdk_version 26, 0
 .globl _NOT ; -- Begin function NOT
 .p2align 2
_NOT: ; @NOT
 .cfi_startproc
; %bb.0:
 sub sp, sp, #16
 .cfi_def_cfa_offset 16
 strb w0, [sp, #15]
 ldrb w8, [sp, #15]
 eor w8, w8, #0x1
 and w0, w8, #0x1
 add sp, sp, #16
 ret
 .cfi_endproc
                                        ; -- End function
 .globl _NAND ; -- Begin function NAND
 .p2align 2
_NAND: ; @NAND
 .cfi_startproc
; %bb.0:
 sub sp, sp, #32
 stp x29, x30, [sp, #16] ; 16-byte Folded Spill
 add x29, sp, #16
 .cfi_def_cfa w29, 16
 .cfi_offset w30, -8
 .cfi_offset w29, -16
 sturb w0, [x29, #-1]
 sturb w1, [x29, #-2]
 ldurb w8, [x29, #-1]
 and w8, w8, #0x1
 ldurb w9, [x29, #-2]
 and w9, w9, #0x1
 ands w8, w8, w9
 cset w0, ne
 bl _NOT
 ldp x29, x30, [sp, #16] ; 16-byte Folded Reload
 add sp, sp, #32
 ret
 .cfi_endproc
                                        ; -- End function
 .globl _AND ; -- Begin function AND
 .p2align 2
_AND: ; @AND
 .cfi_startproc
; %bb.0:
 sub sp, sp, #32
 stp x29, x30, [sp, #16] ; 16-byte Folded Spill
 add x29, sp, #16
 .cfi_def_cfa w29, 16
 .cfi_offset w30, -8
 .cfi_offset w29, -16
 sturb w0, [x29, #-1]
 sturb w1, [x29, #-2]
 ldurb w9, [x29, #-1]
 ldurb w8, [x29, #-2]
 and w0, w9, #0x1
 and w1, w8, #0x1
 bl _NAND
 sturb w0, [x29, #-3]
 ldurb w9, [x29, #-3]
 ldurb w8, [x29, #-3]
 and w0, w9, #0x1
 and w1, w8, #0x1
 bl _NAND
 ldp x29, x30, [sp, #16] ; 16-byte Folded Reload
 add sp, sp, #32
 ret
 .cfi_endproc
                                        ; -- End function
 .globl _OR ; -- Begin function OR
 .p2align 2
_OR: ; @OR
 .cfi_startproc
; %bb.0:
 sub sp, sp, #32
 stp x29, x30, [sp, #16] ; 16-byte Folded Spill
 add x29, sp, #16
 .cfi_def_cfa w29, 16
 .cfi_offset w30, -8
 .cfi_offset w29, -16
 sturb w0, [x29, #-1]
 sturb w1, [x29, #-2]
 ldurb w9, [x29, #-1]
 ldurb w8, [x29, #-1]
 and w0, w9, #0x1
 and w1, w8, #0x1
 bl _NAND
 str w0, [sp, #8] ; 4-byte Folded Spill
 ldurb w9, [x29, #-2]
 ldurb w8, [x29, #-2]
 and w0, w9, #0x1
 and w1, w8, #0x1
 bl _NAND
 mov x1, x0
 ldr w0, [sp, #8] ; 4-byte Folded Reload
 bl _NAND
 ldp x29, x30, [sp, #16] ; 16-byte Folded Reload
 add sp, sp, #32
 ret
 .cfi_endproc
                                        ; -- End function
 .globl _NOR ; -- Begin function NOR
 .p2align 2
_NOR: ; @NOR
 .cfi_startproc
; %bb.0:
 sub sp, sp, #32
 stp x29, x30, [sp, #16] ; 16-byte Folded Spill
 add x29, sp, #16
 .cfi_def_cfa w29, 16
 .cfi_offset w30, -8
 .cfi_offset w29, -16
 sturb w0, [x29, #-1]
 sturb w1, [x29, #-2]
 ldurb w9, [x29, #-1]
 ldurb w8, [x29, #-2]
 and w0, w9, #0x1
 and w1, w8, #0x1
 bl _OR
 bl _NOT
 ldp x29, x30, [sp, #16] ; 16-byte Folded Reload
 add sp, sp, #32
 ret
 .cfi_endproc
                                        ; -- End function
 .globl _XOR ; -- Begin function XOR
 .p2align 2
_XOR: ; @XOR
 .cfi_startproc
; %bb.0:
 sub sp, sp, #32
 stp x29, x30, [sp, #16] ; 16-byte Folded Spill
 add x29, sp, #16
 .cfi_def_cfa w29, 16
 .cfi_offset w30, -8
 .cfi_offset w29, -16
 sturb w0, [x29, #-1]
 sturb w1, [x29, #-2]
 ldurb w9, [x29, #-1]
 ldurb w8, [x29, #-2]
 and w0, w9, #0x1
 and w1, w8, #0x1
 bl _NAND
 sturb w0, [x29, #-3]
 ldurb w9, [x29, #-1]
 ldurb w8, [x29, #-3]
 and w0, w9, #0x1
 and w1, w8, #0x1
 bl _NAND
 sturb w0, [x29, #-4]
 ldurb w9, [x29, #-2]
 ldurb w8, [x29, #-3]
 and w0, w9, #0x1
 and w1, w8, #0x1
 bl _NAND
 sturb w0, [x29, #-5]
 ldurb w9, [x29, #-4]
 ldurb w8, [x29, #-5]
 and w0, w9, #0x1
 and w1, w8, #0x1
 bl _NAND
 ldp x29, x30, [sp, #16] ; 16-byte Folded Reload
 add sp, sp, #32
 ret
 .cfi_endproc
                                        ; -- End function
 .globl _XNOR ; -- Begin function XNOR
 .p2align 2
_XNOR: ; @XNOR
 .cfi_startproc
; %bb.0:
 sub sp, sp, #32
 stp x29, x30, [sp, #16] ; 16-byte Folded Spill
 add x29, sp, #16
 .cfi_def_cfa w29, 16
 .cfi_offset w30, -8
 .cfi_offset w29, -16
 sturb w0, [x29, #-1]
 sturb w1, [x29, #-2]
 ldurb w9, [x29, #-1]
 ldurb w8, [x29, #-2]
 and w0, w9, #0x1
 and w1, w8, #0x1
 bl _XOR
 bl _NOT
 ldp x29, x30, [sp, #16] ; 16-byte Folded Reload
 add sp, sp, #32
 ret
 .cfi_endproc
                                        ; -- End function

 .globl _main
_main: ; @main
 .cfi_startproc
; %bb.0:
 mov w0, #0 ; =0x0
 ret
 .cfi_endproc
.subsections_via_symbols
