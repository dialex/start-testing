# Requirements

> **tl;dr** What your stakeholders require to achieve their goals. Testers clarify and detail those needs.

## Theory

Here are some **concepts** you should keep in mind:

- *Requirement:* Some behaviour or property needed by a stakeholder to achieve a goal.
- *Specification:* The list containing all requirements for a given project/product.
- *User story:* Concise description of a requirement, told from the perspective of the stakeholder who desires it. Typically follows the structure `As a <user>, I want to <goal> so that <motivation>`.
- *Acceptance criteria* (AC): Statements that are expected to be true if the user story is correctly implemented. If the ACs are met, the implementation is *accepted*. If there's a mismatch, either the ACs are revised or the implementation redone.
- *Backlog:* The list containing all user stories to implement for a given project/product.

These are the **main roles** that engage in breaking down a product into requirements:

- The *Stakeholder:* Anyone that has authority to influence the specification. They might have that power because: they will use it (users); they will maintain it (architects); they will help users (support); they are paying for it (client).
- The *Product Owner* (PO): Discovers who are the relevant stakeholders. Gathers requirements from stakeholders. Takes decisions as a spokesman for all stakeholders.
- The *Business Analyst* (BA): Improves the specification based on his/her experience and business context, without biasing it. Can act as Product Owner.
- The *"three amigos"* are a PO/BA, a developer and a tester. Seems like the start of a joke, but it is really just a nickname for temporary subteam with those three roles.

There are several **ways to write the specification** of a product, however there are two main approaches:

- In a *Waterfall project*, the client gathers requirements from their relevant stakeholders and writes a document containing them. That document is casually referred to as "the specification" or more formally as Software Requirements Specification (SRS). Once approved, the specification does not change and the team starts implementing it.
- In an *Agile project*, the PO engages in conversations with the client's stakeholders and gathers their goals and requirements. The three amigos collaborate to write user stories that will implement those requirements. The list of stories not yet implemented is called the backlog. The details of those stories, as well as their priority, can be changed during the project.

## Practice

> A requirement is a quality that matters to someone who matters.

Nowadays there are several Agile techniques to write requirements effectively:

- [User story mapping](http://amzn.to/2mW1rkx). Starts with stakeholders and breaks down into Goals > Activities > Tasks > Stories.
- [User journey](http://amzn.to/2mWyt4d) Starts with users and breaks down into Goals > User Journeys > Actions > Stories.
- [Specification by example](http://amzn.to/2FZy1ux). Details your stories using conversations to extract rules and examples.

Since POs/BAs are usually the drivers of requirement analysis we won't go into details (recommended reading in the [section](#sources) below). Nevertheless, attend the workshops if you can — the closer you are to the [source of truth](https://en.wikipedia.org/wiki/Chinese_whispers) the better.

So you might be asking **how can testers add value to this process?**

> Business perspective: Build the right thing meeting the client's expectations and requirements.
>
> *Concern: Will it be useful?*
>
> Technical perspective: Build it right using the correct technology, architecture, tools and practices.
>
> *Concern: Will it work?*

- **Align perspectives**. Each side has its own concerns, assumptions and biases. Chat with stakeholders (askers) and developers (givers) to check if they have a common understanding of what needs to be done.
- **Raise risks**. That's why you are one of the three amigos. Usually the POs are focused on functionality and your developers on implementation details. You can remind them of risks such as non-functional requirements, impacts with previous stories or the cost of automating a specific tests.
- **Ask questions**. Discuss what-if scenarios. Use personas to discover user-specific issues. Clarify the rules for extreme or unusual values. It's cheaper to improve the design than it is to fix the implementation.
- **Write scenarios**. When doing [specification by example](/notebook/specification-by-example.md), you should be writing those examples. Most likely you will [automate](/roles/automation-tester.md) them later on, using the Gherkin syntax `Given <condition> When <action> Then <result>`.
- **Bring your toolbox**. [Mnemonics](/tools/mnemonics.md) such as the five W's are useful to detail stories and create scenarios with less assumptions. Your [list of biases](/tools/biases.md) might also uncover weak requirements.
- **Clarify stories**. Your questions lead to explicit requirements and more examples. Doing so you are increasing the probability of meeting the stakeholder's requirement.
- **Think again**. The more you know, more assumptions you make and more casual you are when testing. Fresh eyes find failure, so stay sharp.
- **Don't be fooled**. Question requirements and extract their value/usefulness. Be aware of echo chambers.

> It’s easier to fool people than to convince them that they have been fooled.
>
> — Mark Twain

## Teachers

- [Donna Lichaw](https://www.donnalichaw.com/)
- [Jeff Patton](https://jpattonassociates.com/blog/)
- [Gojko Adzic](https://gojko.net/books/)

## Sources

- [Definition of requirement](http://www.iiba.org/babok-guide/babok-guide-v2/babok-guide-online/chapter-one-introduction/1-3-key-concepts.aspx)
- [Definition of user story](https://www.mountaingoatsoftware.com/agile/user-stories)
- [Story Mapping, Visual Way of Building Product Backlog](https://www.thoughtworks.com/insights/blog/story-mapping-visual-way-building-product-backlog)
- [The New User Story Backlog is a Map](https://jpattonassociates.com/the-new-backlog/)
- [User Journeys – The Beginner’s Guide](https://theuxreview.co.uk/user-journeys-beginners-guide/)
- [Introducing Example Mapping](https://medium.com/@mattwynne/introducing-example-mapping-42ccd15f8adf)
- [What is Specification by Example?](https://blog.red-badger.com/blog/2012/07/31/what-is-specification-by-example)
- [Writing more effective requirements](https://thelifeofoneman.com/writing-more-effective-requirements)
