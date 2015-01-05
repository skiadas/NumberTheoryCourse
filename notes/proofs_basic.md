# Proof Techniques

In this section we will practice some basic proof techniques.

## Reading

Section 1.3

## Practice Problems

1.3 Direct
  ~ 1, 5, 6, 11, 12

1.3 Indirect
  ~ 2, 4, 9, 10, 13

1.3 Advanced
  ~ 18, 19

1.3 Challenge
  ~ 21, 23, 24

## Notes

- Proofs are the bread and butter of a mathematician's work. Every assertion we make needs to be proven.
- All assertions have two parts:
    - **hypotheses** are the things we assume to be true
    - **conclusions** are the things are trying to deduce as being true *under the assumption* that the hypotheses are true.
- This is paramount: A proof is simply evidence that if the hypotheses were to be true, then the conclusions would also *have* to be true. It does not concern itself at all with the validity of the hypotheses.
- Proofs fall into various categories. We will start with direct proofs.

### Direct proofs

- Direct proofs simply start from their hypotheses, and move in a logical progression towards their conclusions.
- Example 1: Let $m$ and $n$ be two integers. If they are both odd, then their product is also odd.
    - To be odd means we can write the number as $2k+1$ where $k$ is an integers (why is it important to say that last part?)
    - We start with the hypothesis: $m$ and $n$ are odd, so we can write them as $m = 2k_1 + 1$ and $n = 2k_2 + 1$ where $k_1$ and $k_2$ are integers.
    - Now we compute $mn = ... = 2(2k_1k_2 + k_1 + k_2) + 1$
    - Since the parenthesized part is an integer (why?), we get that $mn$ has the form required to be an odd integer.
- Example 2: Show that for every integer $n$, the expression $n^2+n$ is necessarily an even number.
    - Exercise for the students. You have two cases to deal with: If $n$ is odd, and if $n$ is even. Do each separately.
    - Together in class: Every integer can be written as $2n+\epsilon$ where $\epsilon$ is either 0 or 1. This can bring the two cases together in this case.
- Food for thought: How do we know that each integer is either even or odd?

### Indirect proofs

- There are many kinds of indirect proofs, but some techniques stand out.
- The most standard amongst them is **contradiction**:
    - We want to show that "if P then Q".
    - We instead assume that P is true but Q is false, and derive a contradiction: Something that is impossible.
    - Since we saw that if P is true an Q is not true, we would get something impossible, the only alternative is that if P is true then Q must also be true.
- It is very useful for proving negative statements.
- Contradiction Example 1: Show that there is no smallest positive rational number.
    - By contradiction: We assume there is one and derive an absurd statement from that assumption.
    - Say $q$ is this "smallest positive rational number".
    - Can we construct a number that is positive and smaller? If we can, that is a contradiction, so $q$ could not have existed in the first place.
- Food for thought:
    - Where does this proof break down if we try to apply it to the integers?
    - Is that fact enough to conclude that for the integers there *is* a smallest positive rational number?
- Contradiction Example 2: Show that for integers $m$, $n$, if $mn$ is odd, then both $m$ and $n$ must be odd.
    - By contradiction, assume that $mn$ is odd and one of $m$ or $n$ is not odd, hence even. Without loss of generality, assume it is $m$.
    - We know (show separately) that if $m$ is even then $mn$ is also even. This contradicts the assumption that $mn$ was odd.
- This is actually best seen as an example of the **contrapositive**:
    - Showing "if P then Q" is the same as showing "if not Q then not P"
    - In the above example, this would read: If $m$ or $n$ is even, then the product $mn$ is also even.
    - Food for thought: Understand why these two are equivalent (page 25 from the book but think about it first).
- The **converse** of "if P then Q" is "if Q then P". These are in general not equivalent statements, one could be true while the other is false. (Students: come up with examples)
