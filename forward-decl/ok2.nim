proc boo(p: int)

proc quux(p: int) =
  boo()

proc boo(p: int) =
  discard

# Compiler error, CORRECT
#
# Hint: system [Processing]
# Hint: ok2 [Processing]
# ok2.nim(4, 6) Error: type mismatch: got ()
# but expected one of:
# ok2.boo(p: int)#
