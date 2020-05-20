# Test strategy

> **tl;dr** SUMMARY_HERE

## Theory

> Creating a test plan is complex. An ideal test plan is accomplished by applying [cost-benefit analysis](https://en.wikipedia.org/wiki/Cost–benefit_analysis) and [risk analysis](https://en.wikipedia.org/wiki/Risk_analysis), optimally balancing these software development factors: implementation cost, maintenance cost, monetary cost, benefit, risk.
>
> It does not provide a test plan template, because templates are often too generic or too specific and quickly become outdated. Instead, it focuses on selecting the best content when writing a test plan.
>
> -- https://testing.googleblog.com/2016/06/the-inquiry-method-for-test-planning.html

> Search for 'How to write a test plan' on the internet and there are all sorts of templates, 'must haves', tutorials and lots more. Once it's written, reviewed, edited, finalised, and distributed to all the relevant stakeholders, it's quite common to find out later than almost no-one has actually read it.
>
> A test plan may also be used as a 'shield' of sorts.  If something goes wrong, it could be necessary to refer back to the test plan document, to find missed scope, lack of test coverage, or to see what the agreed scope of testing was. In a regulated or very controlled environment it could be a mandatory part of the testing cycle, a legal requirement even, or a deliverable of the project. 
>
> MY THOUGHTS: when you do Agile, this is not usually the case. Refer to agile manifesto.
>
> Writing down what you plan to do can assist you in organising your thoughts.
>
> Lacking a written test plan doesn't mean a plan does not exist. Sometimes test plans could be very simple mission statements or mind maps with workflows. Do what suits the business needs best.
>
> For everything you decide to add to your document, ask yourself, 'Does the reader need to know this?', 'Is this information that matters?'. In addition, as mentioned previously, ask the reader! What do they want to know from the plan?
>
> PRACTICE:
>
> - Scope
> - Risks
> - Assumptions
> - Tools
> - Environments
> - People & Time
>
>  -- [Claire Reckless](https://www.ministryoftesting.com/dojo/lessons/the-one-page-test-plan)

> Every time I look at any of the dozens of test plans my teams have written, I see dead test plans. This begs the question: if a plan isn’t worth bothering to update, is it worth creating in the first place?
>
> If test plans have any value at all then let’s get to that value as quickly as possible. Write a test plan in 10 minutes. They had 80% of the work complete in 30 minutes.
>
> -- [James Whittaker](https://testing.googleblog.com/2011/09/10-minute-test-plan.html)

> identify key areas to focus testing on. They’re an excellent analytical tool, challenging you to think about assumptions, constraints and resources. they can be used as a communication tool to justify budget in terms of people and resources.
>
> An emergent strategy (...) emerges as assumptions get tested, constraints become concrete and context changes. When you begin testing and discover a whole new set of risks you hadn’t realised before and change direction to accomodate that.
>
> When working in complex, uncertain environments, when there’s more questions than answers, it makes sense for teams to be aware of the emergent nature of a software testing strategy.
>
> MY THOUGHTS: it's like exploratory testing, the plan gives you structure but doesn't limit you, you learn and adapt as you go.
>
> -- https://mavericktester.com/2020/01/13/emergent-strategy/

> Using a test plan as a mechanism to seek answers, to drive information exchange and consensus, and to prepare yourself, can make it a worthwhile thing. Make it valuable for you and your stakeholders. Make your test plan work for you, not against you. And if you can’t, don’t be afraid to get rid of it.
>
> Documents are for communicating information between people. So you need to understand who those people are, in the context of test information.
>
> test plans are typically created to document the basic answers to the five Ws of testing (see [**`W5H`** mnemonic]()).
>
> It can be a document, mind map, web platforms (e.g. Jira, Wiki), board. Make the test plan work for you, in all aspects of its form, structure and content. If it’s not working for you, change it.
>
> If you’re not sure, determine all the questions you want to ask about the testing you want to do, then figure out who the best people are to answer those questions, and ask them. They should be invested in testing the product or application. Explain why you’re asking and the value that you can add by gaining answers to your questions.
>
> - **Software Testers** who want to know what they might be testing over the course of the project. 
> - **Project Managers** want to know what you’re planning to test, and how, so they can be confident in making a decision to release.
> - **Product Owners** can tell you how the product is meant to be used.
> - **Customer Support** can tell you about the customer environment, how they use the system, and the kind of problems they encounter.
> - **Sales People** can tell you which products are the most popular.
>
> Only you can know whether, in your context, a test plan document is required: Who is asking for the document? Who is going to read it? What will they gain from it? What else could I be doing with this time?
>
> -- https://dojo.ministryoftesting.com/lessons/how-to-write-a-software-test-plan

> The test strategy is the set of ideas that guide your test process to fulfill your mission. The test strategy is shaped by asking yourself what your mission is (the purpose of your testing), who’s affected (the people who care), and how much time do you have. Ultimately, we have a finite time and we can’t test for everything
>
> -- https://thelifeofoneman.com/the-testing-strategy

## Practice

> - What is covered by unit (small), integration (medium), and system (large) tests?
> - What will be tested manually vs. automated?
> - What kind of testing will be done outside of your team?
> - How are builds and tests run continuously?
> - How will external users report bugs?
> - How does bug triage work?
> - Who is the test plan's audience?
>
> -- https://testing.googleblog.com/2016/06/the-inquiry-method-for-test-planning.html

> You do need a test strategy, which is a strategy for your testing on the project… But how you choose to document that strategy and at what level should be as lean as possible. Try modelling or diagramming your strategy. Or try detailing it on a single slide.
>
> The strategy should describe:
>
> - your test approaches,
> - your test reporting methods,
> - your strategy for managing environments,
> - strategy for reporting bugs,
> - key stakeholders and decision makers,
> - etc (think overall, big picture on describing HOW you will test and report that testing and any discoveries).
>
> -- [Dan Ashby](https://club.ministryoftesting.com/t/test-strategy-documentation-in-an-agile-world/10724/6)
>
> 1. Scope
>    2.Test Approach:
>    a. Process of testing
>    b. Testing Level
>    c. Type of Test
>    d. Roles&Responsability
>    e. Manage defects
> 2. Test Environment
> 3. Testing tools
>    a. Automation
>    b. Management
> 4. Release
>    a. Test plan simplify

> Good automated checks can…
> 1. Verify the code is working correctly
> 2. Prevent future regressions
> 3. Document the code’s behavior
> 4. Provide design guidance
> 5. Support refactoring
>
> No test has inherent value. A test is *only* valuable to your project insofar as it supports one or more of the five factors. And keep in mind that an individual test or even a suite, overall, *cannot* fully support all five factors. Which factors are more important will vary between sections of your codebase, and even in the same section over time.
>
> -- https://madeintandem.com/blog/five-factor-testing/

> Adapted from [**`GRATEDD SCRIPTS`** mnemonic]() by Jared Quinert
>
> **Goals**
>
> - What would be true if we succeeded?
> - What are the must haves?
>
> **Risks**
>
> - Do you forsee any obstacle to achieve that?
> - Do you have any concerns or fears?
>
> **Approach & Tooling**
>
> - *(see Ways of Working)*
>
> **Schedule**
>
> - Any important dates?
> - Any recurring events?
>
> **Trade-offs & Prioritisation**
>
> - Who will set priorities?
> - What can we drop to prioritise our goal?
>
> **Dependencies**
>
> - Is our delivery influenced by someone/thing outside our team?
>
> **Stakeholders**
>
> - Who's the sponsor? Who has a stake in our success?
> - Who reviews/approves our delivery?
>
> **Environments**
>
> - How many do we need and for what?
> - Who will manage them?
>
> **Data**
>
> - What kind of data should we collect?
> - How do we display that data?
>
> **Coverage & Resources & Information**
>
> - What is meaningful to test?
> - What questions are our tests going to answer?
> - Who is available to test?

## Teachers

- [Name](#link)

## Sources

- [title](#link)
