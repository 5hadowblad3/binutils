#source: tlslib.s
#as: -little
#ld: -shared -EL
#objdump: -drj.text
#target: sh*-*-linux* sh*-*-netbsd*

.*: +file format cgc32-sh.*

#pass
