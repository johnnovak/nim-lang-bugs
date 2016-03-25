import unittest
# 64-bit, OS X

type Vec3[T] = array[3, T]

proc vec3[T](x: T, y: T, z: T): Vec3[T] =
  Vec3([x, y, z])

var
  # normal lines without extra comments means the case is correct
  # commented out lines would correctly trigger compile errors

  a11 = vec3(1, 2, 3)
  a12 = vec3(1'u8, 2'u8, 3'u8)
  a13 = vec3(1'u16, 2'u16, 3'u16)
  a14 = vec3(1'u32, 2'u32, 3'u32)
  a15 = vec3(1'u64, 2'u64, 3'u64)

#  a21 = vec3[uint](1, 2, 3)
#  a22 = vec3[uint](1'u8, 2'u8, 3'u8)
#  a23 = vec3[uint](1'u16, 2'u16, 3'u16)
#  a24 = vec3[uint](1'u32, 2'u32, 3'u32)
#  a25 = vec3[uint](1'u64, 2'u64, 3'u64)

  a31 = vec3[uint8](1, 2, 3)
  a32 = vec3[uint8](1'u8, 2'u8, 3'u8)
#  a33 = vec3[uint8](1'u16, 2'u16, 3'u16)
#  a34 = vec3[uint8](1'u32, 2'u32, 3'u32)
#  a35 = vec3[uint8](1'u64, 2'u64, 3'u64)

  a41 = vec3[uint16](1, 2, 3)
  a42 = vec3[uint16](1'u8, 2'u8, 3'u8)
  a43 = vec3[uint16](1'u16, 2'u16, 3'u16)
#  a44 = vec3[uint16](1'u32, 2'u32, 3'u32)
#  a45 = vec3[uint16](1'u64, 2'u64, 3'u64)

  a51 = vec3[uint32](1, 2, 3)
  a52 = vec3[uint32](1'u8, 2'u8, 3'u8)
  a53 = vec3[uint32](1'u16, 2'u16, 3'u16)
  a54 = vec3[uint32](1'u32, 2'u32, 3'u32)
#  a55 = vec3[uint32](1'u64, 2'u64, 3'u64)

  a61 = vec3[uint64](1, 2, 3)
  a62 = vec3[uint64](1'u8, 2'u8, 3'u8)
  a63 = vec3[uint64](1'u16, 2'u16, 3'u16)
  a64 = vec3[uint64](1'u32, 2'u32, 3'u32)
  a65 = vec3[uint64](1'u64, 2'u64, 3'u64)


#  b11: Vec3[uint8] = vec3(1, 2, 3)
  b12: Vec3[uint8] = vec3(1'u8, 2'u8, 3'u8)
#  b13: Vec3[uint8] = vec3(1'u16, 2'u16, 3'u16)
#  b14: Vec3[uint8] = vec3(1'u32, 2'u32, 3'u32)
#  b15: Vec3[uint8] = vec3(1'u64, 2'u64, 3'u64)

#  b21: Vec3[uint8] = vec3[uint](1, 2, 3)
#  b22: Vec3[uint8] = vec3[uint](1'u8, 2'u8, 3'u8)
#  b23: Vec3[uint8] = vec3[uint](1'u16, 2'u16, 3'u16)
#  b24: Vec3[uint8] = vec3[uint](1'u32, 2'u32, 3'u32)
#  b25: Vec3[uint8] = vec3[uint](1'u64, 2'u64, 3'u64)

  b31: Vec3[uint8] = vec3[uint8](1, 2, 3)
  b32: Vec3[uint8] = vec3[uint8](1'u8, 2'u8, 3'u8)
#  b33: Vec3[uint8] = vec3[uint8](1'u16, 2'u16, 3'u16)
#  b34: Vec3[uint8] = vec3[uint8](1'u32, 2'u32, 3'u32)
#  b35: Vec3[uint8] = vec3[uint8](1'u64, 2'u64, 3'u64)

#  b41: Vec3[uint8] = vec3[uint16](1, 2, 3)
#  b42: Vec3[uint8] = vec3[uint16](1'u8, 2'u8, 3'u8)
#  b43: Vec3[uint8] = vec3[uint16](1'u16, 2'u16, 3'u16)
#  b44: Vec3[uint8] = vec3[uint16](1'u32, 2'u32, 3'u32)
#  b45: Vec3[uint8] = vec3[uint16](1'u64, 2'u64, 3'u64)

#  b51: Vec3[uint8] = vec3[uint32](1, 2, 3)
#  b52: Vec3[uint8] = vec3[uint32](1'u8, 2'u8, 3'u8)
#  b53: Vec3[uint8] = vec3[uint32](1'u16, 2'u16, 3'u16)
#  b54: Vec3[uint8] = vec3[uint32](1'u32, 2'u32, 3'u32)
#  b55: Vec3[uint8] = vec3[uint32](1'u64, 2'u64, 3'u64)

#  b61: Vec3[uint8] = vec3[uint64](1, 2, 3)
#  b62: Vec3[uint8] = vec3[uint64](1'u8, 2'u8, 3'u8)
#  b63: Vec3[uint8] = vec3[uint64](1'u16, 2'u16, 3'u16)
#  b64: Vec3[uint8] = vec3[uint64](1'u32, 2'u32, 3'u32)
#  b65: Vec3[uint8] = vec3[uint32](1'u64, 2'u64, 3'u64)


#  c11: Vec3[uint16] = vec3(1, 2, 3)
  c12: Vec3[uint16] = vec3(1'u8, 2'u8, 3'u8)   # should not compile but does and gives incorrect results
  c13: Vec3[uint16] = vec3(1'u16, 2'u16, 3'u16)
#  c14: Vec3[uint16] = vec3(1'u32, 2'u32, 3'u32)
#  c15: Vec3[uint16] = vec3(1'u64, 2'u64, 3'u64)

#  c21: Vec3[uint16] = vec3[uint](1, 2, 3)
#  c22: Vec3[uint16] = vec3[uint](1'u8, 2'u8, 3'u8)
#  c23: Vec3[uint16] = vec3[uint](1'u16, 2'u16, 3'u16)
#  c24: Vec3[uint16] = vec3[uint](1'u32, 2'u32, 3'u32)
#  c25: Vec3[uint16] = vec3[uint](1'u64, 2'u64, 3'u64)

  c31: Vec3[uint16] = vec3[uint8](1, 2, 3)   # should not compile but does and gives incorrect results
  c32: Vec3[uint16] = vec3[uint8](1'u8, 2'u8, 3'u8)   # should not compile but does and gives incorrect results
#  c33: Vec3[uint16] = vec3[uint8](1'u16, 2'u16, 3'u16)
#  c34: Vec3[uint16] = vec3[uint8](1'u32, 2'u32, 3'u32)
#  c35: Vec3[uint16] = vec3[uint8](1'u64, 2'u64, 3'u64)

  c41: Vec3[uint16] = vec3[uint16](1, 2, 3)
  c42: Vec3[uint16] = vec3[uint16](1'u8, 2'u8, 3'u8)
  c43: Vec3[uint16] = vec3[uint16](1'u16, 2'u16, 3'u16)
#  c44: Vec3[uint16] = vec3[uint16](1'u32, 2'u32, 3'u32)
#  c45: Vec3[uint16] = vec3[uint16](1'u64, 2'u64, 3'u64)

#  c51: Vec3[uint16] = vec3[uint32](1, 2, 3)
#  c52: Vec3[uint16] = vec3[uint32](1'u8, 2'u8, 3'u8)
#  c53: Vec3[uint16] = vec3[uint32](1'u16, 2'u16, 3'u16)
#  c54: Vec3[uint16] = vec3[uint32](1'u32, 2'u32, 3'u32)
#  c55: Vec3[uint16] = vec3[uint32](1'u64, 2'u64, 3'u64)

#  c61: Vec3[uint16] = vec3[uint64](1, 2, 3)
#  c62: Vec3[uint16] = vec3[uint64](1'u8, 2'u8, 3'u8)
#  c63: Vec3[uint16] = vec3[uint64](1'u16, 2'u16, 3'u16)
#  c64: Vec3[uint16] = vec3[uint64](1'u32, 2'u32, 3'u32)
#  c65: Vec3[uint16] = vec3[uint32](1'u64, 2'u64, 3'u64)


#  d11: Vec3[uint32] = vec3(1, 2, 3)
  d12: Vec3[uint32] = vec3(1'u8, 2'u8, 3'u8)   # should not compile but does and gives incorrect results
  d13: Vec3[uint32] = vec3(1'u16, 2'u16, 3'u16)   # should not compile but does and gives incorrect results
  d14: Vec3[uint32] = vec3(1'u32, 2'u32, 3'u32)

#  d15: Vec3[uint32] = vec3(1'u64, 2'u64, 3'u64)

#  d21: Vec3[uint32] = vec3[uint](1, 2, 3)
#  d22: Vec3[uint32] = vec3[uint](1'u8, 2'u8, 3'u8)
#  d23: Vec3[uint32] = vec3[uint](1'u16, 2'u16, 3'u16)
#  d24: Vec3[uint32] = vec3[uint](1'u32, 2'u32, 3'u32)
#  d25: Vec3[uint32] = vec3[uint](1'u64, 2'u64, 3'u64)

  d31: Vec3[uint32] = vec3[uint8](1, 2, 3)   # should not compile but does and gives incorrect results
  d32: Vec3[uint32] = vec3[uint8](1'u8, 2'u8, 3'u8)   # should not compile but does and gives incorrect results
#  d33: Vec3[uint32] = vec3[uint8](1'u16, 2'u16, 3'u16)
#  d34: Vec3[uint32] = vec3[uint8](1'u32, 2'u32, 3'u32)
#  d35: Vec3[uint32] = vec3[uint8](1'u64, 2'u64, 3'u64)

  d41: Vec3[uint32] = vec3[uint16](1, 2, 3)   # should not compile but does and gives incorrect results
  d42: Vec3[uint32] = vec3[uint16](1'u8, 2'u8, 3'u8)   # should not compile but does and gives incorrect results
  d43: Vec3[uint32] = vec3[uint16](1'u16, 2'u16, 3'u16)   # should not compile but does and gives incorrect results
#  d44: Vec3[uint32] = vec3[uint16](1'u32, 2'u32, 3'u32)
#  d45: Vec3[uint32] = vec3[uint16](1'u64, 2'u64, 3'u64)

  d51: Vec3[uint32] = vec3[uint32](1, 2, 3)
  d52: Vec3[uint32] = vec3[uint32](1'u8, 2'u8, 3'u8)
  d53: Vec3[uint32] = vec3[uint32](1'u16, 2'u16, 3'u16)
  d54: Vec3[uint32] = vec3[uint32](1'u32, 2'u32, 3'u32)
#  d55: Vec3[uint32] = vec3[uint32](1'u64, 2'u64, 3'u64)

#  d61: Vec3[uint32] = vec3[uint64](1, 2, 3)
#  d62: Vec3[uint32] = vec3[uint64](1'u8, 2'u8, 3'u8)
#  d63: Vec3[uint32] = vec3[uint64](1'u16, 2'u16, 3'u16)
#  d64: Vec3[uint32] = vec3[uint64](1'u32, 2'u32, 3'u32)
#  d65: Vec3[uint32] = vec3[uint32](1'u64, 2'u64, 3'u64)


#  e11: Vec3[uint64] = vec3(1, 2, 3)
  e12: Vec3[uint64] = vec3(1'u8, 2'u8, 3'u8)   # should not compile but does and gives incorrect results
  e13: Vec3[uint64] = vec3(1'u16, 2'u16, 3'u16)   # should not compile but does and gives incorrect results
  e14: Vec3[uint64] = vec3(1'u32, 2'u32, 3'u32)   # should not compile but does and gives incorrect results
  e15: Vec3[uint64] = vec3(1'u64, 2'u64, 3'u64)

#  e21: Vec3[uint64] = vec3[uint](1, 2, 3)
#  e22: Vec3[uint64] = vec3[uint](1'u8, 2'u8, 3'u8)
#  e23: Vec3[uint64] = vec3[uint](1'u16, 2'u16, 3'u16)
#  e24: Vec3[uint64] = vec3[uint](1'u32, 2'u32, 3'u32)
#  e25: Vec3[uint64] = vec3[uint](1'u64, 2'u64, 3'u64)

  e31: Vec3[uint64] = vec3[uint8](1, 2, 3)   # should not compile but does and gives incorrect results
  e32: Vec3[uint64] = vec3[uint8](1'u8, 2'u8, 3'u8)   # should not compile but does and gives incorrect results
#  e33: Vec3[uint64] = vec3[uint8](1'u16, 2'u16, 3'u16)
#  e34: Vec3[uint64] = vec3[uint8](1'u32, 2'u32, 3'u32)
#  e35: Vec3[uint64] = vec3[uint8](1'u64, 2'u64, 3'u64)

  e41: Vec3[uint64] = vec3[uint16](1, 2, 3)   # should not compile but does and gives incorrect results
  e42: Vec3[uint64] = vec3[uint16](1'u8, 2'u8, 3'u8)   # should not compile but does and gives incorrect results
  e43: Vec3[uint64] = vec3[uint16](1'u16, 2'u16, 3'u16)   # should not compile but does and gives incorrect results
#  e44: Vec3[uint64] = vec3[uint16](1'u32, 2'u32, 3'u32)
#  e45: Vec3[uint64] = vec3[uint16](1'u64, 2'u64, 3'u64)

  e51: Vec3[uint64] = vec3[uint32](1, 2, 3)   # should not compile but does and gives incorrect results
  e52: Vec3[uint64] = vec3[uint32](1'u8, 2'u8, 3'u8)   # should not compile but does and gives incorrect results
  e53: Vec3[uint64] = vec3[uint32](1'u16, 2'u16, 3'u16)   # should not compile but does and gives incorrect results
  e54: Vec3[uint64] = vec3[uint32](1'u32, 2'u32, 3'u32)   # should not compile but does and gives incorrect results
#  e55: Vec3[uint64] = vec3[uint32](1'u64, 2'u64, 3'u64)

  e61: Vec3[uint64] = vec3[uint64](1, 2, 3)
  e62: Vec3[uint64] = vec3[uint64](1'u8, 2'u8, 3'u8)
  e63: Vec3[uint64] = vec3[uint64](1'u16, 2'u16, 3'u16)
  e64: Vec3[uint64] = vec3[uint64](1'u32, 2'u32, 3'u32)
#  e65: Vec3[uint64] = vec3[uint32](1'u64, 2'u64, 3'u64)


echo  "a11[0]: " & $a11[0]
check (a11[0] == 1)
echo  "a11[1]: " & $a11[1]
check (a11[1] == 2)
echo  "a11[2]: " & $a11[2]
check (a11[2] == 3)
echo ""

echo  "a12[0]: " & $a12[0]
check (a12[0] == 1)
echo  "a12[1]: " & $a12[1]
check (a12[1] == 2)
echo  "a12[2]: " & $a12[2]
check (a12[2] == 3)
echo ""

echo  "a13[0]: " & $a13[0]
check (a13[0] == 1)
echo  "a13[1]: " & $a13[1]
check (a13[1] == 2)
echo  "a13[2]: " & $a13[2]
check (a13[2] == 3)
echo ""

echo  "a14[0]: " & $a14[0]
check (a14[0] == 1)
echo  "a14[1]: " & $a14[1]
check (a14[1] == 2)
echo  "a14[2]: " & $a14[2]
check (a14[2] == 3)
echo ""

echo  "a15[0]: " & $a15[0]
check (a15[0] == 1)
echo  "a15[1]: " & $a15[1]
check (a15[1] == 2)
echo  "a15[2]: " & $a15[2]
check (a15[2] == 3)
echo ""


echo  "a31[0]: " & $a31[0]
check (a31[0] == 1)
echo  "a31[1]: " & $a31[1]
check (a31[1] == 2)
echo  "a31[2]: " & $a31[2]
check (a31[2] == 3)
echo ""

echo  "a32[0]: " & $a32[0]
check (a32[0] == 1)
echo  "a32[1]: " & $a32[1]
check (a32[1] == 2)
echo  "a32[2]: " & $a32[2]
check (a32[2] == 3)
echo ""


echo  "a41[0]: " & $a41[0]
check (a41[0] == 1)
echo  "a41[1]: " & $a41[1]
check (a41[1] == 2)
echo  "a41[2]: " & $a41[2]
check (a41[2] == 3)
echo ""

echo  "a42[0]: " & $a42[0]
check (a42[0] == 1)
echo  "a42[1]: " & $a42[1]
check (a42[1] == 2)
echo  "a42[2]: " & $a42[2]
check (a42[2] == 3)
echo ""

echo  "a43[0]: " & $a43[0]
check (a43[0] == 1)
echo  "a43[1]: " & $a43[1]
check (a43[1] == 2)
echo  "a43[2]: " & $a43[2]
check (a43[2] == 3)
echo ""


echo  "a51[0]: " & $a51[0]
check (a51[0] == 1)
echo  "a51[1]: " & $a51[1]
check (a51[1] == 2)
echo  "a51[2]: " & $a51[2]
check (a51[2] == 3)
echo ""

echo  "a52[0]: " & $a52[0]
check (a52[0] == 1)
echo  "a52[1]: " & $a52[1]
check (a52[1] == 2)
echo  "a52[2]: " & $a52[2]
check (a52[2] == 3)
echo ""

echo  "a53[0]: " & $a53[0]
check (a53[0] == 1)
echo  "a53[1]: " & $a53[1]
check (a53[1] == 2)
echo  "a53[2]: " & $a53[2]
check (a53[2] == 3)
echo ""

echo  "a54[0]: " & $a54[0]
check (a54[0] == 1)
echo  "a54[1]: " & $a54[1]
check (a54[1] == 2)
echo  "a54[2]: " & $a54[2]
check (a54[2] == 3)
echo ""


echo  "a61[0]: " & $a61[0]
check (a61[0] == 1)
echo  "a61[1]: " & $a61[1]
check (a61[1] == 2)
echo  "a61[2]: " & $a61[2]
check (a61[2] == 3)
echo ""

echo  "a62[0]: " & $a62[0]
check (a62[0] == 1)
echo  "a62[1]: " & $a62[1]
check (a62[1] == 2)
echo  "a62[2]: " & $a62[2]
check (a62[2] == 3)
echo ""

echo  "a63[0]: " & $a63[0]
check (a63[0] == 1)
echo  "a63[1]: " & $a63[1]
check (a63[1] == 2)
echo  "a63[2]: " & $a63[2]
check (a63[2] == 3)
echo ""

echo  "a64[0]: " & $a64[0]
check (a64[0] == 1)
echo  "a64[1]: " & $a64[1]
check (a64[1] == 2)
echo  "a64[2]: " & $a64[2]
check (a64[2] == 3)
echo ""

echo  "a65[0]: " & $a65[0]
check (a65[0] == 1)
echo  "a65[1]: " & $a65[1]
check (a65[1] == 2)
echo  "a65[2]: " & $a65[2]
check (a65[2] == 3)
echo ""



echo  "b12[0]: " & $b12[0]
check (b12[0] == 1)
echo  "b12[1]: " & $b12[1]
check (b12[1] == 2)
echo  "b12[2]: " & $b12[2]
check (b12[2] == 3)
echo ""

echo  "b31[0]: " & $b31[0]
check (b31[0] == 1)
echo  "b31[1]: " & $b31[1]
check (b31[1] == 2)
echo  "b31[2]: " & $b31[2]
check (b31[2] == 3)
echo ""

echo  "b32[0]: " & $b32[0]
check (b32[0] == 1)
echo  "b32[1]: " & $b32[1]
check (b32[1] == 2)
echo  "b32[2]: " & $b32[2]
check (b32[2] == 3)
echo ""


echo  "c12[0]: " & $c12[0]      # FAIL
check (c12[0] == 1)             # FAIL
echo  "c12[1]: " & $c12[1]      # FAIL
check (c12[1] == 2)             # FAIL
echo  "c12[2]: " & $c12[2]      # FAIL
check (c12[2] == 3)             # FAIL
echo ""

echo  "c13[0]: " & $c13[0]
check (c13[0] == 1)
echo  "c13[1]: " & $c13[1]
check (c13[1] == 2)
echo  "c13[2]: " & $c13[2]
check (c13[2] == 3)
echo ""

echo  "c31[0]: " & $c31[0]      # FAIL
check (c31[0] == 1)             # FAIL
echo  "c31[1]: " & $c31[1]      # FAIL
check (c31[1] == 2)             # FAIL
echo  "c31[2]: " & $c31[2]      # FAIL
check (c31[2] == 3)             # FAIL
echo ""

echo  "c32[0]: " & $c32[0]      # FAIL
check (c32[0] == 1)             # FAIL
echo  "c32[1]: " & $c32[1]      # FAIL
check (c32[1] == 2)             # FAIL
echo  "c32[2]: " & $c32[2]      # FAIL
check (c32[2] == 3)             # FAIL
echo ""

echo  "c41[0]: " & $c41[0]
check (c41[0] == 1)
echo  "c41[1]: " & $c41[1]
check (c41[1] == 2)
echo  "c41[2]: " & $c41[2]
check (c41[2] == 3)
echo ""

echo  "c42[0]: " & $c42[0]
check (c42[0] == 1)
echo  "c42[1]: " & $c42[1]
check (c42[1] == 2)
echo  "c42[2]: " & $c42[2]
check (c42[2] == 3)
echo ""

echo  "c43[0]: " & $c43[0]
check (c43[0] == 1)
echo  "c43[1]: " & $c43[1]
check (c43[1] == 2)
echo  "c43[2]: " & $c43[2]
check (c43[2] == 3)
echo ""



echo  "d12[0]: " & $d12[0]      # FAIL
check (d12[0] == 1)             # FAIL
echo  "d12[1]: " & $d12[1]      # FAIL
check (d12[1] == 2)             # FAIL
echo  "d12[2]: " & $d12[2]      # FAIL
check (d12[2] == 3)             # FAIL
echo ""

echo  "d13[0]: " & $d13[0]      # FAIL
check (d13[0] == 1)             # FAIL
echo  "d13[1]: " & $d13[1]      # FAIL
check (d13[1] == 2)             # FAIL
echo  "d13[2]: " & $d13[2]      # FAIL
check (d13[2] == 3)             # FAIL
echo ""

echo  "d14[0]: " & $d14[0]
check (d14[0] == 1)
echo  "d14[1]: " & $d14[1]
check (d14[1] == 2)
echo  "d14[2]: " & $d14[2]
check (d14[2] == 3)
echo ""


echo  "d31[0]: " & $d31[0]      # FAIL
check (d31[0] == 1)             # FAIL
echo  "d31[1]: " & $d31[1]      # FAIL
check (d31[1] == 2)             # FAIL
echo  "d31[2]: " & $d31[2]      # FAIL
check (d31[2] == 3)             # FAIL
echo ""

echo  "d32[0]: " & $d32[0]      # FAIL
check (d32[0] == 1)             # FAIL
echo  "d32[1]: " & $d32[1]      # FAIL
check (d32[1] == 2)             # FAIL
echo  "d32[2]: " & $d32[2]      # FAIL
check (d32[2] == 3)             # FAIL
echo ""


echo  "d41[0]: " & $d41[0]      # FAIL
check (d41[0] == 1)             # FAIL
echo  "d41[1]: " & $d41[1]      # FAIL
check (d41[1] == 2)             # FAIL
echo  "d41[2]: " & $d41[2]      # FAIL
check (d41[2] == 3)             # FAIL
echo ""

echo  "d42[0]: " & $d42[0]      # FAIL
check (d42[0] == 1)             # FAIL
echo  "d42[1]: " & $d42[1]      # FAIL
check (d42[1] == 2)             # FAIL
echo  "d42[2]: " & $d42[2]      # FAIL
check (d42[2] == 3)             # FAIL
echo ""

echo  "d43[0]: " & $d43[0]      # FAIL
check (d43[0] == 1)             # FAIL
echo  "d43[1]: " & $d43[1]      # FAIL
check (d43[1] == 2)             # FAIL
echo  "d43[2]: " & $d43[2]      # FAIL
check (d43[2] == 3)             # FAIL
echo ""


echo  "d51[0]: " & $d51[0]
check (d51[0] == 1)
echo  "d51[1]: " & $d51[1]
check (d51[1] == 2)
echo  "d51[2]: " & $d51[2]
check (d51[2] == 3)
echo ""

echo  "d52[0]: " & $d52[0]
check (d52[0] == 1)
echo  "d52[1]: " & $d52[1]
check (d52[1] == 2)
echo  "d52[2]: " & $d52[2]
check (d52[2] == 3)
echo ""

echo  "d53[0]: " & $d53[0]
check (d53[0] == 1)
echo  "d53[1]: " & $d53[1]
check (d53[1] == 2)
echo  "d53[2]: " & $d53[2]
check (d53[2] == 3)
echo ""

echo  "d54[0]: " & $d54[0]
check (d54[0] == 1)
echo  "d54[1]: " & $d54[1]
check (d54[1] == 2)
echo  "d54[2]: " & $d54[2]
check (d54[2] == 3)
echo ""


echo  "e12[0]: " & $e12[0]      # FAIL
check (e12[0] == 1)             # FAIL
echo  "e12[1]: " & $e12[1]      # FAIL
check (e12[1] == 2)             # FAIL
echo  "e12[2]: " & $e12[2]      # FAIL
check (e12[2] == 3)             # FAIL
echo ""

echo  "e13[0]: " & $e13[0]      # FAIL
check (e13[0] == 1)             # FAIL
echo  "e13[1]: " & $e13[1]      # FAIL
check (e13[1] == 2)             # FAIL
echo  "e13[2]: " & $e13[2]      # FAIL
check (e13[2] == 3)             # FAIL
echo ""

echo  "e14[0]: " & $e14[0]      # FAIL
check (e14[0] == 1)             # FAIL
echo  "e14[1]: " & $e14[1]      # FAIL
check (e14[1] == 2)             # FAIL
echo  "e14[2]: " & $e14[2]      # FAIL
check (e14[2] == 3)             # FAIL
echo ""

echo  "e15[0]: " & $e15[0]
check (e15[0] == 1)
echo  "e15[1]: " & $e15[1]
check (e15[1] == 2)
echo  "e15[2]: " & $e15[2]
check (e15[2] == 3)
echo ""


echo  "e31[0]: " & $e31[0]      # FAIL
check (e31[0] == 1)             # FAIL
echo  "e31[1]: " & $e31[1]      # FAIL
check (e31[1] == 2)             # FAIL
echo  "e31[2]: " & $e31[2]      # FAIL
check (e31[2] == 3)             # FAIL
echo ""

echo  "e32[0]: " & $e32[0]      # FAIL
check (e32[0] == 1)             # FAIL
echo  "e32[1]: " & $e32[1]      # FAIL
check (e32[1] == 2)             # FAIL
echo  "e32[2]: " & $e32[2]      # FAIL
check (e32[2] == 3)             # FAIL
echo ""


echo  "e41[0]: " & $e41[0]      # FAIL
check (e41[0] == 1)             # FAIL
echo  "e41[1]: " & $e41[1]      # FAIL
check (e41[1] == 2)             # FAIL
echo  "e41[2]: " & $e41[2]      # FAIL
check (e41[2] == 3)             # FAIL
echo ""

echo  "e42[0]: " & $e42[0]      # FAIL
check (e42[0] == 1)             # FAIL
echo  "e42[1]: " & $e42[1]      # FAIL
check (e42[1] == 2)             # FAIL
echo  "e42[2]: " & $e42[2]      # FAIL
check (e42[2] == 3)             # FAIL
echo ""

echo  "e43[0]: " & $e43[0]      # FAIL
check (e43[0] == 1)             # FAIL
echo  "e43[1]: " & $e43[1]      # FAIL
check (e43[1] == 2)             # FAIL
echo  "e43[2]: " & $e43[2]      # FAIL
check (e43[2] == 3)             # FAIL
echo ""


echo  "e51[0]: " & $e51[0]      # FAIL
check (e51[0] == 1)             # FAIL
echo  "e51[1]: " & $e51[1]      # FAIL
check (e51[1] == 2)             # FAIL
echo  "e51[2]: " & $e51[2]      # FAIL
check (e51[2] == 3)             # FAIL
echo ""

echo  "e52[0]: " & $e52[0]      # FAIL
check (e52[0] == 1)             # FAIL
echo  "e52[1]: " & $e52[1]      # FAIL
check (e52[1] == 2)             # FAIL
echo  "e52[2]: " & $e52[2]      # FAIL
check (e52[2] == 3)             # FAIL
echo ""

echo  "e53[0]: " & $e53[0]      # FAIL
check (e53[0] == 1)             # FAIL
echo  "e53[1]: " & $e53[1]      # FAIL
check (e53[1] == 2)             # FAIL
echo  "e53[2]: " & $e53[2]      # FAIL
check (e53[2] == 3)             # FAIL
echo ""

echo  "e54[0]: " & $e54[0]      # FAIL
check (e54[0] == 1)             # FAIL
echo  "e54[1]: " & $e54[1]      # FAIL
check (e54[1] == 2)             # FAIL
echo  "e54[2]: " & $e54[2]      # FAIL
check (e54[2] == 3)             # FAIL
echo ""


echo  "e61[0]: " & $e61[0]
check (e61[0] == 1)
echo  "e61[1]: " & $e61[1]
check (e61[1] == 2)
echo  "e61[2]: " & $e61[2]
check (e61[2] == 3)
echo ""

echo  "e62[0]: " & $e62[0]
check (e62[0] == 1)
echo  "e62[1]: " & $e62[1]
check (e62[1] == 2)
echo  "e62[2]: " & $e62[2]
check (e62[2] == 3)
echo ""

echo  "e63[0]: " & $e63[0]
check (e63[0] == 1)
echo  "e63[1]: " & $e63[1]
check (e63[1] == 2)
echo  "e63[2]: " & $e63[2]
check (e63[2] == 3)
echo ""

echo  "e64[0]: " & $e64[0]
check (e64[0] == 1)
echo  "e64[1]: " & $e64[1]
check (e64[1] == 2)
echo  "e64[2]: " & $e64[2]
check (e64[2] == 3)
echo ""

