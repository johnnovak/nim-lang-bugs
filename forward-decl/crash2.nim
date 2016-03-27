proc boo(p: proc) =
  discard

proc quux(p: proc) =
  boo()

var a: proc
quux(a)

# Compiler CRASH!
#
# Hint: ok3 [Processing]
# Error: internal error: metatype not eliminated
# No stack traceback available
# To create a stacktrace, rerun compilation with ./koch temp c <file>)
