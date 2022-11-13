SECTIONS
{
	. = 0x7C00;

	.text :
	{
		boot.o (.text);
		* (.text);
		* (.rodata);
		* (.data);
		* (.bss);
		. = 0x7DFE;
		BYTE(0x55);
		BYTE(0xAA);
	}
}
