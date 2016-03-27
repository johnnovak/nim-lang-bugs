# Tested with Nim 0.13.0 on Windows/MinGW-w64 & OSX/clang

proc boo(p: proc)

proc quux(p: proc) =
  discard

proc boo(p: proc) =
  discard

# Compiler CRASH!
#
# nim c crash1.nim
#
# Hint: system [Processing]
# Hint: crash1 [Processing]
# SIGSEGV: Illegal storage access. (Attempt to read from nil?)

