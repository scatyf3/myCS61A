def make_generators_generator(g):
    """Generates all the "sub"-generators of the generator returned by
    the generator function g.

    >>> def every_m_ints_to(n, m):
    ...     i = 0
    ...     while (i <= n):
    ...         yield i
    ...         i += m
    ...
    >>> def every_3_ints_to_10():
    ...     for item in every_m_ints_to(10, 3):
    ...         yield item
    ...
    >>> for gen in make_generators_generator(every_3_ints_to_10):
    ...     print("Next Generator:")
    ...     for item in gen:
    ...         print(item)
    ...
    Next Generator:
    0
    Next Generator:
    0
    3
    Next Generator:
    0
    3
    6
    Next Generator:
    0
    3
    6
    9
    """
    "*** YOUR CODE HERE ***"
    def gen_helper(lst):
        yield from lst
    #辅助函数，输入一个列表，将之编程一个生成器
    yield_sofar = []
    gg = g()
    for x in gg:#操作函数本体的迭代器
        yield_sofar.append(x)#将迭代器放入表格
        yield gen_helper(yield_sofar.copy())#一次次把表格变成迭代器
