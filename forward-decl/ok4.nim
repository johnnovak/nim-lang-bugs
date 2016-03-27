# Tested with Nim 0.13.0 on Windows/MinGW-w64 & OSX/clang

proc boo(p: proc)

boo()

proc boo(p: proc) =
  discard

# Compiler error, CORRECT
#
# nim c ok4.nim
#
# Hint: system [Processing]
# Hint: ok4 [Processing]
# ok4.nim(5, 4) Error: type mismatch: got ()
# but expected one of:
# ok4.boo(p: proc)
