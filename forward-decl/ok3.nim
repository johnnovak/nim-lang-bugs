proc boo(p: proc) =
  discard

proc quux(p: proc) =
  boo()

# Compiles, CORRECT
#
# Hint: system [Processing]
# Hint: ok3 [Processing]
# ok3.nim(4, 6) Hint: 'ok3.quux(p: proc)' is declared but not used [XDeclaredButNotUsed]
# Hint:  [Link]
# Hint: operation successful (10069 lines compiled; 0.172 sec total; 15.153MB; Debug Build) [SuccessX]
