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

You can further detail your strategy with even more questions, like these from [Erik Brickarp](http://erik.brickarp.se/2016/11/test-plan-questions.html) and [Michael Bolton](). You could follow the same grouping as before, but let's see a leaner alternative adapted from [Claire Reckless](https://www.ministryoftesting.com/dojo/lessons/the-one-page-test-plan).

> **Scope**
>
> - What is most important to deliver?
> - What can be skipped entirely?
> - What is perceived as quality?
> - How flexible is the scope? Can we descope if needed?
> - How do we handle onboarding? And handover?
>
> **Risks**
>
> - What is our backup plan if risk X happens? And if we fail?
> - What is likely to change?
> - What is still unknown?
> - What do we need to learn more about?
> - Do we expect any obstacles during this project? Can we mitigate them?
> - Do we need to cooperate with other teams? When, how and why?
>
> **Ways of Working**???
>
> - How do we plan the everyday work?
> - Any regulations or rules that influence or limit our actions?
> - What is our done criteria?
> - How do we continuously verify we’re doing the right thing?
> - As a tester, how can I reach out to developers? Do they have time for me?
> - How can we split testing among the team?
>
> **Tools**
>
> - Which tools can help us?
>
> **Environments**
>
> - What should change to increase testability?
> - How can we create/update test data?
>
> **Information**???
>
> - Where can I get information about X? Who do I contact?
> - Who are our end-users? Can we contact them?
> - How do we share knowledge?
> - How do we provide feedback to each other?
> - How can we keep in the loop of project's updates?
> - What are the main components of our system? How do they interact?
> - Which stakeholders exist? What is their expectation for us? And concern?
>
> **Testing**???
>
> - How do I tell right from wrong? (see [Oracles]())
> - Which oracles are generally most trustworthy?
> - Which heuristics might be useful?
> - Which test techniques are useful in our context?
> - What expertise do we lack?
> - What are the typical use cases?
> - As a tester, is there anything I'm not allowed to do?
> - Any (testing) tips the developers can give to the testers?
> - How do we track and visualize our testing?
> - How do we report bugs? How do we prioritise fixing them?
>
> **Product**???
>
> - Which features will the system have?
> - What must the system never do?
> - What problem is the system expected to solve? For who?
> - How are our users expected to interact with our system?
> - Which platforms (e.g. OS, browser) should we support?
>
> **Resources**
>
> - What resources do I have available? *(e.g. people, time, expertise, equipment, etc.)*
> - Is this amount of resources sufficient for this project?
> - How flexible is the time plan? What happens if we miss a deadline?

---

> ### "context-revealing questions" by Michael Bolton
>
> - Who is my client?
> - Who is the customer of the product?
> - Who are the other stakeholders?
>
> - How would you describe the success of this product?
> - What risks would threaten that success?
>
> - How much time do I have?
> - When were you thinking of delivering this product?
>
> - When do you want reports/answers?
> - How do you want me to provide them? How often?
> - What else do you want me to deliver?
>
> - This product I’m testing… could I have it myself, please?
> - Is there alternatives or competitors?
> - How is this one expected to be the same or different from the other ones?
>
> - Could you describe how it works?
> - Could you draw me a diagram of how it works?
> - How would I recognize a problem?
> - Who can confirm if a specific behaviour is a problem? (oracle)
> - What should I do when I find a confirmed problem?
>
> - What does this product depend upon?
>
> - What tools or materials were used to construct it?
> - Who built this product?
> - Can I talk to them?
> - Are they easy to talk to? Helpful?
> - Have they ever built anything like this before?
> - Is there anyone that I should avoid?
> - Who else knows something about this?
> - Who are the local experts in this field?
> - Who are the acknowledged experts, even if they don’t work here?
>
> - Has anyone else tested this?
> - Can I see their results, please?
> - Who else is on my team?
>
> - What skills and competencies are expected of me?
> - What other skills and competencies can be found on the team?
> - Any skills and competencies lacking?
>
> - What information is available to me?
> - Where could I find more information?
> - Are there more rules? Requirements? Specifications?
>
> - What can I do to help you discover the information you need?
>
> - What equipment and tools are available to help with my testing?
> - What tools do you expect me to build?
>
> - What are your feelings about this product?
> - Who might feel differently?
> - How might they feel?
> - What do customers say about it?
> - Can I talk to the technical support people?
> - Can I talk to the customers?
>
> - Who can we trust? Is there anyone that we should distrust?
> - Is there anything that you would like to prohibit me from doing?
>
> - Are there any other questions I should be asking you?
>
> -- https://www.developsense.com/blog/2010/11/context-free-questions-for-testing/




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
