# The Fibonacci Numbers

## Reading

Section 2.3

## Practice Problems

2.3
  ~ 1, 2, 4

Challenge 2.3
  ~ (optional) 6, 7, 8, 9, 10, 11

## Notes

- The Fibonacci numbers are a well known sequence of numbers, defined via a recursion:
    - $F_1 = 1$
    - $F_2 = 1$
    - $F_n = F_{n-1} + F_{n-2}$ for every $n \geq 2$
- In other words, every subsequent number is the sum of the two previous numbers.
- Student TODO: Compute the next 8 terms.
- Student TODO: Compute successive sums:
    - $F_1 + F_2$
    - $F_1 + F_2 + F_3$
    - $F_1 + F_2 + F_3 + F_4$
    - Do you notice a pattern in how those number relate, to the Fibonacci sequence perhaps?
    - Together TODO: Prove our guess using induction
- The Fibonacci numbers have a close relation to the "golden ratio", which is equal to $\frac{1+\sqrt{5}}{2}$ and is denoted by $\varphi$.
- The golden ratio is the positive solution to the equation $x^2 = x + 1$ which can also be written as $x = 1 + \frac{1}{x}$.
- In fact it turns out that the golden ratio equals the limit of the ratios of successive Fibonacci numbers:

    $$\varphi=\lim_{n\to\infty}\frac{F_{n+1}}{F_n}$$

- Try the first couple of quotients by hand.
- We now will discuss the following wonderful theorem:

    > Every natural number $n$ can be written as a sum of distinct Fibonacci numbers.

    - First off, try some numbers and convince yourselves that you can write them.
    - Here is a sketch of a proof:
        - Take the largest Fibonacci number that is not bigger than $n$, say it is $F_k$.
        - Look at $n - F_k$. By induction, we can assume that this number can be written as a sum of Fibonacci numbers, say $n - F_k = F_a + F_b + F_c + ...$.
        - Moving $F_k$ to the other side would do it, provided there isn't an $F_k$ there already.
        - But we can show that $n - F_k < F_{k-1}$ (THINK ABOUT IT!), so in fact the Fibonacci numbers used to write $n - F_k$ cannot include $F_{k-1}$ nor anything bigger (e.g. not $F_k$ either).
- Food for thought: We can always assume that the Fibonacci numbers we use are non-consecutive. Why?
- In fact with that extra assumption, there is a uniqueness component:

    > Every number can be written as a sum of non-consecutive Fibonacci numbers in a unique way.

