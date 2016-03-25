var a: array[3, float32]
var b: array[3, float64]

#a = [1, 2, 3]                      # does not compile, correct
#a = [1.0, 2.0, 3.0]                # does not compile, correct
a = [1.0'f32, 2.0'f32, 3.0'f32]     # compiles
#a = [1.0'f64, 2.0'f64, 3.0'f64]    # doesn't compile, correct

#b = [1, 2, 3]                      # does not compile, correct
b = [1.0, 2.0, 3.0]                 # compiles
#b = [1.0'f32, 2.0'f32, 3.0'f32]    # does not compile, correct
b = [1.0'f64, 2.0'f64, 3.0'f64]     # compiles

# a = b     # does not compile, correct
            # copying a float64 array into a float32 array is forbidden


# ...but if it's a typedef
type Vec3[T] = array[3, T]

var va: Vec3[float32] = Vec3([1.0'f32, 2.0'f32, 3.0'f32])
echo "va[0]: " & $va[0]  # prints 0.0  OK
echo "va[1]: " & $va[1]  # prints 1.0  OK
echo "va[2]: " & $va[2]  # prints 2.0  OK
echo ""

var vb: Vec3[float64] = Vec3([1.0'f64, 2.0'f64, 3.0'f64])
echo "vb[0]: " & $vb[0]  # prints 0.0  OK
echo "vb[1]: " & $vb[1]  # prints 1.0  OK
echo "vb[2]: " & $vb[2]  # prints 2.0  OK
echo ""

va = vb  # compiles, INCORRECT
         # Assigning a float64 array var to a float32 array var must NOT
         # be allowed!

echo "va[0]: " & $va[0]  # prints 0.0    INCORRECT
echo "va[1]: " & $va[1]  # prints 1.875  INCORRECT
echo "va[2]: " & $va[2]  # prints 0.0    INCORRECT
echo ""


# Interestingly, this works fine:
var vc: Vec3[float32] = Vec3([1.0'f64, 2.0'f64, 3.0'f64])
echo "vc[0]: " & $vc[0]  # prints 1.0    OK
echo "vc[1]: " & $vc[1]  # prints 2.0    OK
echo "vc[2]: " & $vc[2]  # prints 3.0    OK
echo ""

# And this too:
var vd: Vec3[float32] = Vec3[float64]([1.0'f64, 2.0'f64, 3.0'f64])
echo "vd[0]: " & $vd[0]  # prints 1.0    OK
echo "vd[1]: " & $vd[1]  # prints 2.0    OK
echo "vd[2]: " & $vd[2]  # prints 3.0    OK
echo ""

vc = vd     # works, because both are Vec3[float32]
echo "vc[0]: " & $vc[0]  # prints 1.0    OK
echo "vc[1]: " & $vc[1]  # prints 2.0    OK
echo "vc[2]: " & $vc[2]  # prints 3.0    OK
echo ""

# This doesn' compile... Looks like the internal array is created as an
# array[3, float64] first and then the conversion to Vec3[float32] fails.
# It would be much nicer if the compiler could infer the array to be correctly
# typed as float32 in this case.
#var ve = Vec3[float32]([1.0, 2.0, 3.0]) 

# Yet assigning a Vec3[float32] to a Vec3[float64] var _is_ allowed and
# gives incorrect results!
var vg: Vec3[float32] = Vec3([1.0, 2.0, 3.0])

echo "vg[0]: " & $vg[0]  # prints 1.0    OK
echo "vg[1]: " & $vg[1]  # prints 2.0    OK
echo "vg[2]: " & $vg[2]  # prints 3.0    OK
echo ""

var ve: Vec3[float64]
ve = vg     # compiles, this MUST NOT be allowed!

echo "ve[0]: " & $ve[0]  # prints 2.000000473111868       INCORRECT
echo "ve[1]: " & $ve[1]  # prints 1.191169818312094e-307  INCORRECT
echo "ve[2]: " & $ve[2]  # prints 0.0078125               INCORRECT
echo ""

# Note doing the same thing is prohibited when using simple arrays:
var a64: array[3, float64]
var a32: array[3, float32]

#a32 = a64      # does not compile, correct

# Or when using generic objects with different basetypes:
var vec_i32: Vec3[int32]
var vec_f32: Vec3[float32] = Vec3([1.0, 2.0, 3.0])

#vec_i32 = vec_f32      # does not compile, correct


# We have a similar problem with int types:
var vec_int64: Vec3[int64]

# Note I had to use 'i32 otherwise I'm getting a compiler error. Why can't
# the compiler figure this out?
var vec_int32: Vec3[int32] = Vec3([1'i32, 2'i32, 3'i32])
# This would not compile:
#var vec_error: Vec3[int32] = Vec3([1, 2, 3])
# But this would!
#var vec_ok: Vec3[float32] = Vec3([1.0, 2.0, 3.0])

vec_int64 = vec_int32   # compiles, this MUST NOT be allowed!

echo "vec_int32[0]: " & $vec_int32[0]   # prints 1  OK
echo "vec_int32[1]: " & $vec_int32[1]   # prints 2  OK
echo "vec_int32[2]: " & $vec_int32[2]   # prints 3  OK
echo ""

echo "vec_int64[0]: " & $vec_int64[0]   # prints 8589934593     INCORRECT
echo "vec_int64[1]: " & $vec_int64[1]   # prints 3              INCORRECT
echo "vec_int64[2]: " & $vec_int64[2]   # prints 3306880        INCORRECT
echo ""

# But the compiler catches the error when using simple arrays:
var a_int64: array[3, int64]
var a_int32: array[3, int32]

#a_int32 = a_int64      # does not compile, correct

