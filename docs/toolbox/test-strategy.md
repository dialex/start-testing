# Test strategy

> **tl;dr** SUMMARY_HERE

## Theory

The test strategy is defined at the start of the project and can be revisited and reviewed during the duration of that project. It's typically created to specify the answers to the five Ws (see [**`W5H`** mnemonic]()).

The strategy is usually driven by the testers, yet it should always include feedback from all team members:

- _Software Testers_ want to know what they might be testing over the course of the project
- _Software Developers_ want to know how they can increase [testability]()
- _Project Managers_ want to understand how you'll test, so they can be confident in making a decision to release
- _Product Owners_ can tell you how the product is meant to be used
- _Customer Support_ can tell you how the customer uses the system, and the kind of problems they encounter
- _Sales_ can tell you which products are the most popular

> A good test strategy is a rich collage of different processes, techniques and tools.
>
> -- [Mark Winteringham](https://www.mwtestconsultancy.co.uk/bdd-testing-part-4/)

> The test strategy is the set of ideas that guide your test process to fulfill your (testing) mission.
>
> -- ["The life of one man"](https://thelifeofoneman.com/the-testing-strategy)

This strategy reveals the way tests will be designed and executed to foster quality. To do so, it needs to answer several questions like what parts of the product will be tested, what test techniques will be used, who will be involved, and how long it will take. The number of questions and the detail of the answers depends on your project's [requirements](), so you will have choose between a formal and detailed document versus a simple and abridged alternative.

> Every time I look at any of the dozens of test plans my teams have written, I see dead test plans. This begs the question: if a plan isn’t worth bothering to update, is it worth creating in the first place?
>
> -- [James Whittaker](https://testing.googleblog.com/2011/09/10-minute-test-plan.html)

Documents are for communicating information between people. Lacking a test strategy document doesn't mean a strategy doesn't exist. Your test strategy could be a single page/slide, a mind map, or a simple checklist. Use what fits your client's needs best.

First discover who needs to read this document, and then ask what they want to know and what is the expected level of detail. In a regulated or very controlled environment, such document could be mandatory, maybe even a legal requirement.

> Search for 'How to write a test plan' on the internet and there are all sorts of templates. Templates are often too generic or too specific and quickly become outdated. Once it's written, it's quite common to find out that almost no-one has actually read it.
>
> Instead, focus on selecting the best content when writing a test plan. For everything you decide to add, ask yourself: Does the reader need to know this? Is this relevant information? What else could I be doing with this time?
>
> -- [Anthony Vallone (Google Testing Blog)](https://testing.googleblog.com/2016/06/the-inquiry-method-for-test-planning.html)
> -- [Claire Reckless](https://www.ministryoftesting.com/dojo/lessons/the-one-page-test-plan)

Keep in mind that your strategy might evolve through time.

> An emergent strategy (...) emerges as assumptions get tested, constraints become concrete and context changes. This happens when you begin testing and discover a whole new set of risks and change direction to accomodate that. When working in complex, uncertain environments, when there’s more questions than answers, it makes sense for teams to be aware of the emergent nature of a software testing strategy.
>
> -- [Anne-Marie Charrett](https://mavericktester.com/2020/01/13/emergent-strategy/)

Similarly to [exploratory testing](), the plan is just a foundation, you can adapt as you learn more about your context. In fact, specifying a test strategy is an effective exercise to collect information about your context, because of all the answers it demands from you. And since you have to write down that information, it's a way to organise your thoughts.

> Using a test plan as a mechanism to seek answers, to drive information consensus, and to prepare yourself, can make it worthwhile. Make it valuable for you and your stakeholders. And if you can’t, don’t be afraid to get rid of it.
>
> -- [Richard C Paterson](https://dojo.ministryoftesting.com/lessons/how-to-write-a-software-test-plan)

## Practice

> Creating a test plan is complex. An ideal test plan is (...) a balance of implementation cost, maintenance cost, benefit, and risk.
>
> -- [Anthony Vallone (Google Testing Blog)](https://testing.googleblog.com/2016/06/the-inquiry-method-for-test-planning.html)

[James Bach](https://www.satisfice.com/download/test-plan-evaluation-model) proposes a list of caracteristics of a good test strategy. Keep in mind these criteria while you develop your stategy. You can also revisit them when you're finished, to check if you can improve your test strategy in any area:

- Usefulness: Will the test strategy effectively serve its purpose?
- Accuracy: Is it accurate with respect to any statements or facts?
- Efficiency: Does it make efficient use of available resources?
- Adaptability: Can it accommodate changes and unpredictability in the project?
- Feasibility: Does the organization have capabilities to implement this strategy?
- Clarity: Is it coherent and unambiguous?
- Usability: Is the test strategy document concise, searchable and shareable?
- Compliance: Does it meet externally imposed requirements?

A good starting point is the Heuristic Test Strategy Model, also from [James Bach](https://www.satisfice.com/download/heuristic-test-strategy-model). According to that plan, testing is influenced by: project environment, quality criteria, test techniques. [Dan Ashby](https://danashby.co.uk/2017/12/13/a-new-model-for-test-strategies/) then simplified that model into this intuitive diagram.

![DanAshbyHTSM](../_media/articles/modified-htsm1.png)

This visual representation of a possible test strategy is useful to illustrate the how different testing activities transform data into information into quality.

Now that you have an overview of a possible test strategy, it's time to fill in the details, and an effective way to do so is by asking questions. [Erik Brickarp](http://erik.brickarp.se/2016/11/test-plan-questions.html) suggests these first five questions before you start testing:

> 1. What (product) are we testing?
> 2. How much resources (time/people) do we have?
> 3. What should be the main focus of our testing?
> 4. Do we need to document our test strategy? Why? For who? How?
> 5. Where can we get information about the product?

Those questions cover the most critical aspects of any strategy to test your product. You can use them to generate more questions and detail your strategy even more. As the number of questions increases, we should group them into categories. To do that, you can use the [**`GRATEDD SCRIPTS`**]() mnemonic from [Jared Quinert](http://www.software-testing.com.au/blog/2009/07/21/thinking-about-test-strategy-a-mnemonic-device/):

> **Goals**
>
> - What would be true if we succeeded?
> - What are the must haves of our product?
>
> **Risks**
>
> - Do we forsee any obstacle to achieve that?
> - Do we have any concerns or fears?
>
> **Approach & Tooling**
>
> - How will we work together? (e.g: waterfall, scrum, kanban)
> - Who's responsible for what?
> - How will we [develop](/toolbox/dev-methodologies.md) our product?
> - Which tools will we use to develop? Test? Deliver? Communicate?
>
> **Schedule**
>
> - Any important dates?
> - Any recurring events or ceremonies?
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
> - How many do we need? For what?
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
> - What questions should our testing answer?
> - How should those answers be reported? With who?
> - How should we report and react to bugs?

You can further detail your strategy with even more questions, like these from [Erik Brickarp](http://erik.brickarp.se/2016/11/test-plan-questions.html) and [Michael Bolton](https://www.developsense.com/blog/2010/11/context-free-questions-for-testing/). You could follow the same grouping as before, but let's see a leaner alternative adapted from [Claire Reckless](https://www.ministryoftesting.com/dojo/lessons/the-one-page-test-plan).

⚠️ **TODO REFACTOR TEXT INTO SINGLE LIST** ⚠️ 

⚠️ **TODO GET A NEW MNEMONIC** ⚠️ 

⚠️ **TODO INSERT MINDMAP** ⚠️ 

> **Scope**
>
> - How would you describe the success of this project?
>
> - What is expected that we deliver?
>
> - What is expected that we achieve?
>
> - EXTRA
>
>   - How flexible is the scope? Can we descope if needed?
>   - What are the functional requirements?
>   - What are the non-functional requirements?
>
> **Product**
>
> - What problem are we solving? For who?
>
> - What should our solution do? Scenarios?
>
> - EXTRA
>
>   - What should our solution never do?
>   - Are there alternatives or competitors to our product?
>   - How are we expected to be different from the alternatives? Or the same?
>   - How are users expected to interact with our product?
>   - Which platforms (e.g. OS, browser) should we support?
>
> **Actors**
>
> - Who has a stake on our success? And failure?
>
> - Who is our client? (e.g. who pays the product)
>
> - Who is our user? (e.g. who uses the product)
>
> - EXTRA
>
>   - Any other stakeholder?
>   - What are their expectations? And concerns?
>   - Who is our team? What are their roles?
>   - Who can we trust? Who should we avoid?
>
> **Risks**
>
> - What would threaten our success?
>
> - What is likely to change?
>
> - What is still unknown?
>
> - EXTRA
>
>   - Do we foresee any obstacles or pain points?
>   - How do we continuously verify we’re on target?
>   - Do we have any concerns or fears?
>   - What's the worst thing that could happen? How can we avoid that?
>
> **Dependencies**
>
> - Is our delivery influenced by someone/thing outside our team?
>
> - Do we need to cooperate with other teams? When, how and why?
>
> - EXTRA
>
>   - Do we have to comply with rules/regulations?
>
> **Approach**
>
> - How will we work together? (e.g: scrum, kanban)
>
> - How will we develop our product? (e.g. pairing, TDD)
>
> - What would a typical day look like?
>
> - EXTRA
>
>   - What is our done criteria?
>   - How would we recognize a bug? (e.g. oracle)
>   - How should react when we find a bug?
>   - How do we make decisions and resolve conflicts?
>   - How can we split testing among the team?
>   - How do we handle onboarding? And handover?
>   - Any regulations or rules that influence or limit the way we work?
>
> **Prioritisation**
>
> - Who will set priorities?
>
> - Who reviews/approves our delivery?
>
> - Who perceives the quality of our delivery?
>
> - EXTRA
>
>   - Quality, Cost, Time: pick two
>   - What other values are paramount?
>
> **Time**
>
> - Any important dates?
>
> - Any recurring events or ceremonies?
>
> - EXTRA
>
>   - How much time do we have to deliver?
>   - What happens if we miss a deadline?
>
> **Emotions**
>
> - How do you feel about our product?
> (e.g. proud, afraid, disappointed)
>
> - What do users feel and say about it?
>
> **Experience**
>
> - Have we ever worked in a similar context?
>
> - What skills/experience can be found in the team?
>
> - EXTRA
>
>   - Are we lacking any skills critical to our success?
>   - Who else knows something about this, inside our org?
>   - Who are the experts, even if outside our org?
>   - Which tools and techniques are useful in our context?
>
> **Information**
>
> - What is meaningful to test?
>
> - What questions should our testing answer?
>
> - How should those answers be reported? With who?
>
> - EXTRA
>
>   - What do we need to learn more about?
>   - Where can we get information about X?
> Who do we contact?
>   - Where do we share knowledge? How?
>   - How do we provide feedback to each other?
>   - How do we track and visualize our testing?
>
> **Data**
>
> - Which metrics are relevant to us?
>
> - EXTRA
>
>   - What data should we collect about our product?
>   - What data should we collect about our approach?
>   - How do we display that data? And make it visible?
>   - Should we be notified when thresholds are crossed?
>
> **Environments**
>
> - How many do we need? For what?
>
> - Who will manage them? Who has access?
>
> - EXTRA
>
>   - What should change to increase testability?
>   - What should change to speed up feedback?
>   - How can we create/update test data?
>
> **Technologies**
>
> - Are we expected to use any specific tools/languages?
>
> - Which tools do we want to use to develop? And test? And deliver? And communicate?
>
> - EXTRA
>
>   - What is the technological landscape where our product?
>   - What tools are we expected to build?
>   - What equipment and tools are available to support our testing?
>   - Do we have enough resources to meet the expectations?
>   - Should we use open-source? Can we pay for SaaS?
>
> **Architecture**
>
> - Can you draw the main components of our system?
>
> - How do they interact?
>

----




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

> Good automated checks can…
>
> 1. Verify the code is working correctly
> 2. Prevent future regressions
> 3. Document the code’s behavior
> 4. Provide design guidance
> 5. Support refactoring
>
> No test has inherent value. A test is _only_ valuable to your project insofar as it supports one or more of the five factors. And keep in mind that an individual test or even a suite, overall, _cannot_ fully support all five factors. Which factors are more important will vary between sections of your codebase, and even in the same section over time.
>
> -- https://madeintandem.com/blog/five-factor-testing/

> Consider each of these layers like a net. It won’t catch everything, bugs in production will still happen. But when we have all of these feedback loops layered on top of each other, we get a pretty tight net, where hopefully no major issues get into production.
>
> Common components of a test strategy:
>
> - Automated checks (unit/API/UI)
> - Pairing or Code review
> - Exploratory testing
> - CI/CD pipeline
> - Test/Demo environment
> - Demo day
> - Monitoring
> - Collecting user feedback
>
> -- https://bughuntersam.com/a-mobile-app-test-strategy/

If you're not sure which areas should be tested, you can do a risk mapping exercise. [Sam Connelly](https://bughuntersam.com/visual-risk-ui-automation-framework/) explains step by step how you can make one. [Diogo Nunes](https://www.diogonunes.com/blog/risk-mapping-prioritisation/) later adapted that exercise for remote teams.

## Teachers

- [Name](#link)
- James Bach
- Dan Ashby
- Michael Bolton

## Sources

- https://www.satisfice.com/download/test-plan-evaluation-model
- https://mavericktester.com/2020/01/13/emergent-strategy/
- https://www.ministryoftesting.com/dojo/lessons/the-one-page-test-plan
- https://dojo.ministryoftesting.com/lessons/how-to-write-a-software-test-plan
- [An update to the Heuristic Test Strategy Model](https://danashby.co.uk/2017/12/13/a-new-model-for-test-strategies/)
- http://www.software-testing.com.au/blog/2009/07/21/thinking-about-test-strategy-a-mnemonic-device/
- http://erik.brickarp.se/2016/11/test-plan-questions.html
- https://www.developsense.com/blog/2010/11/context-free-questions-for-testing/
