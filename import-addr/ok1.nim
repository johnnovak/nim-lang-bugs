type Vec4[T] = array[4, T]

proc vec4*[T](x, y, z, w: T): Vec4[T] =
  Vec4([x, y, z, w])

proc `addr`*[T](v: var Vec4[T]): ptr T =
  v[0].addr

proc stuff*[T](v: var Vec4[T]) = discard
# ---> SNIP <---  'fakeglm.nim' contains all the above stuff

proc someFun(v: ptr float) = discard

var
  modelDiffuse = vec4[float](1.0, 0.8, 0.8, 1.0)

modelDiffuse.stuff
someFun(modelDiffuse.addr)

# This compiles fine.
#
# Tested with Nim 0.13.0 on OS X (64-bit)
