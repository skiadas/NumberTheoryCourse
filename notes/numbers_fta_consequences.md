# Consequences of the Fundamental Theorem of Arithmetic

## Reading

- Section 6.2

## Practice Problems

6.2
  ~ 1, 2, 4, 6, 11

Challenge
  ~ (Optional) 8, 16, 22, 32-35

## Notes

The fundamental theorem of arithmetic has two important consequences. One is regarding the divisors of a number, the other is regarding gcd and lcm.

> If $n = p_1^{a_1}\cdots p_k^{a_k}$ is the prime factorization of the number $n$, then any positive divisor $d$ of $n$ has the form:
>
> $$d = p_1^{b_1}\cdots p_k^{b_k}$$
>
> where each $b_i\leq a_i$.
>
> In particular, there are exactly $(a_1 + 1)(a_2 + 1)\cdots(a_k + 1)$ different positive divisors of $n$.

> Suppose $n = p_1^{a_1}\cdots p_k^{a_k}$ and $m = p_1^{b_1}\cdots p_k^{b_k}$ are prime number factorizations of $n$ and $m$, where we have allowed some of the exponents to equal $0$ to ensure we have the same list of prime numbers. Then we have:
>
> $$\gcd(n, m) = p_1^{\min(a_1, b_1)}p_2^{\min(a_2,b_2)}\cdots p_k^{\min(a_k, b_k)}$$
>
> $$lcm(n, m) = p_1^{\max(a_1, b_1)}p_2^{\max(a_2,b_2)}\cdots p_k^{\max(a_k, b_k)}$$

A direct consequence of this is the formula $nm = \gcd(n, m)lcm(n,m)$ that we saw earlier.
