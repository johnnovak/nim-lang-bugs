# Tested with Nim 0.13.0 on Windows/MinGW-w64 & OSX/clang

proc boo(p: proc) =
  discard

proc quux(p: proc) =
  boo()

# Compiles, CORRECT
#
# nim c ok3.nim
#
# Hint: system [Processing]
# Hint: ok3 [Processing]
# ok3.nim(6, 6) Hint: 'ok3.quux(p: proc)' is declared but not used
# [XDeclaredButNotUsed]
# CC: ok3
# CC: stdlib_system
# Hint:  [Link]
# Hint: operation successful (9906 lines compiled; 0.674 sec total; 14.143MB;
# Debug Build) [SuccessX]
