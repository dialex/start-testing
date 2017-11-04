# Oracles

## Theory

**An oracle is a source of knowledge** that improves your testing.

There are a number of ways in which you can determine that you have discovered a defect in a software application. Those are your test oracles. Oracles are the mechanism by which you **recognise a problem**. They help you discover the real reason why you think there is a problem.

Knowing your oracles means that you can **objectively explain** to developers and business stakeholders why the users of the software may agree that you have found a bug. This makes your [bug advocation](#) much more effective.

In **oracle-based testing**, you compare the behavior of the program under test to the behavior of a source you consider accurate (an oracle). You constantly look for answers to: Is this behavior correct? In the user expecting this? A tester who is familiar with the type of product under test will have no problem making these evaluations. However, a newcomer needs a reference for guidance — an oracle.

Some oracles lead you to other oracles, which allow you to extend your initial test strategy into areas you haven't thought about before. Keep in mind that each oracle **focus on a specific perspective**. If you limit yourself to a single oracle, it might bias your testing by giving you a narrow view of your context. That is why oracles are [heuristics](#) — they are useful tools that help us make decisions, but sometimes they point us to the wrong decision.

## Practice

Oracles come in many shapes:

- a document, that gives specific correct outputs for given inputs;
- an algorithm, that a human can use to calculate correct outputs for given inputs;
- another program, which takes the same input and produces the same output (for comparison);
- a human domain expert, who can look at the output and tell whether it is correct;
- or any other way of telling that a given output is correct.

Here's a list of oracles to improve your testing (use the [mnemonic](#) FEW HICCUPS to recall them):

- F
- E
- W
- H
- I
- C
- C
- U
- P
- S

This [link](http://www.testingeducation.org/k04/examples/obas05s.html) shows how you can apply the "comparable products" oracle to test the copy-paste feature in different Office suites.

## Teachers

- [Michael Bolton](http://www.developsense.com/blog/)

## Sources

- [Software Testing Clinic's 99 seconds intro](https://dojo.ministryoftesting.com/lessons/99-second-introduction-to-oracles)
- [A Course in Black Box Software Testing](http://www.testingeducation.org/k04/OracleExamples.htm)
- [Heuristics and Oracles](https://katrinatester.blogspot.pt/2014/09/heuristics-and-oracles.html)
- [The Oracle Problem and the Teaching of Software Testing](http://kaner.com/?p=190)
- [What is a test oracle, and what is it used for?](https://stackoverflow.com/a/23971174/675577)