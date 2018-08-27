# Oracles

> **tl;dr** An oracle is a source of knowledge that improves your testing.

## Theory

There are a number of ways in which you can determine that you have discovered a defect in a software application. Those are your test oracles. Oracles are the mechanism by which you **recognise a problem**. They help you discover the real reason why you think there is a problem.

Knowing your oracles means that you can **objectively explain** to developers and business stakeholders why the users of the software may agree that you have found a bug. This makes your [bug advocation](/roles/bug-hunter.md) more effective.

In **oracle-based testing**, you compare the behaviour of the program under test to the behaviour of a source you consider accurate (an oracle). You constantly look for answers to: Is this behaviour correct? In the user expecting this? A tester who is familiar with the type of product under test will have no problem making these evaluations. However, a newcomer needs a reference for guidance — an oracle.

Some oracles lead you to other oracles, which allow you to extend your initial test strategy into areas you haven't thought about before. Keep in mind that each oracle **focus on a specific perspective**. If you limit yourself to a single oracle, it might bias your testing by giving you a narrow view of your context. That is why oracles are [heuristics](/tools/heuristics.md) — they are useful tools that help us make decisions, but sometimes they point us to the wrong decision.

## Practice

Oracles come in many shapes, here are a few examples:

- a document, that gives specific correct outputs for given inputs;
- an algorithm, that a human can use to calculate correct outputs for given inputs;
- another program, which takes the same input and produces the same output (for comparison);
- a human domain expert, who can look at the output and tell whether it is correct;
- or any other way of telling that a given output is correct.

Use the [mnemonic](/tools/mnemonics.md) `FEW HICCUPS` to remember these oracles:

- **Familiarity**: Is it free of common/past bugs?
  - _e.g. the product exhibits behaviour X which was marked as a bug on previous releases_
- **Explainability**: Is it intuitive or do you need help? Is it clear or do you need an explanation?
  - _e.g. our beta testers were not sure what button X would do if clicked_
- **World**: How does it plug into what already exists in the world?
  - _e.g. our product can be used as a tool to carry DoS attacks on other websites_
- **History**: Is the new version coherent is the older ones?
  - _e.g. feature X existed in the previous version and now it's gone_
- **Image**: Does it match the brand? Does it affect the reputation?
  - _e.g. colours don't match the company guidelines_
  - _e.g. the choice of words/images might sound aggressive for culture X_
- **Compare**: How does it compare with competitors?
  - _e.g. players in our market solve X by doing Y and there's no added value in doing it differently_
- **Claims**: Does the product match what the sales/marketing says about it?
  - _e.g. our latest ad claims our product does X but it doesn't_
- **Users**: Does it meet the desires and expectations of the end-users?
  - _e.g. users of this market expect this screen to be customisable_
- **Product**: How does it compare with internal products?
  - _e.g. our product A has a sidebar but our product B uses a top navbar to accomplish the same_
- **Purpose**: Does it meet the desires and expectations of the company?
  - _e.g. feature A doesn't meet the requirements given by our Product Owner_
- **Standards**: Does it comply with (external) laws and regulations?
  - _e.g. this page scored too low on W3C's accessibility test_

This [link](http://www.testingeducation.org/k04/examples/obas05s.html) shows how to apply the "comparable products" oracle to test the copy-paste feature in different softwares.

## Teachers

- [Michael Bolton](http://www.developsense.com/blog/)

## Sources

- [Software Testing Clinic's 99 seconds intro](https://dojo.ministryoftesting.com/lessons/99-second-introduction-to-oracles)
- [A Course in Black Box Software Testing](http://www.testingeducation.org/k04/OracleExamples.htm)
- [Heuristics and Oracles](https://katrinatester.blogspot.pt/2014/09/heuristics-and-oracles.html)
- [The Oracle Problem and the Teaching of Software Testing](http://kaner.com/?p=190)
- [What is a test oracle, and what is it used for?](https://stackoverflow.com/a/23971174/675577)
