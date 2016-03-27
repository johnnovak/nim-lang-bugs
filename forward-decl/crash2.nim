# Tested with Nim 0.13.0 on Windows/MinGW-w64 & OSX/clang

# Forward declaration AND proc declaration results in a crash too!
proc boo(p: proc)

proc boo(p: proc) =
  discard

proc quux(p: proc) =
  discard

# Compiler CRASH!
#
# nim c crash2.nim
#
# Hint: system [Processing]
# Hint: crash2 [Processing]
# SIGSEGV: Illegal storage access. (Attempt to read from nil?)
