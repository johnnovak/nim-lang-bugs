import unittest
# 64-bit, OS X

type Vec3[T] = array[3, T]

proc vec3[T](x: T, y: T, z: T): Vec3[T] =
  Vec3([x, y, z])

var
  # no errors, the compiler behaves as it should

  a12 = vec3(1'u8, 2'u8, 3'u8)
  a13 = vec3(1'u16, 2'u16, 3'u16)
  a14 = vec3(1'u32, 2'u32, 3'u32)
  a15 = vec3(1'u64, 2'u64, 3'u64)

#  a22 = vec3[int](1'u8, 2'u8, 3'u8)
#  a23 = vec3[int](1'u16, 2'u16, 3'u16)
#  a24 = vec3[int](1'u32, 2'u32, 3'u32)
#  a25 = vec3[int](1'u64, 2'u64, 3'u64)

#  a32 = vec3[int8](1'u8, 2'u8, 3'u8)
#  a33 = vec3[int8](1'u16, 2'u16, 3'u16)
#  a34 = vec3[int8](1'u32, 2'u32, 3'u32)
#  a35 = vec3[int8](1'u64, 2'u64, 3'u64)

#  a42 = vec3[int16](1'u8, 2'u8, 3'u8)
#  a43 = vec3[int16](1'u16, 2'u16, 3'u16)
#  a44 = vec3[int16](1'u32, 2'u32, 3'u32)
#  a45 = vec3[int16](1'u64, 2'u64, 3'u64)

#  a52 = vec3[int32](1'u8, 2'u8, 3'u8)
#  a53 = vec3[int32](1'u16, 2'u16, 3'u16)
#  a54 = vec3[int32](1'u32, 2'u32, 3'u32)
#  a55 = vec3[int32](1'u64, 2'u64, 3'u64)

#  a62 = vec3[int64](1'u8, 2'u8, 3'u8)
#  a63 = vec3[int64](1'u16, 2'u16, 3'u16)
#  a64 = vec3[int64](1'u32, 2'u32, 3'u32)
#  a65 = vec3[int32](1'u64, 2'u64, 3'u64)


#  b11: Vec3[int8] = vec3(1, 2, 3)
#  b12: Vec3[int8] = vec3(1'u8, 2'u8, 3'u8)
#  b13: Vec3[int8] = vec3(1'u16, 2'u16, 3'u16)
#  b14: Vec3[int8] = vec3(1'u32, 2'u32, 3'u32)
#  b15: Vec3[int8] = vec3(1'u64, 2'u64, 3'u64)

#  b21: Vec3[int8] = vec3[uint](1, 2, 3)
#  b22: Vec3[int8] = vec3[uint](1'u8, 2'u8, 3'u8)
#  b23: Vec3[int8] = vec3[uint](1'u16, 2'u16, 3'u16)
#  b24: Vec3[int8] = vec3[uint](1'u32, 2'u32, 3'u32)
#  b25: Vec3[int8] = vec3[uint](1'u64, 2'u64, 3'u64)

#  b31: Vec3[int8] = vec3[uint8](1, 2, 3)
#  b32: Vec3[int8] = vec3[uint8](1'u8, 2'u8, 3'u8)
#  b33: Vec3[int8] = vec3[uint8](1'u16, 2'u16, 3'u16)
#  b34: Vec3[int8] = vec3[uint8](1'u32, 2'u32, 3'u32)
#  b35: Vec3[int8] = vec3[uint8](1'u64, 2'u64, 3'u64)

#  b41: Vec3[int8] = vec3[uint16](1, 2, 3)
#  b42: Vec3[int8] = vec3[uint16](1'u8, 2'u8, 3'u8)
#  b43: Vec3[int8] = vec3[uint16](1'u16, 2'u16, 3'u16)
#  b44: Vec3[int8] = vec3[uint16](1'u32, 2'u32, 3'u32)
#  b45: Vec3[int8] = vec3[uint16](1'u64, 2'u64, 3'u64)

#  b51: Vec3[int8] = vec3[uint32](1, 2, 3)
#  b52: Vec3[int8] = vec3[uint32](1'u8, 2'u8, 3'u8)
#  b53: Vec3[int8] = vec3[uint32](1'u16, 2'u16, 3'u16)
#  b54: Vec3[int8] = vec3[uint32](1'u32, 2'u32, 3'u32)
#  b55: Vec3[int8] = vec3[uint32](1'u64, 2'u64, 3'u64)

#  b61: Vec3[int8] = vec3[uint64](1, 2, 3)
#  b62: Vec3[int8] = vec3[uint64](1'u8, 2'u8, 3'u8)
#  b63: Vec3[int8] = vec3[uint64](1'u16, 2'u16, 3'u16)
#  b64: Vec3[int8] = vec3[uint64](1'u32, 2'u32, 3'u32)
#  b65: Vec3[int8] = vec3[uint32](1'u64, 2'u64, 3'u64)


#  c11: Vec3[int16] = vec3(1, 2, 3)
#  c12: Vec3[int16] = vec3(1'u8, 2'u8, 3'u8)
#  c13: Vec3[int16] = vec3(1'u16, 2'u16, 3'u16)
#  c14: Vec3[int16] = vec3(1'u32, 2'u32, 3'u32)
#  c15: Vec3[int16] = vec3(1'u64, 2'u64, 3'u64)

#  c21: Vec3[int16] = vec3[uint](1, 2, 3)
#  c22: Vec3[int16] = vec3[uint](1'u8, 2'u8, 3'u8)
#  c23: Vec3[int16] = vec3[uint](1'u16, 2'u16, 3'u16)
#  c24: Vec3[int16] = vec3[uint](1'u32, 2'u32, 3'u32)
#  c25: Vec3[int16] = vec3[uint](1'u64, 2'u64, 3'u64)

#  c31: Vec3[int16] = vec3[uint8](1, 2, 3)
#  c32: Vec3[int16] = vec3[uint8](1'u8, 2'u8, 3'u8)
#  c33: Vec3[int16] = vec3[uint8](1'u16, 2'u16, 3'u16)
#  c34: Vec3[int16] = vec3[uint8](1'u32, 2'u32, 3'u32)
#  c35: Vec3[int16] = vec3[uint8](1'u64, 2'u64, 3'u64)

#  c41: Vec3[int16] = vec3[uint16](1, 2, 3)
#  c42: Vec3[int16] = vec3[uint16](1'u8, 2'u8, 3'u8)
#  c43: Vec3[int16] = vec3[uint16](1'u16, 2'u16, 3'u16)
#  c44: Vec3[int16] = vec3[uint16](1'u32, 2'u32, 3'u32)
#  c45: Vec3[int16] = vec3[uint16](1'u64, 2'u64, 3'u64)

#  c51: Vec3[int16] = vec3[uint32](1, 2, 3)
#  c52: Vec3[int16] = vec3[uint32](1'u8, 2'u8, 3'u8)
#  c53: Vec3[int16] = vec3[uint32](1'u16, 2'u16, 3'u16)
#  c54: Vec3[int16] = vec3[uint32](1'u32, 2'u32, 3'u32)
#  c55: Vec3[int16] = vec3[uint32](1'u64, 2'u64, 3'u64)

#  c61: Vec3[int16] = vec3[uint64](1, 2, 3)
#  c62: Vec3[int16] = vec3[uint64](1'u8, 2'u8, 3'u8)
#  c63: Vec3[int16] = vec3[uint64](1'u16, 2'u16, 3'u16)
#  c64: Vec3[int16] = vec3[uint64](1'u32, 2'u32, 3'u32)
#  c65: Vec3[int16] = vec3[uint32](1'u64, 2'u64, 3'u64)


#  d11: Vec3[int32] = vec3(1, 2, 3)
#  d12: Vec3[int32] = vec3(1'u8, 2'u8, 3'u8)
#  d13: Vec3[int32] = vec3(1'u16, 2'u16, 3'u16)
#  d14: Vec3[int32] = vec3(1'u32, 2'u32, 3'u32)
#  d15: Vec3[int32] = vec3(1'u64, 2'u64, 3'u64)

#  d21: Vec3[int32] = vec3[uint](1, 2, 3)
#  d22: Vec3[int32] = vec3[uint](1'u8, 2'u8, 3'u8)
#  d23: Vec3[int32] = vec3[uint](1'u16, 2'u16, 3'u16)
#  d24: Vec3[int32] = vec3[uint](1'u32, 2'u32, 3'u32)
#  d25: Vec3[int32] = vec3[uint](1'u64, 2'u64, 3'u64)

#  d31: Vec3[int32] = vec3[uint8](1, 2, 3)
#  d32: Vec3[int32] = vec3[uint8](1'u8, 2'u8, 3'u8)
#  d33: Vec3[int32] = vec3[uint8](1'u16, 2'u16, 3'u16)
#  d34: Vec3[int32] = vec3[uint8](1'u32, 2'u32, 3'u32)
#  d35: Vec3[int32] = vec3[uint8](1'u64, 2'u64, 3'u64)

#  d41: Vec3[int32] = vec3[uint16](1, 2, 3)
#  d42: Vec3[int32] = vec3[uint16](1'u8, 2'u8, 3'u8)
#  d43: Vec3[int32] = vec3[uint16](1'u16, 2'u16, 3'u16)
#  d44: Vec3[int32] = vec3[uint16](1'u32, 2'u32, 3'u32)
#  d45: Vec3[int32] = vec3[uint16](1'u64, 2'u64, 3'u64)

#  d51: Vec3[int32] = vec3[uint32](1, 2, 3)
#  d52: Vec3[int32] = vec3[uint32](1'u8, 2'u8, 3'u8)
#  d53: Vec3[int32] = vec3[uint32](1'u16, 2'u16, 3'u16)
#  d54: Vec3[int32] = vec3[uint32](1'u32, 2'u32, 3'u32)
#  d55: Vec3[int32] = vec3[uint32](1'u64, 2'u64, 3'u64)

#  d61: Vec3[int32] = vec3[uint64](1, 2, 3)
#  d62: Vec3[int32] = vec3[uint64](1'u8, 2'u8, 3'u8)
#  d63: Vec3[int32] = vec3[uint64](1'u16, 2'u16, 3'u16)
#  d64: Vec3[int32] = vec3[uint64](1'u32, 2'u32, 3'u32)
#  d65: Vec3[int32] = vec3[uint32](1'u64, 2'u64, 3'u64)


#  e11: Vec3[int64] = vec3(1, 2, 3)
#  e12: Vec3[int64] = vec3(1'u8, 2'u8, 3'u8)
#  e13: Vec3[int64] = vec3(1'u16, 2'u16, 3'u16)
#  e14: Vec3[int64] = vec3(1'u32, 2'u32, 3'u32)
#  e15: Vec3[int64] = vec3(1'u64, 2'u64, 3'u64)

#  e21: Vec3[int64] = vec3[uint](1, 2, 3)
#  e22: Vec3[int64] = vec3[uint](1'u8, 2'u8, 3'u8)
#  e23: Vec3[int64] = vec3[uint](1'u16, 2'u16, 3'u16)
#  e24: Vec3[int64] = vec3[uint](1'u32, 2'u32, 3'u32)
#  e25: Vec3[int64] = vec3[uint](1'u64, 2'u64, 3'u64)

#  e31: Vec3[int64] = vec3[uint8](1, 2, 3)
#  e32: Vec3[int64] = vec3[uint8](1'u8, 2'u8, 3'u8)
#  e33: Vec3[int64] = vec3[uint8](1'u16, 2'u16, 3'u16)
#  e34: Vec3[int64] = vec3[uint8](1'u32, 2'u32, 3'u32)
#  e35: Vec3[int64] = vec3[uint8](1'u64, 2'u64, 3'u64)

#  e41: Vec3[int64] = vec3[uint16](1, 2, 3)
#  e42: Vec3[int64] = vec3[uint16](1'u8, 2'u8, 3'u8)
#  e43: Vec3[int64] = vec3[uint16](1'u16, 2'u16, 3'u16)
#  e44: Vec3[int64] = vec3[uint16](1'u32, 2'u32, 3'u32)
#  e45: Vec3[int64] = vec3[uint16](1'u64, 2'u64, 3'u64)

#  e51: Vec3[int64] = vec3[uint32](1, 2, 3)
#  e52: Vec3[int64] = vec3[uint32](1'u8, 2'u8, 3'u8)
#  e53: Vec3[int64] = vec3[uint32](1'u16, 2'u16, 3'u16)
#  e54: Vec3[int64] = vec3[uint32](1'u32, 2'u32, 3'u32)
#  e55: Vec3[int64] = vec3[uint32](1'u64, 2'u64, 3'u64)

#  e61: Vec3[int64] = vec3[uint64](1, 2, 3)
#  e62: Vec3[int64] = vec3[uint64](1'u8, 2'u8, 3'u8)
#  e63: Vec3[int64] = vec3[uint64](1'u16, 2'u16, 3'u16)
#  e64: Vec3[int64] = vec3[uint64](1'u32, 2'u32, 3'u32)
#  e65: Vec3[int64] = vec3[uint32](1'u64, 2'u64, 3'u64)

