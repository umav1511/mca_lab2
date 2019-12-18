
OUTPUT_FORMAT("elf32-rvex")
OUTPUT_ARCH(rvex)
ENTRY(_start)
MEMORY
{
  ram : ORIGIN = 0x02000000, LENGTH = 32M
}
SECTIONS
{
  .text :
  {
    __TEXT_START = .;
    *(.init)
    *(.text)
    __TEXT_END = .;
  } > ram
  .data :
  {
    __DATA_START = .;
    *(.rodata*)
    *(.data_4) *(.data_2) *(.data_1) *(.data) *(.data.*) *(.gnu.linkonce.d.*)
    __DATA_END = .;
    . = ALIGN(16);
  } > ram
  .bss (NOLOAD) :
  {
    __BSS_START = .;
    *(.bss_4) *(.bss_2) *(.bss_1) *(.bss) *(COMMON) *(.bss.*) *(.gnu.linkonce.b.*)
    __BSS_END = .;
  } > ram
  .stack (NOLOAD) :
  {
    . = ALIGN(4);
    . += 0x6000;
    __STACK_START = .;
  } > ram
  .heap (NOLOAD) :
  {
    . = ALIGN(4);
    end = .;
    _end = .;
    __HEAP_START = .;
    . += 0x200000; 
    __HEAP_MAX = .;
  } > ram
  .comment        0 : { *(.comment) }
  .debug_aranges  0 : { *(.debug_aranges) }
  .debug_pubnames 0 : { *(.debug_pubnames) }
  .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
  .debug_abbrev   0 : { *(.debug_abbrev) }
  .debug_line     0 : { *(.debug_line) }
  .debug_frame    0 : { *(.debug_frame) }
  .debug_str      0 : { *(.debug_str) }
  .debug_loc      0 : { *(.debug_loc) }
  .debug_macinfo  0 : { *(.debug_macinfo) }
}
__DATA_IMAGE_START = LOADADDR(.data);
