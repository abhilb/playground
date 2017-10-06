


# Chapter 1 - Introduction

* Ruby is a dynamic programming language.
* It is inspired by Lisp, Smalltalk and Perl
* It is a pure object oriented language.
* Also suitable for functional and procedural styles.


## Tour of Ruby
### Object Oriented.
* Completely object-oriented language. Everything is an object.

``
     1.class # Fixnum
     0.0.class # floating point number
``

* Function invocation doesn't need parenthesis.
* Very strict about encapsulation. Only way to access the internal state of an object is via accessors.

### Blocks and Iterators.


``
        3.times { print "Ruby!" } 
``
How cool is that. :)


*times* and *upto* are two iterator like functions implemented by the integer objects. code within the curly bbraces is the body of the loop.

``
1.upto(9) { |x| print x }
``

*Array* objects have an iterator method called *each*
