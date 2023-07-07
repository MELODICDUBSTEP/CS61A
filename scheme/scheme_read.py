def scheme_read(src):
    """Read the next expression from src"""
    if src.current() is None:
        raise EOFError
    val = src.pop()
    if val == 'nil':
        return nil 
    elif val not in DELIMITERS:
        return val
    elif val == '(':
        return read_tail(src)
    else
        raise SyntaxError("unexpected token: {0}".format(val))

def read_tail(src):
    """Return the remainder of a list in src, starting before an element or )"""
    if src.current() is None:
        raise SyntaxError("unexpected end of file")
    if src.current() == ')':
        src.pop()
        return nil
    first = scheme_read(src)
    rest = read_tail(src)
    return Pair(first, rest)