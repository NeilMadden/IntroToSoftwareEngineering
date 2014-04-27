## Numbers and Arithmetic

Beyond Boolean values, the next most basic type of values present in most languages are numbers. Most languages
distinguish between at least two types of numbers: whole numbers, or *integers*, and fractional numbers, known as
*floating-point numbers*, which are roughly equivalent to decimal numbers such as 3.14159. Some languages also provide
other types of numbers such as *rational* numbers (proper fractions), *complex* numbers and so forth. For now we will
concentrate on just integers and floating point (or 'floats' as they are sometimes called). Some examples of integers
include:

```js
42
-55
0
```

Javascript includes a variety of basic arithmetic operators for working with integers, allowing Javascript to be used as
a calculator (note: `*` means multiplication):

```js
3 + 4 // = 7
3 * 4 // = 12
12 / 4 // = 3
```

Just like with Boolean expressions, you can combine multiple operators together into more complicated expressions:

```js
(3 * 4) / 2 // 6
3 * 4 / 2   // 6
```

As before, the operators have different precedence levels, which obey the usual rules of arithmetic. For example the
`*` operator (multiplication) has higher precedence than `+` (addition):

```js
3 + 4 * 5   // = 23
3 + (4 * 5) // = 23
(3 + 4) * 5 // = 35
```

The arithmetic operators in Javascript, in order of precedence, are as follows:

| Operator      | Description                                                      |
|:-------------:|:-----------------------------------------------------------------|
| `+`, `-`      | *Unary* plus and negation, e.g., `-5`                            |
| `*`, `/`, `%` | Multiplication, division and modulus (remainder after division). |
| `+`, `-`      | Addition and subtraction.                                        |

The *unary* operators are different from the normal addition and subtraction operators. They are used by placing the
operator directly in front of another expression. The unary `+` operator is essentially useless and never used. The
unary `-` operator is frequently used to negate the result of another expression:

```js
3 + 5       // = 8
-(3 = 5)    // = -8
-3 + 5      // = 2
```

Because unary `-` has higher precedence, the last expression is interpreted as `(-3) + 5`.

One operator you may not be familiar with is the `%` operator, known as *modulus*. This operator returns the remainder
after division by an integer. For example, the remainder after dividing 4 by 3 is 1:

```js
4 % 3 // = 1
```

One common use for the modulus operator is to check if one number is exactly divisible by another one. For example, we
can check if a number is even by checking if it is exactly divisible by two:

```js
4 % 2 // = 0
5 % 2 // = 1
```

### Equality and Comparisons

We can compare numbers to each other using a number of *comparison* operators. These operators take two numbers and
return a Boolean indicating whether the comparison was true or false. For example, the equality operator, written
`===` takes two numbers (or other values) and returns true if they are equal:

```js
2 === 3 // false
3 === 3 // false
```

The basic comparison operators offered by Javascript are the following:

|Operator | Description                                                             |
|:-------:|:------------------------------------------------------------------------|
| `===`   | Equality                                                                |
| `!==`   | Inequality                                                              |
| `<`     | Less-than                                                               |
| `<=`    | Less-than or equals                                                     |
| `>`     | Greater-than                                                            |
| `>=`    | Greater-than or equals                                                  |

There are also the `==` and `!=` operators, which are much like the normal equality operators but they additionally
attempt to convert their arguments to be of the same type before comparing them. For example:

```js
1 === true // false
1 == true  // true
```

The first example using the normal equality operator evaluates to `false` because `1` and `true` are different types of
values (one is a number, the other a Boolean). The `==` operator instead tries to be helpful by first converting the
`1` into a Boolean `true` value. While this behaviour may at first appear to be helpful, it is usually not! Many bugs
have been caused by "helpful" conversions between types producing unexpected results. It is better to use the strict
comparison operators and perform explicit conversions between types when you need to.

In terms of precedence, all of the comparison operators have lower precedence than the arithmetic operators, and the
equality and inequality operators have slightly lower precedence than the other comparisons. For example, the
expression `1 + 1 >= 2` is interpreted as `(1 + 1) >= 2` and evaluates to `true`, rather than `1 + (1 >= 2)` which
doesn't make much sense (although Javascript will again try and be "helpful" here, evaluating it to `1` by converting
the `false` to a `0`).

### Binary Numbers

We mentioned in the section on Boolean values that all other types of values can be created from simple Booleans. In the
case of integers this is done using *binary numbers*. Our everyday numbers are written in decimal form, where each digit
position in the number is ten times greater than the digit to the right of it.