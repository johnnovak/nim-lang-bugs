# Tested with Nim 0.13.0 on Windows/MinGW-w64 & OSX/clang

proc boo(p: proc) =
  discard

proc quux(p: proc) =
  boo()

var a: proc
quux(a)

# Compiler CRASH!
#
# nim c crash2.nim
#
# Hint: system [Processing]
# Hint: crash2 [Processing]
# Error: internal error: metatype not eliminated
# No stack traceback available
# To create a stacktrace, rerun compilation with ./koch temp c <file>
