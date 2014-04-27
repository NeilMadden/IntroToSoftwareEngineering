# Fundamentals

In this chapter we will learn the fundamentals of programming, using Javascript as our programming language. Javascript
is chosen because it is a relatively simple language (mostly) and because you almost certainly already have a
development environment for it: your web browser. See [Getting Started](../../#getting-started) for how to set
up your web browser.

The basic elements of any programming language consist of *values* of different *types*, and *expressions* involving
those values that compute a result. Computing a result is known as *evaluating* an expression, and is the essence of
what computing is. For example, the expression `1 + 1` evaluates to the value `2` which is a number. Other types of
values include Boolean (true/false) values, strings of text, and more complex types and structures. Later, we will also
consider *statements* that allow our programs to perform actions and interact with the outside world. For instance, the
statement `alert('Hello!');` pops up a box with the given message.

## Comments

Most programming languages include some mechanisms for adding *comments* to the program text. These are blocks of text
that are completely ignored by the computer and can be used to write helpful notes to explain to other programmers
(and yourself) what the program is doing or other useful information. In Javascript comments can be written in one of
two ways. A *single line comment* starts with a `//` and continues until the end of the current line. For example:

```js
// This is a single line comment
This is not a comment
1 + 1 // A comment after an expression
```

The other form of comment is a *block comment* that can include multiple lines. A block comments starts with `/*` and
ends with a `*/`:

```js
/*
This is a multiple
line comment.
*/
```

A common convention when using block comments is to start each line of the comment with a `*` character lined up with
the start and end asterisks:

```js
/*
 * This is a neat comment.
 */
```

There is nothing special about this format, but it is commonly used and some corporate coding guidelines may prefer
comments to be written in this style.