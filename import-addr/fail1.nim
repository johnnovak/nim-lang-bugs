import gl
import fakeglm

proc someFun(v: ptr float) = discard

var
  modelDiffuse = vec4[float](1.0, 0.8, 0.8, 1.0)

modelDiffuse.stuff
someFun(modelDiffuse.addr)

# This should compile but results in a compilation error:
#
# fail.nim(10, 8) Error: type mismatch: got (ptr Vec4[system.float])
# but expected one of:
#   fail.someFun(v: ptr float)
#
# Note apart from the order of imports this is exactly the same as
# 'ok2.nim'.
#
# Note that only the 'addr' call fails, the 'stuff' call compiles fine!
#
# Tested with Nim 0.13.0 on OS X (64-bit)

