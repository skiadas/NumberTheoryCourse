# The irrationality of the square root of 2

## Reading

Section 1.4

## Practice Problems

1.4
  ~ 1, 2, 5, 6, 8, 9, 13

## Notes

- A discovery that shocked ancient greeks was that there are numbers, like $\sqrt{2}$, that cannot be written as the quotient of two integers.
- This was a heavy blow to the Pythagorean school of thought, one of whose main goals was to derive everything starting from the natural numbers.
- Our proof will be a tad different from the book's. Compare with the book's proof and understand the subtle differences.

### Proof that $\sqrt{2}$ is irrational

- We start by employing contradiction. Suppose that $\sqrt{2}$ was irrational.
- Then we can write it as $\sqrt{2} = \frac{p}{q}$ where $p,q$ are positive integers (how can we assume that?)
- Moving $q$ over, we obtain $q\sqrt{2} = p$.
- Squaring both sides gives us: $2q^2 = p^2$. This means that $p^2$ is even, therefore $p$ must also be even.
- Therefore $p = 2p'$ where $p'$ is another positive integer smaller than $p$.
- Then the equation becomes: $2q^2 = (2p')^2 = 4(p')^2$. Which we can write as $q^2 = 2(p')^2$.
- The same reasoning tells us that $q^2$, and therefore $q$, must be even. So $q = 2q'$ where $q'$ is a positive integer smaller than $q$.
- We also see that $\frac{p'}{q'} = \frac{2p'}{2q'} = \frac{p}{q} = \sqrt{2}$.
- So we were able to write $\sqrt{2}$ as a quotient of two smaller positive integers.
- Continuing in this manner, we can keep writing $\sqrt{2}$ as a quotient of smaller and smaller integers, each a factor of 2 less than the previous one.
- This process cannot continue forever. This is our contradiction.

Admittedly the last step is a tad "sketchy". It will be proven more precisely in the future. To do it properly, we will need one of the following two facts, both of which we will discuss a bit later:

- Every number can be written as a product of prime factors. Once all the factors of two have been removed by repeating the above process from $p$ to $p'$, we would be left with an odd number, so the process can't be repeated any more.
- Every non-empty set of natural numbers has a smallest element. Using this, if we consider the set of all numbers $p$ such that $\sqrt{2}$ can be written as a quotient $p/q$, then this set is non-empty if $\sqrt{2}$ is rational. If we consider the smallest such $p$, then the above process from $p$ to $p'$ would give us a smaller $p$, which is impossible.
