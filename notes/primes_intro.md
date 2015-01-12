# Prime and Composite Numbers

## Reading

Section 3.2

## Practice Problems

3.2
  ~ 2, 3, 4, 8, 9, 19

Challenge 3.2
  ~ (optional) 14, 15, 16, 17

Fun 3.2
  ~ 22

## Notes

Prime numbers are the fundamental building block in Number Theory:

> A natural number $p > 1$ is called **prime**, if it has no other positive factors other than $1$ and $p$.
>
> A natural number that is not prime is called **composite**, and it must have a factor other than $1$ and $p$.
>
> $1$ is neither prime nor composite.
>
> Another way to phrase it would be to say that $p$ is prime if whenever $p=ab$ where $a$ and $b$ are natural numbers, then it must be the case that either $a$ or $b$ is $1$.
>
> Conversely, a number is composite if and only if there are $a, b$ that are strictly inbetween $1$ and $n$, and such that $n = ab$.

In order to check if a number is prime, we must try the numbers less than it to see if they divide into it. In fact, it is enough to go only up to the square root of the number:

> If a number $n$ has a non-trivial divisor $d$, then it must have a divisor that is no more than $\sqrt{n}$.

To see this, simply consider that $n = dq$. If $d$ and $q$ were both greater than $\sqrt{n}$, then their product would be bigger than $n$, a contradiction.

Before moving on, figure out all the prime numbers up to 30.

A fundamental property of prime numbers is that we can write every other natural number as a product of prime numbers, and in fact in a unique way as we will show later on. But for now, we can say:

> Every natural number $n$ can be written as a product of prime numbers.

Proof:

- If $n$ is already prime then we are done, it is the "product" of one prime number.
- If $n$ is composite, then it can be written as $n = ab$, where both $a$ and $b$ are smaller than $n$.
- Using strong induction, we can assume that we have already written both $a$ and $b$ as products of prime numbers.
- Combining all those prime numbers into one big product, we have just written $n$ as a product of prime numbers.

In-class: Do problem 22
