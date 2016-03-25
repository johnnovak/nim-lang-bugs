var a: array[3, int32]
var b: array[3, int64]

#a = [1, 2, 3]                # doesn't compile, but it could be figured out
#a = [1, 2, 3]                # doesn't compile, but it could be figured out
a = [1'i32, 2'i32, 3'i32]     # compiles
#a = [1'i64, 2'i64, 3'i64]    # doesn't compile, but it could be figured out

#b = [1, 2, 3]                # doesn't compile, but it could be figured out
#b = [1, 2, 3]                # doesn't compile, but it could be figured out
#b = [1'i32, 2'i32, 3'i32]    # doesn't compile, but it could be figured out
b = [1'i64, 2'i64, 3'i64]     # compiles

# a = b     # Doesn't compile; copying a int64 array into a int32 array is
            # not allowed. That's correct!


# ...but if it's a typedef
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

echo va[0]  # prints 0      INCORRECT
echo va[1]  # prints 1.875  INCORRECT
echo va[2]  # prints 0      INCORRECT
echo ""

#var vc: Vec3[int32] = Vec3([1'i64, 2'i64, 3'i64])  # doesn't compile, correct

#var vd: Vec3[int32] = Vec3[int64]([1'i64, 2'i64, 3'i64]) # ends up being a Vec3[int32], interestingly      # doesn't compile, correct

#var ve: Vec3[int64] = Vec3[int32]([1'i64, 2'i64, 3'i64])   # doesn't compile, correct

#var vf: Vec3[int] = Vec3[int32]([1, 2, 3])      # doesn't compile, correct
