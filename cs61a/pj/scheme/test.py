from scheme_reader import *
tokens = tokenize_lines(["(+ 1 ", "(23 4)) ("])
src = Buffer(tokens)
src.pop_first()
src.pop_first()
src.pop_first()
scheme_read(src)
print(src)