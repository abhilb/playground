from pyparsing import *


def main():
    op = Keyword('select') | Keyword('update')
    selector = Keyword('*') | Word(alphanums)
    filterStart = Keyword('where')
    filterOps = oneOf('div p img')
    filterExpr = filterStart + Group(OneOrMore(filterOps + Word(alphanums)))
    expr = op + selector + filterExpr
    print(op.parseString('select * where div pp'))
    print(expr.parseString('select * where img abc'))





if __name__ == '__main__':
    main()
