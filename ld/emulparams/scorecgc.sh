MACHINE=
SCRIPT_NAME=cgc
TEMPLATE_NAME=cgc32
EXTRA_EM_FILE=scorecgc
OUTPUT_FORMAT="cgc32-bigscore"
BIG_OUTPUT_FORMAT="cgc32-bigscore"
LITTLE_OUTPUT_FORMAT="cgc32-littlescore"
NO_RELA_RELOCS=yes
GROUP="-lm -lc -lglsim -lgcc -lstdc++"

TEXT_START_ADDR=0x00000000
MAXPAGESIZE=256
NONPAGED_TEXT_START_ADDR=0x0400000
SHLIB_TEXT_START_ADDR=0x5ffe0000
OTHER_GOT_SYMBOLS='
  _gp = ALIGN(16) + 0x3ff0;
'

OTHER_BSS_START_SYMBOLS='_bss_start__ = . + ALIGN(4);'
OTHER_BSS_END_SYMBOLS='_bss_end__ = . ; __bss_end__ = . ; __end__ = . ;'
DATA_START_SYMBOLS='_fdata = . ;'
SDATA_START_SYMBOLS='_sdata_begin = . ;'
OTHER_BSS_SYMBOLS='
  _bss_start = ALIGN(4) ;
'
# This sets the stack to the top of the simulator memory (2^19 bytes).
STACK_ADDR=0x8000000

SCORE_NAME=${EMULATION_NAME}
if [ "${SCORE_NAME}" = "score3_cgc" ] ; then
ARCH=score3
fi

if [ "${SCORE_NAME}" = "score7_cgc" ] ; then
ARCH=score7
fi

MACHINE=
ENTRY=_start
EMBEDDED=yes
GENERATE_SHLIB_SCRIPT=yes
