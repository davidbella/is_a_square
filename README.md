A Simple Square Checker
===
This is a simple Ruby class to determine whether a "Shape" class is a square or not. It includes a Shape class, and a Point class to build up the structure, as well as a Distance utility class to help determine the distance between two points.

A Shape can be created from a file of ordered pairs of ordered x and y coordinates in the following format

```
1,1
2,4
3,3
```

You can create a shape and check whether it is a square or not with the following:

```
s = Shape.new_from_file('shape_file')
IsASquare.valid?(s)
```

Alternately, you can pass in array of Point objects into a Shape to create it:

```
s = Shape.new([ Point.new(1,1), Point.new(2,4), Point.new(3,3) ])
```

TDD
====
This was mostly an exercise in writing tests first in RSpec for a simple programming challenge using POROs. Often for challenges like this I would dive in head first and start writing code, but writing the tests first forced me to think a bit more about some of the design aspects of the code.

Design
====
Isn't terrible I don't think. The biggest issues that I could come up with were duplication in the spec files and (worse) feature creep of the IsASquare class. I believe I let that class do too much work on its own and should probably ask the other classes for more details. In particular, the following should probably be refactored:

* The Shape class should be responsible for knowing if all of its sides are equal - The IsASquare class can ask the Shape if this is the case
* The Shape class should also similarly be able to speak about its diagonals' lengths
* The Distance class is probably unnecessary, and could be included in the Point class as an instance method which accepts another point as a parameter
* The previously mentioned duplication in the spec files, particularly of loading the shape fixture files
* The ever crushing worry that the some piece of the code isn't covered correctly in tests

I may or may not refactor these, but it is my best guess for room for improvement.

Math
====
Considering that this was built with Shapes being made up of Points, the easiest way that I could see to determine if a shape was a square or not was to check if all four sides were of equal length and then check if both diagonals were of equal length.
