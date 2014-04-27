## Boolean Logic

The simplest type of data is the *Boolean* type, which has only two possible values: `true` and `false`.
(Technically, there are also types with only a single or even no values, but these are only useful in very specific
circumstances). Another way of thinking about the Boolean type is that it represents the answer to a yes or no
question, where `true` means yes, and `false` means no. While apparently simple, the Boolean type forms the basis of
modern computing, due to the ease with which such an on/off, yes/no decision can be represented in electronics: either
an electrical charge is present, or it is not. On/off. Yes/no. True/false. 1/0. These are all different representations
of the same idea. As we shall see, all other types of data can be built from Booleans, and Boolean logic lies at the
heart of modern computing. While knowing this information is not essential for writing software, an _engineer_ should
know the fundamentals on which computing is built.

In addition to the two values, `true` and `false` there are also a number of operators for combining Boolean values
together. The *AND* operator (written `&&` in JavaScript) returns `true` if both its arguments are true, otherwise it
returns false. The *OR* operator (written `||`) returns `true` if either (or both) of its arguments are true. The
*NOT* operator (written `!`) returns `true` if its argument is `false`, otherwise returning `false`. Here are some
examples in Javascript:

    > true && false
    false
    > true && true
    true
    > true || false
    true
    > false || false
    false
    > !true
    false
    > !false
    true

The meaning of these basic operators can be given using *truth tables* which list the outcome for all possible
combinations of inputs. For example, the truth table for *not* (`!`) is given below. The argument (A) is given in the
first column and the result of applying the not operator is given in the second column:

|    A    | not A   |
|:-------:|:-------:|
| `false` | `true`  |
| `true`  | `false` |

The truth tables for *and* and *or* can be given using two columns (A, B) for the two arguments. We present both
operators in a combined truth table:

|    A    |    B    | A and B | A or B  |
|:-------:|:-------:|:-------:|:-------:|
| `false` | `false` | `false` | `false` |
| `false` | `true`  | `false` | `true`  |
| `true`  | `false` | `false` | `true`  |
| `true`  | `true`  | `true`  | `true`  |


---

Given the truth tables above, what would you expect the result of the following Boolean expressions to be?

What is the result of `true && false`?
- [x] `false`
- [ ] `true`

> The `&&` (AND) operator requires both arguments to be true.

What is the result of `true && !false`?
- [ ] `false`
- [x] `true`

> `!false` is equal to `true` so both arguments are true.

What is the result of `false || (true && !true)`?

- [x] `false`
- [ ] `true`

> `!true` is `false` so `true && !true` must be false according to the truth table for `&&`. Both sides of the OR are then false.

---

### Operator precedence

In the examples so far we have used parentheses (round brackets) to surround sub-expressions. For example, in the last
question above we wrote `false || (true && !true)`. We could also have written it without the parentheses, as just
`false || true && !true`. The reason that these two are equivalent is that Javascript (and most programming languages)
use a concept called *operator precedence* to decide what order to evaluate sub-expressions when we don't use explicit
parentheses. For Boolean expressions, the order of precedence is that `!` has the highest precedence, followed by `&&`
and then by `||`. So an expression like `false || true && !true` will be treated as `false || (true && (!true))`,
while `true && !false || true` becomes `(true && (!false)) || true`. Notice how the `!` expressions are always in the
inner-most set of parentheses, indicating that they will be evaluated first, followed by any `&&` conditions, and
finally, any `||` conditions. These rules are usually what you expect. However, if you are in any doubt then you can
always add extra parentheses to make the order clear. Later, we will see that operator precedence applies to other
operators in Javascript, such as arithmetic. In most cases, the precedence follows standard mathematical practice.

It is important to be aware that spacing of operators and other visual clues that humans use to decide on precedence
mean nothing to the Javascript language. For example, the expressions `a && b||c` and `a&&b || c` are identical -- they
both mean the same as `(a && b) || c`.


---

Using the rules for operator precedence, how are the following expressions interpreted in Javascript?

`a && b || c`

- [x] `(a && b) || c`
- [ ] `a && (b || c)`

> Remember that AND (`&&`) has higher precedence than OR.

`!a || b && c`

- [ ] `!(a || (b && c))`
- [x] `(!a) || (b && c)`
- [ ] `((!a) || b) && c)`

> `!a` and `b && c` both have higher precedence than the `||` operator so will be evaluated first. As they occur in
different sub-expressions we do not need any further parentheses.

---

### Other Boolean operators

Note that `A || B` is true even if *both* A and B are true. This is known as inclusive-or, and is what is meant by 'or'
in programming. In everyday language, 'or' often means 'either one or the other (but not both)'. In programming, this
concept is known as *exclusive or* or *XOR*. There is no built-in operator for XOR in Javascript, but you can build it
from the other operators.

*Exercise:* Write out the truth table for XOR. What combination of operators can be used to implement it?

There are a handful of other operators that are commonly used in logic, but less common in programming. Implication,
written `A => B` (in logic, but not Javascript) means that B must be true whenever A is true. (When A is not true, B
can be either true or false). It is equivalent to the expression `!A || B` - either A is not true or B must be true.

A final operator (again, present in logic but not in most programming languages) is logical equivalence, written
`A <=> B`. This says that A is true if and only if B is true. It is equivalent to two implications: `A => B && B => A`.
You might recognise that this is the exact opposite of the XOR operator.

*Exercise:* Write out the truth tables for `=>` and `<=>`.

All of these operators together form the entirety of Boolean logic (also known as propositional logic). We won't go
much more into the formal definitions of logic here as there are plenty of good introductions available on the web.
However, an interesting point is that we can define all of the operators in terms of just NOT and either AND or OR.
For instance, OR itself can be defined as `!(!A && !B)`. If we take this a little further then we can come up with the
combined operators NAND and NOR: NAND is formed by applying NOT to the result of an AND, while NOR is formed by doing
the same to OR. We can then pick either of these two operators and implement the whole of the rest of Boolean logic
from that one building block. Microprocessor design often uses this trick as a NAND or NOR operation is easy to
implement using just a handful of transistors, and then the rest of the processor can be built using this one simple
building block. For example, NOT(a) can be implemented simply as NAND(a, a). OR(a, b) can then be implemented as
NAND(NOT(a), NOT(b)). And so on.

*Exercise:* Write out the truth tables for NAND and NOR. Pick one and implement all of the other operators using it.

In the next chapter we will see how we can build numbers and other data types from simple Boolean operations.