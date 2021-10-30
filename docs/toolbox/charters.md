# Charters

> **tl;dr** A charter summarises your testing goal and guides your exploration.

## Theory

It works like a map:

- If you show your map to someone, they quickly understand where you want to go.
- If you wander too much and find yourself lost, your map focuses your mind by showing which paths deviate you from your initial goal and which paths lead you there.

**Exploring software** has much in common with exploring territory. Along the way you will make many discoveries (e.g. information, bugs). To make your journey easier you can use tools. Remember, "the most important tool is the one between your ears". As an [exploratory tester](/roles/exploration-tester.md) you will conduct exploratory testing sessions like these and charters can guide your way.

You can write your charters to be precise or broad, as you will see in the practice section below. Nevertheless, for a charter to be useful it should contain enough detail for anyone to understand three things. As a [mnemonic](/toolbox/mnemonics.md) you can remember the initials `TRI` — because a charter summarises what you are **TR**y**I**ng to accomplish:

- **Target**: What is the name of the area you will explore?
- **Resource**: What tools will you use on your exploration?
- **Information**: What do you hope to achieve/discover in the end?

Different charters lead to different types of exploration. You can view charters as a reminder to focus on a particular kind of information or risk while exploring.

Charters are handy tools during all phases of a testing session. _Before_ an exploratory session they structure your thinking and goals. _During_ the session they guide you and prevent deviations. _After_ the session they summarise what you did (free documentation).

## Practice

A charter is a **small sentence** that summarises your focus for a particular exploratory testing session. Each charter should be motivated by a risk that you identified on a previous session or a need to discover more about a particular area of your product.

Here are a few examples of…

- Targets: a feature, a requirement, a screen.
- Resources: a tool, a data set, a technique, a configuration, another feature… anything you can use.
- Information: bugs, (unexpected) behaviours, dependencies, usability, compliance.

As mentioned, charters can be precise or broad. If you are testing a specific area of your product for the first time, maybe you don't have enough knowledge to write a detailed charter. In that case your testing charter might look like this:

> My mission is to test **the user interface** to discover **accessibility issues**.

As you continue to test other parts of your product, you start to narrow down what still needs further testing. This time the charter for your next test session can be more focused and detailed:

> Explore **the login form** using **different credentials** to discover **how secure the form is**.

In this last charter you clearly specify your target (the login form) and what is your goal (to discover how secure the form is). You also have a strategy on how you will explore your target to get the information you want (using different credentials).

Notice that "different credentials" is still a bit vague, however we want to keep charters **concise and jargon-free**. That's enough for any non-technical reader to understand the type of testing you carried out on your session.

A good charter offers a direction without detailing too much on actions, otherwise it might transform into a test case. If you make it too broad, your goal is not clear and during your exploratory session you won't know when to stop.

The next time you need to come up with testing charters you can use templates to speed up the process. These **charter templates** give you a framework and you only need to fill in the gaps. Based on the previous examples, we can design these two templates:

> Explore **target**
>
> With **resource**
>
> To discover **information**

These templates are tools not rules. You can use a different format.

> My mission is to test **target**
>
> To discover **information**

Feel free to create your own templates and don't let them limit your creativity.

## Teachers

- [Elisabeth Hendrickson](https://twitter.com/testobsessed)

## Sources

- [Software Testing Clinic's 99 seconds intro](https://dojo.ministryoftesting.com/lessons/99-second-introduction-to-charters)
- [Explore It!](https://amzn.to/2OucmPY)
