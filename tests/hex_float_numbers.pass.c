/*
 * fragment HexadecimalFloatingConstant
 *    : HexadecimalPrefix (HexadecimalFractionalConstant | HexadecimalDigitSequence) BinaryExponentPart FloatingSuffix?
 *    ; 
 */

int
main (void)
{
  float a = 0x123456789abcdef.123456789abcdefp1;
  float b = 0x123456789abcdef.123456789abcdefp-1;
  float c = 0x.0p-1;
  float d = 0x.0p1;
  float e = 0x.0p1f;
  float f = 0x.0p1l;
}
