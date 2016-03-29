import fakeglm
import glshorter

proc someFun(v: ptr float) = discard

var
  modelDiffuse = vec4[float](1.0, 0.8, 0.8, 1.0)

modelDiffuse.stuff
someFun(modelDiffuse.addr)

# This should compile but results in a compilation error:
#
# fail.nim(9, 8) Error: type mismatch: got (ptr Vec4[system.float])
# but expected one of:
#   fail.someFun(v: ptr float)
#
# Note this is exactly the same as 'ok2.nim', except 'glshorter' is imported
# on the second line instead of 'gl'. 'glshorter' contains fewer enum
# definitions than 'gl', as the name implies, that's the only difference.
#
# Note that only the 'addr' call fails, the 'stuff' call compiles fine!
#
# Tested with Nim 0.13.0 on OS X (64-bit)

