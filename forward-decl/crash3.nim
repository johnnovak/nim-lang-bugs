# Forward declaration AND proc declaration results in a crash too!
proc boo(p: proc)

proc boo(p: proc) =
  discard

proc quux(p: proc) =
  boo()

# Compiler CRASH!
#
# Hint: system [Processing]
# Hint: ok4 [Processing]
# SIGSEGV: Illegal storage access. (Attempt to read from nil?)
