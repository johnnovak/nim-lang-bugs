proc boo(p: proc)

proc quux() =
  boo()

proc boo(p: proc) =
  discard

# Compiler error, CORRECT
#
# Hint: system [Processing]
# Hint: ok1 [Processing]
# ok1.nim(4, 6) Error: type mismatch: got ()
# but expected one of:
# ok1.boo(p: proc)
