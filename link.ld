SECTIONS
{
	. = 0x7C00;

	.text :
	{
		boot.o (.text);
		* (.text);
		* (.data);
		. = 0x200 - 2;
		BYTE(0x55);
		BYTE(0xAA);
	}
}
