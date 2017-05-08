
from pyparsing import *

"""
A mini dsl to select and to update xml files
using its attributes
"""

test_str = """
<xml>
    <dummy id="blue">test1</dummy>
    <dummy id="red">test2</dummy>
</xml>
"""

def parse(data):
    print("Parsing {0}".format(data))

    operator = oneOf("select update")
    operand = "*" | delimitedList(Word(alphanums))

    expr = operator + operand + restOfLine

    print(expr.parseString(data))


def run_unit_tests():
    """
    Unit tests
    ----------

    """
    parse("select * where img has (id : test)")

if __name__  == '__main__':
    run_unit_tests()


