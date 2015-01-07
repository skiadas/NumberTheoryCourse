# Quantifiers and Proofs

We discuss in this section how quantifiers are used, and how they affect the proving process.

## Reading

Section 1.5

## Practice Problems

1.5
  ~ 2, 3, 4, 5, 8, 9, 10, 12

## Notes

- There are two quantifiers:

    $\forall$
      ~ "for all". Called the **universal quantifier**.

    $\exists$
      ~ "exists". Called the **existential quantifier**.

    They are followed by a variable, and they are meant to suggest that the remaining statement is true for all values (respectively for at least one values).
- In every theorem or lemma, and variable needs to be quantified. If it is not, it is implicitly assumed that "forall" was intended.
- To prove a statement "for every integer $n$":
    - Say "let $n$ be an integer". $n$ is now a specific, fixed, but unknown number. It stands as a "placeholder" for any arbitrary number.
    - Continue with the proof.
    - If you end up proving the statement for this $n$, and since it could be absolutely any number, you have proven it for all numbers.
    - NOTE: the word "let" is also used to introduce new intermediate variables that we define to help us along.
- To prove a statement "there exists an integer $n$ such that ..."
    - The simplest approach is to in fact demonstrate a specific number $n$ that has the property. A single example suffices, even if there might be many numbers that have the property.
    - Some times you can prove by contradiction:
        - Assume the "there exists an integer such that ..." statement is false. Then it must be the case that for all integers $n$, whatever is in the "..." has to be false.
        - So we end up instead assuming a statement that says "for all integers $n$, ... is false".
        - If we can prove that this somehow produces a contradiction, that means there must be an integer.
    - One subtle point however. Here is what you should NOT do: Say we want to show that "there exists an integer n that is even".
        - Assume by contradiction that all integers are not even.
        - But for example 4 is in fact even. Contradiction.
        - Therefore our assumption that all integers are not even must be false. So there must be an integer that is even.
        - Can you spot why this reasoning is to be avoided?
- Order of quantifiers matters. Consider the following two statements:

    $\forall x\exists y\, x+y > 0$
      ~ This is true (why?)

    $\exists y\forall x\, x+y > 0$
      ~ This is false (why?)

- Negating quantified statements ends up switching the quantifiers:
    - The negation of "$\forall n\,P(n)$" is "$\exists n\, \text{not} P(n)$"
    - The negation of "$\exists n\,P(n)$" is "$\forall n\, \text{not} P(n)$"
