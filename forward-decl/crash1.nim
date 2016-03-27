proc boo(p: proc)

proc quux(p: proc) =
  boo()

proc boo(p: proc) =
  discard

# Compiler CRASH!
#
# Hint: system [Processing]
# Hint: crash [Processing]
# SIGSEGV: Illegal storage access. (Attempt to read from nil?)
