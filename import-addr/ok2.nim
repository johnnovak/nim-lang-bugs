import fakeglm
import gl

proc someFun(v: ptr float) = discard

var
  modelDiffuse = vec4[float](1.0, 0.8, 0.8, 1.0)

modelDiffuse.stuff
someFun(modelDiffuse.addr)

# This compiles fine.
#
# Tested with Nim 0.13.0 on OS X (64-bit)
