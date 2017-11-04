Oracles

Theory

An oracle is a source of knowledge that improves your testing.

There are a number of ways in which you can determine that you have discovered a defect in a software application. Those are your test oracles. Oracles are the mechanism by which you recognise a problem. They help you discover the real reason why you think there is a problem.

Knowing your oracles means that you can objectively explain to developers and business stakeholders why the users of the software may agree that you have found a bug. This makes your bug advocation much more effective.

In oracle-based testing, you compare the behavior of the program under test to the behavior of a source you consider accurate (an oracle). You constantly look for answers to: Is this behavior correct? In the user expecting this? A tester who is familiar with the type of product under test will have no problem making these evaluations. However, a newcomer needs a reference for guidance — an oracle.

Some oracles lead you to other oracles, which allow you to extend your initial test strategy into areas you haven't thought about before. Keep in mind that each oracle focus on a specific perspective. If you limit yourself to a single oracle, it might bias your testing by giving you a narrow view of your context. That is why oracles are heuristics — they are useful tools that help us make decisions, but sometimes they point us to the wrong decision.

Practice

Oracles come in many shapes:

- a document, that gives specific correct outputs for given inputs;
- an algorithm, that a human can use to calculate correct outputs for given inputs;
- another program, which takes the same input and produces the same output (for comparison);
- a human domain expert, who can look at the output and tell whether it is correct;
- or any other way of telling that a given output is correct.

Here's a list of oracles to improve your testing (use the mnemonic FEW HICCUPPS to recall them):

- Familiarity: Is it free of common/past bugs?
  - e.g. the product exhibits behaviour X which was marked as a bug on previous releases
- Explainability: Is it intuitive or do you need help? Is it clear or do you need an explanation?
  - e.g. our beta testers were not sure what button X would do if clicked
- World: How does it plug into what already exists in the world?
  - e.g. our product can be used as a tool to carry DoS attacks on other websites
- History: Is the new version coherent is the older ones?
  - e.g. feature X existed in the previous version and now it's gone
- Image: Does it match the brand? Does it affect the reputation?
  - e.g. colors don't match the company guidelines
  - e.g. the choise of words/images might sound aggressive for culture X
- Compare: How does it compare with competitors?
  - e.g. players in our market solve X by doing Y and there's no added value in doing it differently
- Claims: Does the product match what the sales/marketing says about it?
  - e.g. our latest ad claims our product does X but it doesn't
- Users: Does it meet the desires and expectations of the end-users?
  - e.g. users of this market expect this screen to be customisable
- Product: How does it compare with internal products?
  - e.g. our product A has a sidebar but our product B uses a top navbar to accomplish the same
- Purpose: Does it meet the desires and expectations of the company?
  - e.g. feature A doesn't meet the requirements given by our Product Owner
- Standards: Does it comply with (external) laws and regulations?
  - e.g. this page scored too low on W3C's accessibility test

This link shows how you can apply the "comparable products" oracle to test the copy-paste feature in different Office suites.

Teachers

- Michael Bolton

Sources

- Software Testing Clinic's 99 seconds intro
- A Course in Black Box Software Testing
- Heuristics and Oracles
- The Oracle Problem and the Teaching of Software Testing
- What is a test oracle, and what is it used for?
