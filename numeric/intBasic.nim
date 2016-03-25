# Normal array case
# =================
var a: array[3, int32]
var b: array[3, int64]

#a = [1, 2, 3]                # doesn't compile, but the compiler could figure it out
#a = [1'i16, 2'i16, 3'i16]    # doesn't compile, but the compiler could figure it out
a = [1'i32, 2'i32, 3'i32]     # compiles, correct
#a = [1'i64, 2'i64, 3'i64]    # doesn't compile, but the compiler could figure it out

#b = [1, 2, 3]                # doesn't compile, but the compiler could figure it out
#b = [1'i16, 2'i16, 3'i16]    # doesn't compile, but the compiler could figure it out
#b = [1'i32, 2'i32, 3'i32]    # doesn't compile, but the compiler could figure it out
b = [1'i64, 2'i64, 3'i64]     # compiles, correct

#a = b      # Doesn't compile; copying a int64 array into a int32 array is
            # not allowed. That's correct!
# Error: type mismatch: got (array[0..2, int64]) but expected 'array[0..2,
# int32]'

# Typedef'd array case
# ====================
type Vec3[T] = array[3, T]

var va: Vec3[int32] = Vec3([1'i32, 2'i32, 3'i32])  # va: Vec3[int32]
echo va[0]  # prints 0  OK
echo va[1]  # prints 1  OK
echo va[2]  # prints 2  OK
echo ""

var vb: Vec3[int64] = Vec3([1'i64, 2'i64, 3'i64])  # vb: Vec3[int64]
echo vb[0]  # prints 0  OK
echo vb[1]  # prints 1  OK
echo vb[2]  # prints 2  OK
echo ""

#va = vb    # Doesn't compile; copying a int64 array into a int32 array is
            # not allowed. That's correct!
# Error: type mismatch: got (Vec3[system.int64]) but expected 'Vec3[system.int32]'


#var vc: Vec3[int32] = Vec3([1'i64, 2'i64, 3'i64])  # doesn't compile, correct
# Error: type mismatch: got (Vec3[system.int64]) but expected 'Vec3[system.int32]'

#var vd: Vec3[int32] = Vec3[int64]([1'i64, 2'i64, 3'i64]) # doesn't compile, correct
# Error: type mismatch: got (Vec3[system.int64]) but expected 'Vec3[system.int32]'

#var ve: Vec3[int64] = Vec3[int32]([1'i64, 2'i64, 3'i64])   # doesn't compile, correct
# Error: conversion from Array constructor[0..2, int64] to Vec3[system.int32] is invalid
