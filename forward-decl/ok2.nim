# Tested with Nim 0.13.0 on Windows/MinGW-w64 & OSX/clang

proc boo(p: int)

proc quux(p: int) =
  boo()

proc boo(p: int) =
  discard

# Compiler error, CORRECT
#
# nim c ok2.nim
#
# Hint: system [Processing]
# Hint: ok2 [Processing]
# ok2.nim(6, 6) Error: type mismatch: got ()
# but expected one of:
# ok2.boo(p: int)
