def calc_apply(operator, args):
    if operator == '-':
        return reduce(add, args, 0)