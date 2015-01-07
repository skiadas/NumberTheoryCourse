# The Principle of Mathematical Induction

We discuss here the Principle of Mathematical Induction, usually simply called "Induction", which is a fundamental technique for proving statements about all natural numbers.

## Reading

Section 2.1

## Practice Problems

2.1
  ~ 1, 2, 3, 4, 6, 7, 11, 21, 23

Challenge 2.1
  ~ (optional) 12, 13, 14, 22

## Notes

- The principle of induction says the following: In order to prove a statement $P(n)$ for all natural numbers $n$, it is enough to prove the following two statements:

    base case
      ~ $P(1)$ is true

    inductive step
      ~ If $P(k)$ was true for some particular $k$, then $P(k+1)$ would also have to  be true.

- This is helpful because we no longer have to prove things for all natural numbers directly. We just need one special case, $1$, and then under the assumption that $P(k)$ is true we have to be able to "move to the next step". Being able to assume $P(k)$ to be true while trying to prove $P(k+1)$ is very powerful.
- The motivation behind this principle, is that since we can reach every natural number by starting from $1$ and just adding $1$ over and over again, the two statements above would allow us to reach any $P(n)$ we like (though it may take a while to write it out if we have to say make it to $P(100000)$).
- Induction effectively allows us to say: "$P(1)$ is true, so $P(2)$ is true, so $P(3)$ is true, so ... so $P(n)$ is true"
- The book has a number of nice examples, you should read them. We will do a slightly different example here. We will use induction to prove the statement $P(n)$ for all natural numbers, where $P(n)=$"$n$ is either even or odd". So we will effectively be proving that every natural number is either even or odd.
    - Base case: $P(1)$ is true, since $1$ is in fact an odd number, as it is $2\times 0 + 1$.
    - Inductive case: Suppose $P(k)$ is true, so $k$ is either even or odd.
        - We need to show that $P(k+1)$ is also true.
        - In other words we need to show that $k+1$ is either even or odd.
        - We take cases on $k$. If $k$ is even, then $k = 2i$, and $k+1=2i+1$ is odd.
        - If $k$ is odd, then $k=2i+1$ and $k+1=2i+1+1=2i+2=2(i+1)$ is even.
        - So in either case, $k+1$ is either odd or even. This proves the inductive step.
    - The principle of induction now tells us that the statement must be true for all natural numbers.
- As practice: Prove that every natural number $n$ is greater than or equal to 1.
- Food for thought: Why can't we use induction to prove things for all real numbers? Why isn't the same principle true for all real numbers?
