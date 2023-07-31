# Test types

> **tl;dr** SUMMARY_HERE

[toc]

## Theory

> “Testing is the process of learning about a product through exploration and experimentation”
>
> -- [James Bach and Michael Bolton](http://www.satisfice.com/blog/archives/1509)

In that sense, we can learn about our product under test in multiple ways. Remember the [testing pyramid](/types/test-pyramid.md)? It hinted that there are different types of tests.

Talking about different test types is difficult.

Take integration testing for instance. For some people that is a very broad activity that tests through a lot of different parts of your system. For others it's a rather narrow thing, only testing the integration with one external part at a time. Some call them *integration tests*, some refer to them as *component tests*, some prefer the term *service test*.

The software development community simply hasn't managed to settle on well-defined terms around testing -- yet.

What is important is that **you and your team speak the same testing language**. Align with your team naming and scope of each relevant type of test.

### Categories

#### ⚠️ ⚠️ Functional testing

TODO

#### ⚠️ ⚠️ Non functional testing

TODO

#### Black box testing

> A “box” that takes some input and gives you some output. You don’t know what’s going on inside.
>
> -- [Albert Gareev](http://automation-beyond.com/2016/08/30/on-white-box-and-black-box-testing/)

Black box testing is a classification given to any test that is executed without knowing or caring about the internal workings of the system under test. The term "black box" is used because the system is treated as an opaque or mysterious box. The tester provides inputs to the system and observes the outputs or actions it produces. The focus is checking the system's external behaviour to ensure it matches the system's requirements and the user's expectations.

Examples of black box testing include:

- [UI Testing](): Testing the user interface to ensure it is easy to use and understand, regardless its code implementation.
- [Integration Testing](#integration-tests): Testing the interaction between different components to ensure they can cooperate, regardless how each component is implemented.
- [Functional Testing](): Testing the features or functions of the system, without caring how that behaviour is implemented.

#### White box testing

> We can read the code. We understand what it’s supposed to do. The code is in a glass “box”.
>
> -- [Albert Gareev](http://automation-beyond.com/2016/08/30/on-white-box-and-black-box-testing/)

White box testing is a classification given to any test that knows the internal structure of the system and checks details of its internal behaviour. The term "white box" suggests that the system is treated as a transparent box, where the tester can see inside. The tester uses their knowledge of the system to create tests that are more detailed and thorough than black box tests. The focus is checking the information flow and the internal state of the system during the test execution.

Examples of white box testing techniques include:

- [Unit Testing](#unit-tests): Testing the behaviour of methods inside a component, to validate how many times a specific method is called and with what parameters (information flow) or to examine the values of internal variables during different stages of execution (internal state).

### Types

#### Static tests

> **tl;dr** Examine the code (without executing it) looking for potential errors and code quality issues.

Static tests, also known as static analysis or linting, focus on examining the source code without actually executing it.

It looks for potential (runtime) errors, vulnerabilities, and code quality issues. Examples of code quality issues include syntax errors, coding conventions violations, unused variables, incorrect types, and more.

These checks are very fast to run and you don't have to write them -- you simply run a tool. You should take advantage of these cost-effective tools because they improve the quality of your code with minimal effort.

#### Unit tests

> **tl;dr** Test the behaviour of a small unit of code to ensure it behaves as expected (in isolation).

Unit tests check the behaviour of small *units* of code, hence their name. These units are typically small parts of the code, such as methods or classes. The purpose of unit testing is to verify the correctness of these units by testing them independently from the rest of the system.

The core caracteristics of these tests are small, focused, fast, independent, reliable.

Unit tests should ensure that all your non-trivial code paths are covered (including happy paths and edge cases). At the same time they shouldn't be tied to your implementation too closely. As long as the behavior of a unit remains unchanged, a unit test should not fail even if the internal implementation of the unit is modified during refactoring.

These automated checks are fast to run because they don't require the whole system to be up and running and they only execute a small portion of the code. This makes them ideal to collect quick feedback and run frequently. Also, when a unit test fails, it becomes evident where the issue lies because each test covers a narrow scope and they run in isolation.

Unit tests act as a safety net, allowing developers to make changes with confidence, knowing that if a unit test fails, it indicates a problem within that specific unit. These tests also simplify debugging and support refactoring, as any issues introduced by changes can be detected through failing unit tests (see [Test-Driven Development](/toolbox/dev-methodologies?id=tdd-unit-test-driven-development)).

#### Integration tests

> **tl;dr** Test the interaction between components to ensure they work together correctly.

A system is made of several components interacting and working together with the same goal. [Unit tests](#unit-tests) check the correct behaviour of each component in isolation. Integration tests examine the behavior of these components when *integrated* together, to confirm they can interact with their "neighbours" or dependencies.

Integration tests identify any issues related to the communication between a pair of components (e.g. one module calling another module, one service sending data to a database, etc). If you want to test more components interacting with each other, check [end-to-end tests](#end-to-end-tests).

Mind that these integrations under test might be internal, when two components of your system interact, or external, when one component of your system relies on something external (like an API or a library).

These tests help uncover problems such as compatibility issues, configuration issues, interface or contract mismatches, or errors in the flow of information between components.

Integration tests help verify the correct behaviour of the system as whole at a small scale, testing one connection at a time. They play a crucial role in identifying early issues that may only surface when different components interact in runtime, reducing the risk of failures when the software is deployed in a real environment.

#### Contract tests

> **tl;dr** Test the compatibility or expectations of two components (a consumer and a provider).

A *contract* assumes two entities: a *consumer* and a *provider*. The Consumer needs or expects something from the Provider. The Provider promises to behave in a certain way to any Consumer that interacts with them. The details of that promise is called the Contract (or an interface).

In contract testing, each entity involved in the interaction defines its expectations (the consumer) and obligations (the provider) in the form of a contract. This contract outlines the expected inputs and outcomes (which can be data or behaviour).

During the execution of contract tests, a simulated request from the consumer is sent to the provider, which handles the request. If the request or the outcomes don't match the contract, such as incorrect parameters or mismatched data types, the test will fail. Failure indicates a contract violation, meaning the interaction between those two entities is currently broken.That failure might cascade to any other component that relies of that interaction.

These tests not only prevent issues but they also help with the debugging process. They enable consumers to easily detect broken integrations, that otherwise would fail silently and would be challenging to detect. Additionally, contract tests support providers by detecting breaking changes before they are deployed, thus preventing disruptions of their service and improving realiability.

Through contract tests, teams gain confidence in the compatibility of systems and services, ensuring that changes to one system do not negatively impact others. Contract testing also promotes collaboration between different teams through the usage of Consumer-Driven Contract tests ([CDC tests](https://martinfowler.com/articles/consumerDrivenContracts.html)).

#### API tests

> **tl;dr** Test the behaviour (functionality, performance, security, etc.) of an API.

API testing verifies the behaviour of application programming interfaces (APIs). There are many aspects of an API that can be tested, such as its interface (see [contract testing](#contract-tests)), its responses, how it handles errors and edge cases, and many more. There are also non-funcional aspects like authentication (security tests) and response times or resources usage (performance tests).

While it is possible to test the outcomes of an API through a user interface (UI), that is not recommended. It is much faster and reliable to test the API directly, by issuing direct calls to the endpoints of the API under test. Testing the API directly allows you to pinpoint issues within the API or its dependencies, whereas testing through the UI introduces uncertainty as problems could arise from the UI or backend communication with the API (see [Say TATTA to Your TUTTU](https://www.youtube.com/watch?v=VGNxv9ilFbQ)).

In summary, API testing might include checking the functionality, performance and security of APIs to ensure they operate correctly and meet expected requirements.

#### UI tests

> **tl;dr** Test the apperance and behaviour of a UI.

UI tests assert if the user interface (UI) of a system behaves and looks as intended, validating both its behavior and appearance. Other aspects of the UI, like usability and accessibility, are evaluated by other types of tests, like [exploratory testing](#exploratory-testing) and [a11y testing](#accessability-testing) respectively.

Depending on the technology you use, testing your UI can be as simple as writing some unit tests for your frontend code. Modern frameworks often come with their own tools and helps to support this kind of testing.

Clicking a button and checking it changes color or disappears, typing an invalid value in a form and checking that validation is triggered, doing an action and checking that a warning is displayed to the user, all these are examples of testing the behaviour of a UI.

You can also test the design of your UI. In that case, you will render a page and check that the font is right, that there are no missing images, that specific components are visible, maybe even the layout and position of those components. However, given a UI contains many components, testing the appearance of all your pages becomes very expensive very fast. It doesn't help that those tests are tedious to write and they easily break. One solution is to cover that risk with a different kind of tests (see [snapshot tests](#snapshot-tests)).

#### End-to-end tests

> **tl;dr** Simulate user journeys in order to test the whole system instead of its parts.

Until now, tests have focused on a testing a specific part of the system, usually in isolation, sometimes using fake dependencies. End-to-end (E2E) tests are the complete opposite -- they ignore the parts and they use the real deal.

E2E tests evaluate the system as a whole, from start to finish. These tests simulate users interacting with the system, acting out real-world scenarios, using realistic systems (i.e. close to production environment).

They are called "end to end" because they exercise the entirety of the system, from one end to the other. You can picture the tests running *horizontally* or *vertically* across the system.

Imagine the system as a stack of layers, with each layer using the layer below it. For instance, the database layer serves as the foundation, followed by the API or service layer, and finally the UI layer on top. During an E2E test, an action is initiated at the topmost layer, propagating requests throughout the system, until they ultimately return to the UI. In this case you are testing the system *end to end vertically*, across several technological layers.

Now imagine you are testing a user journey, like adding a product to a cart on an e-commerce website. To test that journey, several features of the system will be tested such as listing products, adding item to cart and displaying the items in the cart. In this case you are testing the system *end to end horizontally*, across several features.

These tests have advantages and limitations. They are valuable because they are realistic. When an E2E test fails it usually means the user would also fail to perform the same action. That's true unless your E2E tests are "flaky", non-deterministic or unrealiable. Because E2E tests require real components interacting with each other, it just takes one faulty component for the whole test to fail. That's why these tests tend to be fragile.

E2E tests come with both advantages and limitations. They are valuable because they closely resemble real user interactions, which means a failed E2E test typically means a user would encounter a similar issue. However, E2E tests can be unreliable due to flakiness. Since these tests use real components, a single faulty component can cause the entire test to fail. That's why these tests tend to be fragile.

#### Regression tests

> **tl;dr** Check for the return of a previously fixed issue.

Regression testing involves checking for the return of unwanted behavior in software . For example, if you fix a problem and later encounter the same issue, that's called a regression. Regression testing aims to find such regressions, but it only detects issues that were previously known -- it doesn't uncover new issues. This type of testing can tell you if the quality has worsened, but not if it was already bad.

A good practice is to add a test for every bug you fix. This has two advantages: it confirms that the issue is indeed fixed, and it helps catch future regressions of that same issue.

> Breaking stuff that *worked* before is *embarrassing*.
> Breaking stuff that was *broken and fixed* before is *really embarrassing*.
>
> -- [Michael Bolton](https://www.developsense.com/presentations/2013-05-STAREast-Regression.pdf)

Over time, you will discover more issues and create additional regression tests to address them. As a result, you will accumulate a significant number of regression tests. These tests can be executed either manually (by following a guide), or automatically (by running a script).

However, as the number of tests grows, running them all manually will become costly and time-consuming. Since regression tests are repetitive, it is better to automate them, eliminating the need for human involvement without sacrificing any benefits. To decide which regression tests to write or prioritise, check the [`RCRCRC`](/toolbox/mnemonics.md) mnemonic.

Your team also gets to decide which tests to run and how frequently. If you have sufficient resources, running all tests before pushing code changes is ideal. However, if your team is limited, optimization becomes necessary. You can select a subset of tests that are crucial and run them before each push to the code repository. The remaining tests can be scheduled to run at a specific time of the day. Another approach is to organize tests by modules, allowing you to prioritize regression tests related to the specific area of code that was modified. For example, if you made changes to the user account module, it would be a priority to run the regression tests associated with that module.

If you consistently experience failed regression checks (assuming they are genuine issues and not false positives), it is important to investigate the root cause. This indicates that there might be something in your development process that increases the likelihood of regressions. Take the necessary steps to fix the underlying problem and avoid unnecessary regressions.

#### Acceptance tests

> **tl;dr** Test the system as a user would on a real scenario to check if it behaves as desired.

Acceptance tests, also known as user acceptance tests (UAT), evaluate whether a system meets the specified business requirements and user expectations. Similar to how acceptance criteria must be true for a user story to be accepted as done, acceptance tests must be passing for a feature to be accepted, hence the name.

Acceptance tests are typically performed by users or testers to validate the system against a list of acceptance criteria. While automation is common for acceptance tests, it is not mandatory. It's more important how they are written than how they are executed.

These tests should always be described from a *user's* perspective (like [end to end tests](#end-to-end-tests)), not from a *technical* perspective (like [unit tests](#unit-tests)). Writing a test from the user's perspective can raise several "what happens when..." or "what if..." questions, which is an opportunity to learn more about the system and its requirements.

That's one of the reasons why people associate [Behaviour-Driven Development (BDD)](/dev-methodologies#bdd-behaviour-driven-development) and [Gherkin syntax](/dev-methodologies#story) to acceptance tests -- it's because both BDD and Gherkin are tools that force you to *think* and *act* like a user, regardless of implementation details.

When an acceptance test passes it implies the feature under test is good enough to be released. That means these tests require a high level of confidence and should closely resemble real-world usage, which is why many [E2E tests](#end-to-end-tests) serve as acceptance tests.

#### Smoke tests

> **tl;dr** Quickly check essential features to identify critical issues that compromise the system.

Smoke tests focus on checking critical functionalities of an application to ensure its basic stability and viability. The primary goal of smoke testing is to quickly determine whether the application is ready for more testing. These tests are typically conducted after a new build or deployment to catch any major issues that got introduced in latest code change.

The scope of smoke tests is narrow because they only cover essential functionalities, such as starting the app/website, logging in a user, accessing key pages and performing basic operations. These tests act as an initial checkpoint to ensure that the basic functionality of the application is intact, giving the team confidence to proceed with more in-depth testing or development.

These tests are a trade-off between speed and confidence, prioritizing speed. They exist to quickly give you just enough confidence to continue, like a fail fast mechamism. If a smoke test fails then there's no point in continuing testing or development, as that would be wasted effort. When that happens the team needs to stop and fix the underlying issue.

### Others

#### Snapshot tests

Snapshot testing is particularly useful to test user interfaces (UI) and the correct rendering of components. The goal is to detect visual differences between snapshots and alert for unintended changes.

When a snapshot test runs, it renders a component or a full page. The test then takes a snapshot of what was rendered. This snapshot can be a screenshot file (like PNG) or a markup file (like HTML or XML). The next time the test executes, a new snapshot will be taken. There's always two snapshots, the reference snapshot and the current snapshot.

The test passes if there are no differences between both snapshots. When a test fails it means something visually changed from the last time the test executed. Could be a button that changed color, a custom font that failed to render, or a section of the page that is missing. If the change was intended, then with a simple command we accept the current snapshot and the new reference.

Of course all of this could be done manually, by a human going through each screen, using their sight and memory to identify visual breaking changes. That would be slow, fallible and quite boring -- that's why using these automated checks can be so enticing. Besides, they auto-generated so you don't even have to write them! However, these tests are not perfect.

Since these tests are so effortless to create, your team might rely on them too much and write less [UI tests](#ui-tests). This can lead to less coverage and longer debug times, because when a snapshot test fails you need to look at long XML files or pixels on screenshots and figure what exactly is wrong and why. The painful debug makes it quite tempting to run the command that accepts all current snapshots and the new reference, which further degrades quality.

If used responsibly snapshot testing can be a valuable addition, otherwise it might hurt your testing.

#### Rejection tests

Same as [acceptance tests](#acceptance-tests) but more "honest".

> Acceptability of a product is multi-dimensional. The product is used by people to solve some problem. The code may perform certain functions exquisitely as part of a product that is an incomplete solution to the problem, that is hard to use, or that we hate.
>
> When the acceptance tests pass, the product *might* be acceptable. When the acceptance tests fail, we know for sure that the product *isn’t* acceptable. Thus I’d argue that instead of talking about acceptance tests, we should be talking about them as **rejection tests**.
>
> -- [Michael Bolton](https://developsense.com/blog/2010/08/acceptance-tests-lets-change-the-title-too)

#### Sanity tests

Tests that should always be right, no matter what.

> Examples
> `expect(true).to.be.true;`
> `expect(1).to.equal(1);`

If these tests fail, there's something wrong with the test framework or its configuration.

#### Confidence tests

See [smoke tests](#smoke-tests).

#### Build verification tests

See [smoke tests](#smoke-tests).

#### Monkey tests

Testing the app randomly, chaotically and mindlessly -- like a monkey 🐒

See [chaos testing](#chaos-testing) and [random testing](#random-testing).

#### Fuzzy tests

See [random testing](#random-testing).

----

TODO



#### ⚠️ ⚠️ Stress testing

> How the product behaves with unexpectedly huge numbers.
>
> Overwhelm the product. Too big. Too often. Too fast.

#### ⚠️ ⚠️ Load testing

>
> How the product behaves with high but expected numbers over a long period of time.

#### ⚠️ ⚠️ Accessibility testing
>
> - https://github.com/pa11y/pa11y
> - https://github.com/dequelabs/axe-core

#### ⚠️ ⚠️ Security testing

#### ⚠️ ⚠️ Performance testing

// Probably should go to Practice

### Testing approaches

#### ⚠️ ⚠️ Exploratory testing

> **tl;dr** SUMMARY_HERE

> Even the most diligent test automation efforts are not perfect. Sometimes you miss certain edge cases in your automated tests. Sometimes it's nearly impossible to detect a particular bug by writing a unit test. Certain quality issues don't even become apparent within your automated tests (think about design or usability). Despite your best intentions with regards to test automation, manual testing of some sorts is still a good idea.
>
> Emphasises the tester's freedom and creativity to spot quality issues in a running system. Simply take some time on a regular schedule, roll up your sleeves and try to break your application. Use a destructive mindset and come up with ways to provoke issues and errors in your application. Document everything you find for later. Watch out for bugs, design issues, slow response times, missing or misleading error messages and everything else that would annoy you as a user of your software.
>
> During exploratory testing you will spot problems that slipped through your build pipeline unnoticed. Don't be frustrated. This is great feedback on the maturity of your build pipeline. As with any feedback, make sure to act on it: Think about what you can do to avoid these kinds of problems in the future. Maybe you're missing out on a certain set of automated tests. Maybe you have just been sloppy with your automated tests in this iteration and need to test more thoroughly in the future. Maybe there's a shiny new tool or approach that you could use in your pipeline to avoid these issues in the future. Make sure to act on it so your pipeline and your entire software delivery will grow more mature the longer you go.
>
> https://martinfowler.com/articles/practical-test-pyramid.html

#### ⚠️ ⚠️ Automation (in) testing

TODO

#### Chaos testing

> **tl;dr** Proactively introduce controlled faults in the system and observe how it reacts and recovers.

Chaos testing (or chaos engineering) intentionally introduces controlled and unexpected disruptions into a system. The goal is to assess the system's resilience and ability to withstand failures and recover from them, allowing developers to proactively address these issues before they lead to unplanned downtime and negative user experiences.

During chaos testing, various types of faults, such as network outages, resource limitations, or hardware failures, are deliberately injected into the system to observe how it responds and recovers. The chaos is carefully controlled, and the impact on the system is closely monitored to ensure that it remains within acceptable bounds.

Speaking of users, given chaos testing targets production, it’s important to do so in a way that minimizes any negative impact on users using the system while the testing is happening. It's crucial to have sufficient and reliable monitoring tools and an incident response team ready to react as soon as users are affected.

Chaos testing plays a crucial role in building robust and resilient systems, especially in distributed and cloud-based architectures, where failures are inevitable.

#### Mutation testing

> **tl;dr** Introduce small code changes (mutations) to check if the tests detect those mistakes.

A test that always passes gives you no information about the system. It's less than useful, it's misleading. That's why when you write a test you should always try to make it fail. Mutation testing is an advanced technique that streamlines that process and evaluates how good your test suite is at detecting issues.

Mutation testing introduces small changes (mutations) to the original source code under test, creating faulty versions of the software. The mutation can be as simple as replacing a plus operation with a minus or removing a few lines of code. Each mutation represents a potential mistake or error that could happen in the software. The end goal is to determine how well the test suite can identify and "kill" these mutated versions by flagging them as faulty.

During the testing, the mutated code is run through the existing test suite. If the test suite successfully identifies and fails the mutated code, that mutation is considered "killed." On the other hand, if the test suite does not detect the mutation and the tests pass, it is referred to as a "surviving" mutant. The goal is to have as many mutants killed as possible, meaning the test suite is effective at detecting code defects.

The mutation score is the percentage of killed mutants out of the total generated. A high mutation score indicates a robust test suite capable of detecting potential bugs, while a low score signals the need for improvements in the test suite's accuracy. Though mutation testing is computationally intensive and requires additional effort, its insights into test suite quality make it a valuable tool for enhancing software reliability.

#### Random testing

> **tl;dr** Use random inputs on every test run as a way to gradually increase test data coverage.

Introducing randomness in the tests can be beneficial in some cases. We know that the more we test something, the more we learn about it, and fewer issues will remain to be discovered. If we always use the same test inputs, we're not learning new information about the system. Random testing is particularly effective in finding certain classes of bugs, especially those related to boundary conditions or unexpected inputs.

What if every time the tests run, a new random input is used? If your system expects a number, any number should be fine right? There's no harm in using a number that is not always the number "5", right? Surely it won't break the system, right? That's where randomness can help. Using a new random number, string, name, address, etc. every time the test runs increases the data coverage of your testing.

Computers are great at doing repetitive work, so there's little effort in generating and using new inputs for every test run. There's one catch: you must ensure the tests are reproducible. That means, once the test fails, you must have enough logs to know exactly which inputs caused the failure. Only then you will be able to debug what that particular input causes a problem. Without this information, randomness brings you no value, only inconsistency.

Also see [chaos testing](#chaos-testing).

### ⚠️ ⚠️ Types vs Risks - Are there more types of testing?

> The more your tests resemble the way your software is used, the more confidence they can give you.
>
> — [Kent Dodds](https://twitter.com/kentcdodds/status/977018512689455106)

> When you are describing the testing that you are doing to someone unfamiliar, or even familiar, with the craft of software testing, do you talk about of the types of testing that you do? Or do you talk about types of risks that you test for? Both? Neither? Is there a difference?
>
> All of these types of testing are trying to describe the testing being done in relation to specific areas of concern. But if you think about it, all of these types of testing are really just describing testing that is specifically focused on testing types of product risks.
>
> Functional Testing is testing that focuses on functional risks. Regression Testing is testing that focuses on the risks relating to the software regressing with changes. Integration Testing is testing that focuses on integration risks regarding the feature, component or some part of the software being worked on with other features, components or parts connected with it.
>
> Things like “exploratory testing” or “scripted testing”, well, they’re approaches to testing, and things like “black box testing” or “white box testing” are testing techniques. So I don’t include these as “types of testing”.
>
> Imagine yourself testing something. Think about an instance of a test – a test idea that you might have. What drives that test idea? When testing software, our tests relate to some kind of product risk. By “product risk”, I mean risks that specifically relate to the product. A test relates to some kind of risk that we are testing for.
>
> Example: We simulate ten thousand people browsing the feature at the same time to test for user load related risks. “XYZ Testing” is testing that focuses on the risks of “XYZ”.
>
> Counter-example: if our context was that we were working on a mobile app, then a something we’d test for is how much our app runs down the battery. Have you ever heard of “battery consumption testing” as a type of testing? No… But this is a type of product risk that we should definitely investigate!
>
> Motivation:
>
> - You move away from implicitly talking about testing phases – types of testing typically subconsciously force our thinking down a path of: “we need to do this type of testing, then do that type of testing, then do that other type of testing…” Doing for the sake of doing. Everyone is doing it. Clarifies the motivation for having those tests.
> - You get better at telling your testing story – i.e. “this test was to investigate this risk. Here’s what I discovered about this risk. I need more time to test this feature as this risk is important to investigate”.
> - You spot gaps in your testing more easily – i.e. “we tested for risks relating to lots of data being used in the transaction (i.e. data load risks), but that made me think about transaction load risks, so what if we had lots of transactions at one time?”
> - You’ll also get better at discovering more risks that you might not have thought about before. You’ll certainly be more likely to ask the question: “What risks have we not thought about yet?”
>
> -- https://danashby.co.uk/2019/05/01/risk-based-testing-part-one-talking-about-risks-over-types-of-testing/

## ⚠️ ⚠️ Practice

Puzzle analogy

- Unit: Is this a functional piece of puzzle?
- Integration: Does this piece of puzzle fit the adjacent pieces?
- End-to-end: Do all these pieces together form the bottom edge of the puzzle?

> I don’t believe there is such thing as a good test or a bad test. Even if I run the most simple and shallow of tests, if it reveals a bug, helps me come up with a new test idea, or reveals some information that is new or useful to me, then it’s a good test. This doesn’t mean that I can solely rely on simple or shallow tests.
>
> Good tests and bad tests do not really exist. It’s up to us as testers to create quality tests and determine what are the most suitable tests to discover information about specific risks. We can do this by questioning and discussing ideas with our teams. Additionally by discovering risks, forming test ideas around those risks, and being observant when executing them. Not every test will be of the same quality, or be structured in the same way, so you need to remain vigilant. It’s up to us, as we test, to question what we have done and what we have learned, to see if assumptions were made or if details were missed. We can always learn and improve to deliver better testing.
>
> -- Mark W. https://www.ministryoftesting.com/articles/48684b2d

> Trade off model
>
> - **Speed**: How long do we have to wait to get the feedback the test gives us?
> - **Coverage**: How much of the system (vertically) does the test exercise?
> - **Variation**: How many near-identical variations of the test are there?
>
> In an ideal world, our tests would execute instantaneously, cover the entire system, and would deal every combination of inputs and states as well. Therefore, the ideal test would score very highly in all dimensions. Unfortunately this is not possible in the real world.
>
> As the model shows, no test can ever maximise for all dimensions. Any test will compromise on some of the dimensions. We therefore need to choose which dimension to prioritise for a test. This is the trade-off. Each test should prioritise one of the dimensions. The trade-off of priorities should be based on what feedback about the system we need.
>
> -- https://joshilewis.wordpress.com/2017/02/15/test-trade-offs/

Check tools /tools.md

> unit tests
>
> They are usually structured in three phases -- [Arrange, Act, Assert](https://wiki.c2.com/?ArrangeActAssert) -- you start by *arranging* what you need for the test, then you perform the *action(s)* you want to test, and finally you *assert* the behaviour matches your expectations.
>
> If your test has multiple actions, then it's too big and needs to be broken down. If it has multiple sequences of Act and Asserts, then it's testing too much and needs to be split. If it calls another

> Unit tests are written by programmers, using a programming language, to ensure that the code does what they intend it to do. Acceptance tests are written by testers, using an almost natural language, to make sure the code does what they expect it to do.
>
> It's true that the two streams of tests test the same things. Indeed, that's the point. The two together make sure that the business and engineers intend the same thing.
>
> — [Robert C. Martin](https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests)

> integration
>
> For your automated tests this means you don't just need to run your own application but also the component you're integrating with. If you're testing the integration with a database you need to run a database when running your tests. For testing that you can read files from a disk you need to save a file to your disk and load it in your integration test.
>
> I like to treat integration testing more narrowly and test one integration point at a time by replacing separate services and databases with test doubles. Example:
>
> 1. start a database
> 2. connect your application to the database
> 3. trigger a function within your code that writes data to the database
> 4. check that the expected data has been written to the database by reading the data from the database
>
> When writing *narrow integration tests* you should aim to run your external dependencies locally. Avoid integrating with the real production system in your automated tests. Blasting thousands of test requests against a production system is a surefire way to get people angry because you're cluttering their logs (in the best case) or even DoS 'ing their service (in the worst case). Integrating with a service over the network is a typical characteristic of a *broad integration test* and makes your tests slower and usually harder to write.
>
> https://martinfowler.com/articles/practical-test-pyramid.html

## Sources

- [Heuristic Test Strategy Model](https://www.satisfice.com/download/heuristic-test-strategy-model)
- [The Practical Test Pyramid](https://martinfowler.com/articles/practical-test-pyramid.html)
- [Things Could Get Worse: Ideas About Regression Testing](https://www.developsense.com/presentations/2013-05-STAREast-Regression.pdf)
- [Contract testing by Pact: Convince me](https://docs.pact.io/faq/convinceme.html)
- [On “White Box” and “Black Box” testing](http://automation-beyond.com/2016/08/30/on-white-box-and-black-box-testing/)
- [Static vs Unit vs Integration vs E2E Testing for Frontend Apps](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests)
- [Kill More Bugs! Add Randomization To Your Web Testing](https://responsibleautomation.wordpress.com/2023/05/31/kill-more-bugs-add-randomization-to-your-web-testing/)
- [What is Chaos Testing?](https://www.pagerduty.com/resources/learn/what-is-chaos-testing)
- [What is Chaos Engineering?](https://www.testingwithmarie.com/post/what-is-chaos-engineering)
