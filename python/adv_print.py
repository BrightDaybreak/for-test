from inspect import currentframe

# 変数の名前と値をまとめて表示
def print_(*args):
    names = {id(v): k for k, v in currentframe().f_back.f_locals.items()}
    print('\n'.join([names.get(id(arg), '???') + ' = ' + repr(arg) for arg in args]))

# 変数の名前と形状をまとめて表示
def print_shape(*args):
    names = {id(v): k for k, v in currentframe().f_back.f_locals.items()}
    print('\n'.join([names.get(id(arg), '???') + '_shape = ' + repr(arg.shape) for arg in args]))

#例
i = 0
print_(i)