# A weird number system

## Notes

We will describe here a weird number system that provides counter-examples for many of the theorems we will see later. This is effectively an extension of the integers by including a "square root of -5". In this new system, unique factorization into primes as well as the euclidean division algorithm no longer work.

We will call this new number system $A$. So it will be defined as:

> $$A = \{ a + b\sqrt{-5} \mid a,b\in \mathbb{Z} \}$$

You can easily see that if we add or multiply numbers of this form, they will be of the same form. In that sense this is a perfectly valid number system, with addition and multiplication satisfying the normal properties that integers do.

### The "norm" function

There is a special function that takes numbers in $A$ and turns them into normal integers, called the "norm function", and denoted by $N$. Its definition is a follows:

> If $x = a + b\sqrt{-5}$, then $N(x) = a^2 + 5b^2$.
>
> $N$ is multiplicative: If $x,y\in A$, then $N(xy) = N(x)N(y)$.

For small values of $n$, we can classify those numbers in $A$ with $N(x) = n$.

This is based on the observation that $a$ and $b$ must be integers, so $a^2+5b^2$ does not have many choices:

$0$
  ~ when $a=b=0$

$1$
  ~ when $a=\pm 1$, $b=0$

$4$
  ~ when $a=\pm 2$, $b=0$

$5$
  ~ when $a=0$, $b=\pm 1$

$6$
  ~ when $a=\pm 1$, $b=\pm 1$

$9$
  ~ when $a=\pm 3$ and $b=0$, or when $a=\pm 2$ and $b=\pm 1$

$14$
  ~ when $a=\pm 3$ and $b\pm 1$

$16$
  ~ when $a=\pm 4$ and $b=0$

$21$
  ~ when $a=\pm 4$ and $b=\pm 1$

$20$
  ~ when $a=0$ and $b=\pm 2$

$21$
  ~ when $a=\pm 1$ and $b=\pm 2$

$24$
  ~ when $a=\pm 2$ and $b=\pm 2$

$25$
  ~ when $a=\pm 5$ and $b=0$

$29$
  ~ when $a=\pm 3$ and $b=\pm 2$

$36$
  ~ when $a=\pm 6$ and $b=0$, or $a\pm 4$ and $b=\pm 2$

Based on this, here are the choices for $N(x)$:

$N(x) = 0$
  ~ $x=0$

$N(x) = 1$
  ~ $x=\pm 1$

$N(x) = 4$
  ~ $x=\pm 2$

$N(x) = 5$
  ~ $x=\pm \sqrt{-5}$

$N(x) = 6$
  ~ $x=\pm 1 \pm \sqrt{-5}$

$N(x) = 9$
  ~ $x=\pm 2 \pm \sqrt{-5}$ or $x=\pm 3$

$N(x) = 14$
  ~ $x\pm 3 \pm \sqrt{-5}$

$N(x) = 16$
  ~ $x=\pm 4$

$N(x) = 21$
  ~ $x=\pm 4 \pm \sqrt{-5}$

### Some prime numbers

We can now use this information to determine some prime numbers in this new number system. Recall that the definition of a prime is that the only numbers dividing it are $1$ and itself. Now if $p=xy$ then $N(p) = N(x)N(y)$, so based on this the only hope a number has of being composite is if its "norm" $N(p)$ is a product of two smaller norms that are not 1.

Based on this observation, the numbers corresponding to $N(x) = 4,5,6,9,14,21$ are all prime. So all the numbers above in this group are automatically prime numbers.

### No unique factorization

In this weird number system, there is no unique factorization of numbers. For example, we can write 6 as a product of "primes" in two different ways:

> $$6 = 2 \times 3 = (1+\sqrt{-5})\times(1-\sqrt{-5})$$

This kind of behavior is not possible on the real line. One consequence of this is also that you can have a prime that divides a product of two numbers, but does not divide any of the numbers individually.

### GCD as a linear combination

It is also the case in this new system that we cannot always express the gcd of two numbers as an integer linear combination of the numbers. To see this, consider the numbers $1+\sqrt{-5}$ and $1-\sqrt{-5}$. These are prime so their gcd is 1. You can show that there are no integers $a_1,a_2,b_1,b_2$ such that:

$$(a_1 + a_2\sqrt{-5})(1+\sqrt{-5}) + (b_1 + b_2\sqrt{-5})(1-\sqrt{-5}) = 1$$

If you perform the multiplication and equate terms, you will come up with the equations:

$$a_1 - 5a_2 + b_1 - 5b_2 = 1$$

and

$$a_1 + a_2 + b_1 + b_2 = 0$$

Subtracting the equations from each other we find that we would need:

$$6a_2 + 6b_2 = 1$$

which is not possible.
