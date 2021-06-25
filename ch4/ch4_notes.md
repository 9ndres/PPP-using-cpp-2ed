### Principles about expression:

When expressing computations keep in mind this three principles:

- Correctness
- Simplicity
- Safety

They should "become ours the minute we start writing code
for others and accept the responsibility to do that well".

## Tools for organizing our code:
- Abstractions:
- Dividing our code and logic in small chunks:
Trying to solve a whole problem at once can be quite a difficult task,divide the wholeproblem
into solvable small pieces.
Putting all our main logic in a single function/class
(or even in a single file) can quickly become a nightmare of nested loops, conditional statements
and unrelated data structures, when dividing our code be concrete about those responsabiilties that our entity should take
and those that it shouldn't'.

"If you have the ambition to build something reasonably permanent, you pay
attention to matters of code structure and organization along the way, rather than having to come back and
learn them after failures."

## About variables with the constexpr specifier:

"The constexpr specifier declares that it is possible to evaluate the value of the function or variable at compile time."

When declaring a constepr variable we must keep in mind the following:

        its type must be a LiteralType.
        it must be immediately initialized
        the full-expression of its initialization, including all implicit conversions, constructors calls, etc, must be a constant expression 

[See more](https://en.cppreference.com/w/cpp/language/constexpr)

## About vectors:

Vectors are one of the most useful containers 
specially it becomes very handy when we don't have a concrete number of the quantity of
data elements that we want to store because.
Its elements are stored contiguosly in memory meaning that we can access them through suscription of its index.

## Off topic:
Computers should be seen as gadgets that we can program to do what we want (DOOM runnning on a printer) and not devices that are attached to do a "fixed function".
