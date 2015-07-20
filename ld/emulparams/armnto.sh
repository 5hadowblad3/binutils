MACHINE=
SCRIPT_NAME=cgc
OUTPUT_FORMAT="cgc32-littlearm"
BIG_OUTPUT_FORMAT="cgc32-bigarm"
LITTLE_OUTPUT_FORMAT="cgc32-littlearm"
TEXT_START_ADDR=0x00100000
TEMPLATE_NAME=cgc32
EXTRA_EM_FILE=armcgc
OTHER_TEXT_SECTIONS='*(.glue_7t) *(.glue_7) *(.vfp11_veneer) *(.v4_bx)'
OTHER_BSS_SYMBOLS='__bss_start__ = .;'
OTHER_BSS_END_SYMBOLS='_bss_end__ = . ; __bss_end__ = . ;'
OTHER_END_SYMBOLS='__end__ = . ;'

DATA_START_SYMBOLS='__data_start = . ;';

GENERATE_SHLIB_SCRIPT=yes

ARCH=arm
MACHINE=
MAXPAGESIZE="CONSTANT (MAXPAGESIZE)"

ENTRY=_start

# This sets the stack to the top of the simulator memory (2^19 bytes).
STACK_ADDR=0x80000

# ARM does not support .s* sections.
NO_SMALL_DATA=yes
