
tmpdir/arm-static-app:     file format cgc32-(little|big)arm.*
architecture: armv4t, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x.*

Disassembly of section .text:

.* <_start>:
 +.*:	e1a0c00d 	mov	ip, sp
 +.*:	e92dd800 	push	{fp, ip, lr, pc}
 +.*:	eb000001 	bl	.* <app_func>
 +.*:	e89d6800 	ldm	sp, {fp, sp, lr}
 +.*:	e12fff1e 	bx	lr

.* <app_func>:
 +.*:	e1a0c00d 	mov	ip, sp
 +.*:	e92dd800 	push	{fp, ip, lr, pc}
 +.*:	eb000001 	bl	.* <app_func2>
 +.*:	e89d6800 	ldm	sp, {fp, sp, lr}
 +.*:	e12fff1e 	bx	lr

.* <app_func2>:
 +.*:	e12fff1e 	bx	lr
