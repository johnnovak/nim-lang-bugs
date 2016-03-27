proc boo(p: proc)

boo()

proc boo(p: proc) =
  discard

# Compiler error, CORRECT
#
# Hint: system [Processing]
# Hint: ok4 [Processing]
# ok4.nim(3, 4) Error: type mismatch: got ()
# but expected one of:
#     ok4.boo(p: proc)
