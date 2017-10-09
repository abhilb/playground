

#Chapter 2 - Variables, Expressions and Statements.
## Assignment statements

``
my $num = 42
my $pi = 3.1415
my $msg = "Hello"
``

Variable names start with **sigil** character ($, @, %, & ..)
$ sigil represents scalar variables (contains one value at any time)

* Variable names are case sensitive
* Variable names can contain unicode chars
* Kebab case can be used 
* Apostrophe can be part of the variable name.

## Expressions and Statements

An expression is a combination of terms and operators. 
A statement is a unit of code that has an effect. And usually needs to end with a semicolon.
Assignments can be combined with expressions using arithmetic operators.

## Script mode
Perl scripts can have extensions *.pl*, *p6*, or *pl6*

## One liner mode
Use the option **-e**
``perl6 -e "my $value = 42; say 'The answer is ', $value;" ``

## Order of Operations
Follows PEMDAS - Parentheses, Exponentiation, Multiplication, Division, Addition, Substraction.

## String Operations.
``'2' - '1'``
The above statment is valid because Perl can *coerce* the strings into numbers without ambiguity.

The **~** operator is used for String concatenation. 

``
my $test1 = "Abhilash"
my $test2 = "Babu"
my $name = $test1 ~ $test2
``

The **x** operator is used for repetition. 

``'ab' x 3``


