# Tested with Nim 0.13.0 on Windows/MinGW-w64 & OSX/clang

proc boo(p: proc)

proc quux() =
  boo()

proc boo(p: proc) =
  discard

# Compiler error, CORRECT
#
# nim c ok1.nim
#
# Hint: system [Processing]
# Hint: ok1 [Processing]
# ok1.nim(6, 6) Error: type mismatch: got ()
# but expected one of:
# ok1.boo(p: proc)
