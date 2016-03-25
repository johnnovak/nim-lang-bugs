import unittest
# 64-bit, OS X

type Vec3[T] = array[3, T]

proc vec3[T](x: T, y: T, z: T): Vec3[T] =
  Vec3([x, y, z])

var
  # normal lines without extra comments means the case is correct
  # commented out lines would correctly trigger compile errors

  a1 = vec3(1.0, 2.0, 3.0)
  b1 = vec3(1.0'f32, 2.0'f32, 3.0'f32)
  c1 = vec3(1.0'f64, 2.0'f64, 3.0'f64)

#  d1 = vec3[float](1.0, 2.0, 3.0)
#  e1 = vec3[float](1.0'f32, 2.0'f32, 3.0'f32)
#  f1 = vec3[float](1.0'f64, 2.0'f64, 3.0'f64)

  g1 = vec3[float32](1.0, 2.0, 3.0)
  h1 = vec3[float32](1.0'f32, 2.0'f32, 3.0'f32)
  i1 = vec3[float32](1.0'f64, 2.0'f64, 3.0'f64)     # should not compile

  j1 = vec3[float64](1.0, 2.0, 3.0)
  k1 = vec3[float64](1.0'f32, 2.0'f32, 3.0'f32)
  l1 = vec3[float64](1.0'f64, 2.0'f64, 3.0'f64)


#  a2: Vec3[float] = vec3(1.0, 2.0, 3.0)
#  b2: Vec3[float] = vec3(1.0'f32, 2.0'f32, 3.0'f32)
#  c2: Vec3[float] = vec3(1.0'f64, 2.0'f64, 3.0'f64)

#  d2: Vec3[float] = vec3[float](1.0, 2.0, 3.0)
#  e2: Vec3[float] = vec3[float](1.0'f32, 2.0'f32, 3.0'f32)
#  f2: Vec3[float] = vec3[float](1.0'f64, 2.0'f64, 3.0'f64)

#  g2: Vec3[float] = vec3[float32](1.0, 2.0, 3.0)
#  h2: Vec3[float] = vec3[float32](1.0'f32, 2.0'f32, 3.0'f32)
#  i2: Vec3[float] = vec3[float32](1.0'f64, 2.0'f64, 3.0'f64)

#  j2: Vec3[float] = vec3[float64](1.0, 2.0, 3.0)
#  k2: Vec3[float] = vec3[float64](1.0'f32, 2.0'f32, 3.0'f32)
#  l2: Vec3[float] = vec3[float64](1.0'f64, 2.0'f64, 3.0'f64)


  a3: Vec3[float32] = vec3(1.0, 2.0, 3.0)   # should not compile but does and gives incorrect results
  b3: Vec3[float32] = vec3(1.0'f32, 2.0'f32, 3.0'f32)
  c3: Vec3[float32] = vec3(1.0'f64, 2.0'f64, 3.0'f64)   # should not compile but does and gives incorrect results

#  d3: Vec3[float32] = vec3[float](1.0, 2.0, 3.0)
#  e3: Vec3[float32] = vec3[float](1.0'f32, 2.0'f32, 3.0'f32)
#  f3: Vec3[float32] = vec3[float](1.0'f64, 2.0'f64, 3.0'f64)

  g3: Vec3[float32] = vec3[float32](1.0, 2.0, 3.0)
  h3: Vec3[float32] = vec3[float32](1.0'f32, 2.0'f32, 3.0'f32)
  i3: Vec3[float32] = vec3[float32](1.0'f64, 2.0'f64, 3.0'f64)  # should not compile

  j3: Vec3[float32] = vec3[float64](1.0, 2.0, 3.0)    # should not compile but does and gives incorrect results
  k3: Vec3[float32] = vec3[float64](1.0'f32, 2.0'f32, 3.0'f32)  # should not compile
  l3: Vec3[float32] = vec3[float64](1.0'f64, 2.0'f64, 3.0'f64)  # should not compile but does and gives incorrect results


  a4: Vec3[float64] = vec3(1.0, 2.0, 3.0)
  b4: Vec3[float64] = vec3(1.0'f32, 2.0'f32, 3.0'f32)   # should not compile but does and gives incorrect results
  c4: Vec3[float64] = vec3(1.0'f64, 2.0'f64, 3.0'f64)

#  d4: Vec3[float64] = vec3[float](1.0, 2.0, 3.0)
#  e4: Vec3[float64] = vec3[float](1.0'f32, 2.0'f32, 3.0'f32)
#  f4: Vec3[float64] = vec3[float](1.0'f64, 2.0'f64, 3.0'f64)

  g4: Vec3[float64] = vec3[float32](1.0, 2.0, 3.0)   # should not compile but does and gives incorrect results
  h4: Vec3[float64] = vec3[float32](1.0'f32, 2.0'f32, 3.0'f32)   # should not compile but does and gives incorrect results
  i4: Vec3[float64] = vec3[float32](1.0'f64, 2.0'f64, 3.0'f64)   # should not compile but does and gives incorrect results

  j4: Vec3[float64] = vec3[float64](1.0, 2.0, 3.0)
  k4: Vec3[float64] = vec3[float64](1.0'f32, 2.0'f32, 3.0'f32)
  l4: Vec3[float64] = vec3[float64](1.0'f64, 2.0'f64, 3.0'f64)



echo  "a1[0]: " & $a1[0]
check (a1[0] == 1.0)
echo  "a1[1]: " & $a1[1]
check (a1[1] == 2.0)
echo  "a1[2]: " & $a1[2]
check (a1[2] == 3.0)
echo ""

echo  "b1[0]: " & $b1[0]
check (b1[0] == 1.0)
echo  "b1[1]: " & $b1[1]
check (b1[1] == 2.0)
echo  "b1[2]: " & $b1[2]
check (b1[2] == 3.0)
echo ""

echo  "c1[0]: " & $c1[0]
check (c1[0] == 1.0)
echo  "c1[1]: " & $c1[1]
check (c1[1] == 2.0)
echo  "c1[2]: " & $c1[2]
check (c1[2] == 3.0)
echo ""

echo  "g1[0]: " & $g1[0]
check (g1[0] == 1.0)
echo  "g1[1]: " & $g1[1]
check (g1[1] == 2.0)
echo  "g1[2]: " & $g1[2]
check (g1[2] == 3.0)
echo ""

echo  "h1[0]: " & $h1[0]
check (h1[0] == 1.0)
echo  "h1[1]: " & $h1[1]
check (h1[1] == 2.0)
echo  "h1[2]: " & $h1[2]
check (h1[2] == 3.0)
echo ""

echo  "i1[0]: " & $i1[0]
check (i1[0] == 1.0)
echo  "i1[1]: " & $i1[1]
check (i1[1] == 2.0)
echo  "i1[2]: " & $i1[2]
check (i1[2] == 3.0)
echo ""

echo  "j1[0]: " & $j1[0]
check (j1[0] == 1.0)
echo  "j1[1]: " & $j1[1]
check (j1[1] == 2.0)
echo  "j1[2]: " & $j1[2]
check (j1[2] == 3.0)
echo ""

echo  "k1[0]: " & $k1[0]
check (k1[0] == 1.0)
echo  "k1[1]: " & $k1[1]
check (k1[1] == 2.0)
echo  "k1[2]: " & $k1[2]
check (k1[2] == 3.0)
echo ""

echo  "l1[0]: " & $l1[0]
check (l1[0] == 1.0)
echo  "l1[1]: " & $l1[1]
check (l1[1] == 2.0)
echo  "l1[2]: " & $l1[2]
check (l1[2] == 3.0)
echo ""



echo  "a3[0]: " & $a3[0]        # FAIL
check (a3[0] == 1.0)            # FAIL
echo  "a3[1]: " & $a3[1]        # FAIL
check (a3[1] == 2.0)            # FAIL
echo  "a3[2]: " & $a3[2]        # FAIL
check (a3[2] == 3.0)            # FAIL
echo ""

echo  "b3[0]: " & $b3[0]
check (b3[0] == 1.0)
echo  "b3[1]: " & $b3[1]
check (b3[1] == 2.0)
echo  "b3[2]: " & $b3[2]
check (b3[2] == 3.0)
echo ""

echo  "c3[0]: " & $c3[0]        # FAIL
check (c3[0] == 1.0)            # FAIL
echo  "c3[1]: " & $c3[1]        # FAIL
check (c3[1] == 2.0)            # FAIL
echo  "c3[2]: " & $c3[2]        # FAIL
check (c3[2] == 3.0)            # FAIL
echo ""

echo  "g3[0]: " & $g3[0]
check (g3[0] == 1.0)
echo  "g3[1]: " & $g3[1]
check (g3[1] == 2.0)
echo  "g3[2]: " & $g3[2]
check (g3[2] == 3.0)
echo ""

echo  "h3[0]: " & $h3[0]
check (h3[0] == 1.0)
echo  "h3[1]: " & $h3[1]
check (h3[1] == 2.0)
echo  "h3[2]: " & $h3[2]
check (h3[2] == 3.0)
echo ""

echo  "i3[0]: " & $i3[0]
check (i3[0] == 1.0)
echo  "i3[1]: " & $i3[1]
check (i3[1] == 2.0)
echo  "i3[2]: " & $i3[2]
check (i3[2] == 3.0)
echo ""

echo  "j3[0]: " & $j3[0]        # FAIL
check (j3[0] == 1.0)            # FAIL
echo  "j3[1]: " & $j3[1]        # FAIL
check (j3[1] == 2.0)            # FAIL
echo  "j3[2]: " & $j3[2]        # FAIL
check (j3[2] == 3.0)            # FAIL
echo ""

echo  "k3[0]: " & $k3[0]        # FAIL
check (k3[0] == 1.0)            # FAIL
echo  "k3[1]: " & $k3[1]        # FAIL
check (k3[1] == 2.0)            # FAIL
echo  "k3[2]: " & $k3[2]        # FAIL
check (k3[2] == 3.0)            # FAIL
echo ""

echo  "l3[0]: " & $l3[0]        # FAIL
check (l3[0] == 1.0)            # FAIL
echo  "l3[1]: " & $l3[1]        # FAIL
check (l3[1] == 2.0)            # FAIL
echo  "l3[2]: " & $l3[2]        # FAIL
check (l3[2] == 3.0)            # FAIL
echo ""



echo  "a4[0]: " & $a4[0]
check (a4[0] == 1.0)
echo  "a4[1]: " & $a4[1]
check (a4[1] == 2.0)
echo  "a4[2]: " & $a4[2]
check (a4[2] == 3.0)
echo ""

echo  "b4[0]: " & $b4[0]        # FAIL
check (b4[0] == 1.0)            # FAIL
echo  "b4[1]: " & $b4[1]        # FAIL
check (b4[1] == 2.0)            # FAIL
echo  "b4[2]: " & $b4[2]        # FAIL
check (b4[2] == 3.0)            # FAIL
echo ""

echo  "c4[0]: " & $c4[0]
check (c4[0] == 1.0)
echo  "c4[1]: " & $c4[1]
check (c4[1] == 2.0)
echo  "c4[2]: " & $c4[2]
check (c4[2] == 3.0)
echo ""

echo  "g4[0]: " & $g4[0]        # FAIL
check (g4[0] == 1.0)            # FAIL
echo  "g4[1]: " & $g4[1]        # FAIL
check (g4[1] == 2.0)            # FAIL
echo  "g4[2]: " & $g4[2]        # FAIL
check (g4[2] == 3.0)            # FAIL
echo ""

echo  "h4[0]: " & $h4[0]        # FAIL
check (h4[0] == 1.0)            # FAIL
echo  "h4[1]: " & $h4[1]        # FAIL
check (h4[1] == 2.0)            # FAIL
echo  "h4[2]: " & $h4[2]        # FAIL
check (h4[2] == 3.0)            # FAIL
echo ""

echo  "i4[0]: " & $i4[0]        # FAIL
check (i4[0] == 1.0)            # FAIL
echo  "i4[1]: " & $i4[1]        # FAIL
check (i4[1] == 2.0)            # FAIL
echo  "i4[2]: " & $i4[2]        # FAIL
check (i4[2] == 3.0)            # FAIL
echo ""

echo  "j4[0]: " & $j4[0]
check (j4[0] == 1.0)
echo  "j4[1]: " & $j4[1]
check (j4[1] == 2.0)
echo  "j4[2]: " & $j4[2]
check (j4[2] == 3.0)
echo ""

echo  "k4[0]: " & $k4[0]
check (k4[0] == 1.0)
echo  "k4[1]: " & $k4[1]
check (k4[1] == 2.0)
echo  "k4[2]: " & $k4[2]
check (k4[2] == 3.0)
echo ""

echo  "l4[0]: " & $l4[0]
check (l4[0] == 1.0)
echo  "l4[1]: " & $l4[1]
check (l4[1] == 2.0)
echo  "l4[2]: " & $l4[2]
check (l4[2] == 3.0)
echo ""

