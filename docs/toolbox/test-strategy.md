# Test strategy

> **tl;dr** SUMMARY_HERE

## Theory

The test strategy is defined at the start of the project and can be revisited and reviewed during the duration of that project. It's usually driven by the testers, yet it should always include feedback from all team members. Their input is valuable because product owners know how stakeholders and customers will measure the product's quality, and because developers will partner with you to implement that test strategy.

> A good test strategy is a rich collage of different processes, techniques and tools.
>
> -- [Mark Winteringham](https://www.mwtestconsultancy.co.uk/bdd-testing-part-4/)

> The test strategy is the set of ideas that guide your test process to fulfill your (testing) mission.
>
>  -- ["The life of one man"](https://thelifeofoneman.com/the-testing-strategy)

This strategy reveals the way tests will be designed and executed to foster quality. To do so, it needs to answer several questions like what parts of the product will be tested, what test techniques will be used, who will be involved, and how long it will take. The number of questions and the detail of the answers depends on your project's [requirements](), so you will have choose between a formal and detailed document versus a simple and abridged alternative.



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

> 

## Practice

A good starting point is the Heuristic Test Strategy Model from [James Bach](https://www.satisfice.com/download/heuristic-test-strategy-model). According to that plan, testing is influenced by: project environment, quality criteria, test techniques. [Dan Ashby](https://danashby.co.uk/2017/12/13/a-new-model-for-test-strategies/) then simplified that model into an intuitive diagram.

![DanAshbyHTSM](../_media/articles/modified-htsm1.png)

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

> - Usefulness: Will the test plan effectively serve its intended functions?
> - Accuracy: Is it accurate with respect to any statements of fact?
> - Efficiency: Does it make efficient use of available resources?
> - Adaptability: Will it tolerate reasonable change and unpredictability in the project?
> - Clarity: Is the test plan self-consistent and sufficiently unambiguous?
> - Usability: Is the test plan document concise, maintainable, and helpfully organized?
> - Compliance: Does it meet externally imposed requirements?
> - Foundation: Is it the product of an effective test planning process?
> - Feasibility: Is it within the capability of the organization that must perform it?
>
> https://www.satisfice.com/download/test-plan-evaluation-model

If you're not sure which areas should be tested, you can do a risk mapping exercise. [Sam Connelly](https://bughuntersam.com/visual-risk-ui-automation-framework/) explains step by step how you can make one. [Diogo Nunes](https://www.diogonunes.com/blog/risk-mapping-prioritisation/) later adapted that exercise for remote teams.

> #### First Five
>
> - What (product) are we testing?
>
> - How much time do we have?
>
> - What should be the main focus of our testing?
>
> - Do I need to document our test strategy? Why? How? Who will read it?
>
> - Where can we get information about the product?
>
> #### Planning
>
> - What resources do I have available?
>  *people, money, equipment, licenses, time, expertise, facilities...* 
> - Is this a realistic amount of resources for this project? 
>- How flexible is the time plan and what happens if the product is not “ready” by the deadline? 
> - What project risks exist?
>   *e.g. customers not clear about what they want.*
> - What is our backup plan if risk X happens? 
> - What is our backup plan in general if everything fails? 
> - What is likely to change?
>   *e.g. team setup, requirements, developers' focus, delivery dates…* 
> - Any meetings we should attend/discussions we should be part of? 
> - How do we handle handovers/new members/lost members? 
> - Who does what?
>   *e.g. responsibilities and roles* 
> - Any known problems along the road? 
> - Are there any workarounds or solutions to the known problems? 
> - Any regulations, rules, standards, certifications etc. limiting us or forcing us to work/act in a specific way? 
> - What administrative tools are (almost) enforced and what else do we need/benefit from? 
> - How do we plan the everyday work? 
> - What are the key test/release milestones?
> - How flexible is the scope - can the project be down-scaled if some unexpected problem happens?
> 
> #### Prioritization
> 
> - What is most important (to test)? 
>- What is not important (to test)? 
> - What can be skipped all together? 
>- What quality characteristics are most/least important? 
> - Any specific aspect of these characteristics that is more/less important? 
> - What is covered by other teams? 
> - How do we continuously verify we’re doing the right thing? 
> - What is our done criteria
>   *e.g. strict deadline, customer acceptance tests or some other assessment of "good enough quality" and if so, by who?* 
> - What's the general requirement for quality?
>   *Aim for the stars/critical system or “just don’t explode... too badly”*
> 
> #### Information
> 
> - Where can I get information about X and who do I contact if that's not enough? 
>- Which claims exist? 
> - Which customers exist, can we contact them? 
>- Who can answer questions and which questions? 
> - What is still unknown/not clear about the project? 
> - How do we simplify the complexity?
>   *Simplify the process of learning the product. An example might be "what sort of visual models would help to create?".* 
> - Any particular tours we should perform?
> - Are there any general guidelines to how we deal with learning activities and knowledge sharing? 
> - How do we further inspire/reassure/encourage feedback, reviews and knowledge sharing? 
> - How do we stay up to date with what is happening in the project?
> - How do we communicate with various information owners?
>   *e.g. email (address), phone (number), instant messaging tool, via other person, meeting etc.*
> 
> #### Support
> 
> - What kind of built in testability will help testers?
>- Which modifications can/must be done to the process in general to support the testing? 
> - What do we need to learn more about? 
>- Any particular configuration or test data we can prepare? 
> - Which tools can help us? 
> - What other teams should/can/must we cooperate with? When, how and why? 
> - Do I know who the developers are and can I talk to them? 
> - Do the developers have time allotted for us? 
> - Are there any problems getting their time/getting in touch with the developers? 
> - Will they keep working on this?
> - What will the developers test? How does this impact our testing? Can we make suggestions regarding their testing?
> 
> ####  Testing
> 
> - How do I tell right from wrong?
>  *Find potential oracles* 
> - Which oracles are generally most trustworthy? 
>- What testing risks exist?
>   *e.g. unstable test environment or lack of knowledge about something.*
> - Which test techniques might be useful? 
> - What expertise do we lack? 
> - Which scenarios/typical use cases exist? 
> - Which heuristics might be useful? 
> - What logical components/modules are there?
> - Is there anything I'm not allowed to do?
> - Any (testing) tips the developers can give to the testers?
> 
> #### Product
> 
> - Which product risks exist?
>  *e.g. complex algorithms likely to be buggy or new technology used.*
> - Is there any complexity we might be missing? 
>- Which functions will the system/application/feature have? 
> - Who’s the target audience? 
> - Which platforms, systems etc. should the product support? 
> - What requirements exist for this product? 
> - What problem is the product expected to solve? For who? 
> - What problems have happened in the past with this product? 
> - Any existing functionality that is impacted? 
> - What must the product never do?
>   *e.g. any data sent as plain text is strictly forbidden*
> 
> #### Reporting
> 
> - What do I need to cover and how well? 
>- How do we track and visualize coverage and progress? 
> - Which stakeholders exist?
>- How do we report bugs and status? To who? Why?
>   *"Why" as in: Which problems/questions will the receiver hope to solve/answer with our report.* 
> - What other artifacts/information do we need to share? To who? Why? 
> - When do we need to report what?
> 
> -- http://erik.brickarp.se/2016/11/test-plan-questions.html

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

## Teachers

- [Name](#link)

## Sources

- [title](#link)
- https://www.satisfice.com/download/test-plan-evaluation-model
- [An update to the Heuristic Test Strategy Model](https://danashby.co.uk/2017/12/13/a-new-model-for-test-strategies/)
