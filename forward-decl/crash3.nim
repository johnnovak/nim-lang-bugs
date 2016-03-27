# Tested with Nim 0.13.0 on Windows/MinGW-w64 & OSX/clang

# Forward declaration AND proc declaration results in a crash too!
proc boo(p: proc)

proc boo(p: proc) =
  discard

proc quux(p: proc) =
  boo()

# Compiler CRASH!
#
# nim c crash3.nim
#
# Hint: system [Processing]
# Hint: crash3 [Processing]
# SIGSEGV: Illegal storage access. (Attempt to read from nil?)
