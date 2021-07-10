# Overview

Files written in the L programming language will use the ".l" filename
extension.

Files are interpreted using the "lcc" program, located in the "src" directory.
The file is to be passed as an argument to the program.

## lcc dependencies
the "lcc" program depends on the following software:
  - ruby
  - nokogiri

The L programming language is written in XML.

All code must be put inside the "root" element. Code is executed in the order
it appears.

Experimental telemetry exists but is not enabled by default. This can be
changed with the USE_TELEMETRY variable in the source code.

There are no scope rules.

Syntax errors are undefined behavior.

All other errors are undefined behavior.

# Elements

## name

Text contains the name of a variable or stack.

## value

Contains excatly one of the following elements, whose text containes the
relevant constant value.

- int
- float
- char
- string

# Variables

Variable definitions are contained within a "var" element. A variable
declaration must contain exactly the following elements, in the specified
order:

1. variable name
  - allowed elements: "name"
2. value
  - allowed elements: "name", "value"

A variable must be defined before it can be used.

# Stacks

A stack can have values pushed onto it and values popped off of it.

## Declaration

Creates a new stack. Stack declarations are contained within a "stack" element.
The text contained within will be the name of the stack.

## Pushing

Pushes a variable onto the top of a stack. Stack push operations
are contained within a "push" element. A stack push declaration must contain
exactly the following elements, in the specified order:

1. stack name
  - allowed elements: "name"
2. pushed value
  - allowed elements: "name", "value"

## Popping

Pops a variable off the top of a stack. Stack pop operations
are contained within a "pop" element. A stack pop declaration must contain
exactly the following elements, in the specified order:

1. stack name
  - allowed elements: "name"
2. variable name
  - allowed elements: "name"

# Mathematical Operators
A mathematical operator is one of the following elements:

1. addition
  - allowed elements: "add"
2. subtraction
  - allowed elements: "sub"
3. multiplication
  - allowed elements: "mul"
4. division
  - allowed elements: "div"
5. modulus
  - allowed elements: "mod"

The operator will contain exactly the following elements in the specified
order:

1. first operand
  - allowed elements: "name"
2. second operan
  - allowed elements: "name", "value"

The result of applying the relevant operation will be saved to the first
variable.

# Conditional Statements

Conditional statements are created using the "if" element.

A conditional statement will contain at least one of the following elements:

1. "body"
2. "else"

The "body" element contains code which will be executed when the statement is
true and the "else" element contains code executed when it is not.

Conditional statements contain at least one criteria. Criteria is
seperated by conditional operators.

## Criteria

A criteria is one of the following elements:

1. equals
  - allowed elements: "eq"
2. less than
  - allowed elements: "ls"
3. greater than
  - allowed elements: "gr"
4. less than or equal to
  - allowed elements: "le"
5. greater than or equal to
  - allowed elements: "ge"
6. sub-criteria
  - allowed elements: "sub"
7. negated sub-criteria
  - allowed elements: "not"

Items one through five test as specified exactly the following elements:

1. first parameter
  - allowed elements: "name", "value"
2. second parameter
  - allowed elements: "name", "value"

Items six and seven contain a nested set of critera.

## Conditional Operators

An operator is one of the following empty elements:

1. "and"
2. "or"

one and two will be true if both or one of the ajacent criteria are true,
respectively.

# Loops

A loop is contained within a "loop" element. It contains code which will be
run repeatedly until the built-in "break" function is executed.

# Functions

A function is contained within a "func" element. It will contain exactly the
following elements:

1. "name"
2. "body"

The "name" element will contain the name of the function. The "body" element
will contain code which is executed when the function is called.

Functions do not have parameters. Functions do not have return values.

## Function Execution

A function can be executed through the "exec" element. The contents of this
element will be the name of the function to be executed.

# Builtin Functions

There a number of pre-defined functions with built-in behavior.

## break

Breaks out of the current looop.

## feof

Checks for the end-of-file indicator for standard input. the "f" variable will
be set to the integer 1 if it is found and 0 if it is not.

## getc

Gets a character from standard input of type char and puts it in the "c"
variable.

## putc

Takes the character from the "c" variable of type char or int and prints it to
standard output.

## puts

prints the variable "s" to standard output.

# Examples

The "examples" directory contains example code.
