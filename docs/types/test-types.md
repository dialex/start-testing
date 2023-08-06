<!-- markdownlint-disable MD051 -->

# Test types

> **tl;dr** Each test type is optimised to assess the quality of a specific area or trait of our system.

(This is a very long post. You don't have to read it all in one go. Use it as a reference, anytime you want to check the purpose of a particular test type.)

> Testing is the process of learning about a product through exploration and experimentation
>
> — [James Bach and Michael Bolton](http://www.satisfice.com/blog/archives/1509)

In that sense, we can learn about our product under test in multiple ways. Remember the [testing pyramid](/types/test-pyramid.md)? It hinted that there are different types of tests.

Talking about different test types is difficult.

Take integration testing for instance. For some people that is a very broad activity that tests through a lot of different parts of your system. For others it's a rather narrow thing, only testing the integration with one external part at a time. Some call them *integration tests*, some refer to them as *component tests*, some prefer the term *service test*.

What is important is that **you and your team speak the same testing language**. Align with your team naming and scope of each relevant type of test.

## Categories

### Functional testing

Functional testing evaluates the system's features. The goal is to confirm that the system fulfils the (functional) requirements that led to its creation and that it delivers the expected outcomes to the users.

Functional testing covers a wide range of tests, including [unit tests](#🏝️-unit-tests), [integration tests](#🧩-integration-tests), [regression tests](#✅-regression-tests), [UI tests](#💄-ui-tests), [API tests](#🛜-api-tests), [acceptance tests](#📋-acceptance-tests), and more. Each of these tests addresses specific aspects of the software's functionality, from testing individual units of code to verifying the seamless interaction between different components.

### Non-functional testing

Non-functional testing evaluates aspects of the system beyond its features. The objective is to assess how well the system performs in terms of speed, security, usability, and other non-functional attributes.

Non-functional testing includes various types of tests, such as performance testing, load testing, security testing, usability testing, accessibility testing, and more. Each test focuses on a specific non-functional aspect of the system to ensure it meets the required standards and provides an optimal user experience.

### Black box testing

> A "box" that takes some input and gives you some output. You don't know what's going on inside.
>
> — [Albert Gareev](http://automation-beyond.com/2016/08/30/on-white-box-and-black-box-testing/)

Black box testing is a classification given to any test that is executed without knowing or caring about the internal workings of the system under test. The term "black box" is used because the system is treated as an opaque or mysterious box. The tester provides inputs to the system and observes the outputs or actions it produces. The focus is checking the system's external behaviour to ensure it matches the system's requirements and the user's expectations.

Examples of black box testing include:

- [UI Testing](#💄-ui-tests): Testing the user interface to ensure it is easy to use and understand, regardless its code implementation.
- [Integration Testing](#🧩-integration-tests): Testing the interaction between different components to ensure they can cooperate, regardless how each component is implemented.
- [Functional Testing](#functional-testing): Testing the features or functions of the system, without caring how that behaviour is implemented.

### White box testing

> We can read the code. We understand what it's supposed to do. The code is in a glass "box".
>
> — [Albert Gareev](http://automation-beyond.com/2016/08/30/on-white-box-and-black-box-testing/)

White box testing is a classification given to any test that knows the internal structure of the system and checks details of its internal behaviour. The term "white box" suggests that the system is treated as a transparent box, where the tester can see inside. The tester uses their knowledge of the system to create tests that are more detailed and thorough than black box tests. The focus is checking the information flow and the internal state of the system during the test execution.

Examples of white box testing techniques include:

- [Unit Testing](#🏝️-unit-tests): Testing the behaviour of methods inside a component, to validate how many times a specific method is called and with what parameters (information flow) or to examine the values of internal variables during different stages of execution (internal state).

## Types

> The more your tests resemble the way your software is used, the more confidence they can give you.
>
> — [Kent Dodds](https://twitter.com/kentcdodds/status/977018512689455106)
>
> When you are describing the testing that you are doing to someone (…) do you talk about of the types of testing that you do? Or do you talk about types of risks that you test for? Is there a difference? All of these types of testing are trying to describe the testing being done in relation to specific areas of concern, (…) of product risks.
>
> — [Dan Ashby](https://danashby.co.uk/2019/05/01/risk-based-testing-part-one-talking-about-risks-over-types-of-testing/)

### 👓 Static tests

> **tl;dr** Examine the code (without executing it) looking for potential errors and code quality issues.

Static tests, also known as static analysis or linting, focus on examining the source code without actually executing it.

It looks for potential (runtime) errors, vulnerabilities, and code quality issues. Examples of code quality issues include syntax errors, coding conventions violations, unused variables, incorrect types, and more.

These checks are very fast to run and you don't have to write them — you simply run a tool. You should take advantage of these cost-effective tools because they improve the quality of your code with minimal effort.

### 🏝️ Unit tests

> **tl;dr** Test the behaviour of a small unit of code to ensure it behaves as expected (in isolation).

Unit tests check the behaviour of small *units* of code, hence their name. These units are typically small parts of the code, such as methods or classes. The purpose of unit testing is to verify the correctness of these units by testing them independently from the rest of the system.

The core characteristics of these tests are small, focused, fast, independent, reliable.

Unit tests should ensure that all your non-trivial code paths are covered (including happy paths and edge cases). At the same time they shouldn't be tied to your implementation too closely. As long as the behaviour of a unit remains unchanged, a unit test should not fail even if the internal implementation of the unit is modified during refactoring.

These automated checks are fast to run because they don't require the whole system to be up and running and they only execute a small portion of the code. This makes them ideal to collect quick feedback and run frequently. Also, when a unit test fails, it becomes evident where the issue lies because each test covers a narrow scope and they run in isolation.

Unit tests act as a safety net, allowing developers to make changes with confidence, knowing that if a unit test fails, it indicates a problem within that specific unit. These tests also simplify debugging and support refactoring, as any issues introduced by changes can be detected through failing unit tests (see [Test-Driven Development](/toolbox/dev-methodologies?id=tdd-unit-test-driven-development)).

### 🧩 Integration tests

> **tl;dr** Test the interaction between components to ensure they work together correctly.

A system is made of several components interacting and working together with the same goal. [Unit tests](#🏝️-unit-tests) check the correct behaviour of each component in isolation. Integration tests examine the behaviour of these components when *integrated* together, to confirm they can interact with their "neighbours" or dependencies.

Integration tests identify any issues related to the communication between a pair of components (e.g. one module calling another module, one service sending data to a database, etc). If you want to test more components interacting with each other, check [end-to-end tests](#🧑-end-to-end-tests).

Mind that these integrations under test might be internal, when two components of your system interact, or external, when one component of your system relies on something external (like an API or a library).

These tests help uncover problems such as compatibility issues, configuration issues, interface or contract mismatches, or errors in the flow of information between components.

Integration tests help verify the correct behaviour of the system as whole at a small scale, testing one connection at a time. They play a crucial role in identifying early issues that may only surface when different components interact in runtime, reducing the risk of failures when the software is deployed in a real environment.

### 🤝 Contract tests

> **tl;dr** Test the compatibility or expectations of two components (a consumer and a provider).

A *contract* assumes two entities: a *consumer* and a *provider*. The Consumer needs or expects something from the Provider. The Provider promises to behave in a certain way to any Consumer that interacts with them. The details of that promise is called the Contract (or an interface).

In contract testing, each entity involved in the interaction defines its expectations (the consumer) and obligations (the provider) in the form of a contract. This contract outlines the expected inputs and outcomes (which can be data or behaviour).

During the execution of contract tests, a simulated request from the consumer is sent to the provider, which handles the request. If the request or the outcomes don't match the contract, such as incorrect parameters or mismatched data types, the test will fail. Failure indicates a contract violation, meaning the interaction between those two entities is currently broken. That failure might cascade to any other component that relies of that interaction.

These tests not only prevent issues but they also help with the debugging process. They enable consumers to easily detect broken integrations, that otherwise would fail silently and would be challenging to detect. Additionally, contract tests support providers by detecting breaking changes before they are deployed, thus preventing disruptions of their service and improving reliability.

Through contract tests, teams gain confidence in the compatibility of systems and services, ensuring that changes to one system do not negatively impact others. Contract testing also promotes collaboration between different teams through the usage of Consumer-Driven Contract tests ([CDC tests](https://martinfowler.com/articles/consumerDrivenContracts.html)).

### 🛜 API tests

> **tl;dr** Test the behaviour (functionality, performance, security, etc.) of an API.

API testing verifies the behaviour of application programming interfaces (APIs). There are many aspects of an API that can be tested, such as its interface (see [contract testing](#🤝-contract-tests)), its responses, how it handles errors and edge cases, and many more. There are also non-functional aspects like authentication (security tests) and response times or resources usage (performance tests).

While it is possible to test the outcomes of an API through a user interface (UI), that is not recommended. It is much faster and reliable to test the API directly, by issuing direct calls to the endpoints of the API under test. Testing the API directly allows you to pinpoint issues within the API or its dependencies, whereas testing through the UI introduces uncertainty as problems could arise from the UI or backend communication with the API (see [Say TATTA to Your TUTTU](https://www.youtube.com/watch?v=VGNxv9ilFbQ)).

In summary, API testing might include checking the functionality, performance and security of APIs to ensure they operate correctly and meet expected requirements.

### 💄 UI tests

> **tl;dr** Test the appearance and behaviour of a UI.

UI tests assert if the user interface (UI) of a system behaves and looks as intended, validating both its behaviour and appearance. Other aspects of the UI, like usability and accessibility, are evaluated by other types of tests, like [exploratory testing](#🧭-exploratory-testing) and accessibility testing respectively.

Depending on the technology you use, testing your UI can be as simple as writing some unit tests for your frontend code. Modern frameworks often come with their own tools and helps to support this kind of testing.

Clicking a button and checking it changes colour or disappears, typing an invalid value in a form and checking that validation is triggered, doing an action and checking that a warning is displayed to the user, all these are examples of testing the behaviour of a UI.

You can also test the design of your UI. In that case, you will render a page and check that the font is right, that there are no missing images, that specific components are visible, maybe even the layout and position of those components. However, given a UI contains many components, testing the appearance of all your pages becomes very expensive very fast. It doesn't help that those tests are tedious to write and they easily break. One solution is to cover that risk with a different kind of tests (see [snapshot tests](#📸-snapshot-tests)).

### 🧑 End-to-end tests

> **tl;dr** Simulate user journeys in order to test the whole system instead of its parts.

Until now, tests have focused on a testing a specific part of the system, usually in isolation, sometimes using fake dependencies. End-to-end (E2E) tests are the complete opposite — they ignore the parts and they use the real deal.

E2E tests evaluate the system as a whole, from start to finish. These tests simulate users interacting with the system, acting out real-world scenarios, using realistic systems (i.e. close to production environment).

They are called "end to end" because they exercise the entirety of the system, from one end to the other. You can picture the tests running *horizontally* or *vertically* across the system.

Imagine the system as a stack of layers, with each layer using the layer below it. For instance, the database layer serves as the foundation, followed by the API or service layer, and finally the UI layer on top. During an E2E test, an action is initiated at the topmost layer, propagating requests throughout the system, until they ultimately return to the UI. In this case you are testing the system *end to end vertically*, across several technological layers.

Now imagine you are testing a user journey, like adding a product to a cart on an e-commerce website. To test that journey, several features of the system will be tested such as listing products, adding item to cart and displaying the items in the cart. In this case you are testing the system *end to end horizontally*, across several features.

These tests have advantages and limitations. They are valuable because they are realistic. When an E2E test fails it usually means the user would also fail to perform the same action. That's true unless your E2E tests are "flaky", non-deterministic or unreliable. Because E2E tests require real components interacting with each other, it just takes one faulty component for the whole test to fail. That's why these tests tend to be fragile.

E2E tests come with both advantages and limitations. They are valuable because they closely resemble real user interactions, which means a failed E2E test typically means a user would encounter a similar issue. However, E2E tests can be unreliable due to flakiness. Since these tests use real components, a single faulty component can cause the entire test to fail. That's why these tests tend to be fragile.

### ✅ Regression tests

> **tl;dr** Check for the return of a previously fixed issue.

Regression testing involves checking for the return of unwanted behaviour in software . For example, if you fix a problem and later encounter the same issue, that's called a regression. Regression testing aims to find such regressions, but it only detects issues that were previously known — it doesn't uncover new issues. This type of testing can tell you if the quality has worsened, but not if it was already bad.

A good practice is to add a test for every bug you fix. This has two advantages: it confirms that the issue is indeed fixed, and it helps catch future regressions of that same issue.

> Breaking stuff that *worked* before is *embarrassing*.
> Breaking stuff that was *broken and fixed* before is *really embarrassing*.
>
> — [Michael Bolton](https://www.developsense.com/presentations/2013-05-STAREast-Regression.pdf)

Over time, you will discover more issues and create additional regression tests to address them. As a result, you will accumulate a significant number of regression tests. These tests can be executed either manually (by following a guide), or automatically (by running a script).

However, as the number of tests grows, running them all manually will become costly and time-consuming. Since regression tests are repetitive, it is better to automate them, eliminating the need for human involvement without sacrificing any benefits. To decide which regression tests to write or prioritise, check the [`RCRCRC`](/toolbox/mnemonics.md) mnemonic.

Your team also gets to decide which tests to run and how frequently. If you have sufficient resources, running all tests before pushing code changes is ideal. However, if your team is limited, optimization becomes necessary. You can select a subset of tests that are crucial and run them before each push to the code repository. The remaining tests can be scheduled to run at a specific time of the day. Another approach is to organize tests by modules, allowing you to prioritize regression tests related to the specific area of code that was modified. For example, if you made changes to the user account module, it would be a priority to run the regression tests associated with that module.

If you consistently experience failed regression checks (assuming they are genuine issues and not false positives), it is important to investigate the root cause. This indicates that there might be something in your development process that increases the likelihood of regressions. Take the necessary steps to fix the underlying problem and avoid unnecessary regressions.

### 📋 Acceptance tests

> **tl;dr** Test the system as a user would on a real scenario to check if it behaves as desired.

Acceptance tests, also known as user acceptance tests (UAT), evaluate whether a system meets the specified business requirements and user expectations. Similar to how acceptance criteria must be true for a user story to be accepted as done, acceptance tests must be passing for a feature to be accepted, hence the name.

Acceptance tests are typically performed by users or testers to validate the system against a list of acceptance criteria. While automation is common for acceptance tests, it is not mandatory. It's more important how they are written than how they are executed.

These tests should always be described from a *user's* perspective (like [end to end tests](#🧑-end-to-end-tests)), not from a *technical* perspective (like [unit tests](#🏝️-unit-tests)). Writing a test from the user's perspective can raise several "what happens when…" or "what if…" questions, which is an opportunity to learn more about the system and its requirements.

That's one of the reasons why people associate [Behaviour-Driven Development (BDD)](/toolbox/dev-methodologies#bdd-behaviour-driven-development) and [Gherkin syntax](/toolbox/dev-methodologies#story) to acceptance tests — it's because both BDD and Gherkin are tools that force you to *think* and *act* like a user, regardless of implementation details.

When an acceptance test passes it implies the feature under test is good enough to be released. That means these tests require a high level of confidence and should closely resemble real-world usage, which is why many [E2E tests](#🧑-end-to-end-tests) serve as acceptance tests.

### 🔥 Smoke tests

> **tl;dr** Quickly check essential features to identify critical issues that compromise the system.

Smoke tests focus on checking critical functionalities of an application to ensure its basic stability and viability. The primary goal of smoke testing is to quickly determine whether the application is ready for more testing. These tests are typically conducted after a new build or deployment to catch any major issues that got introduced in latest code change.

The scope of smoke tests is narrow because they only cover essential functionalities, such as starting the app/website, logging in a user, accessing key pages and performing basic operations. These tests act as an initial checkpoint to ensure that the basic functionality of the application is intact, giving the team confidence to proceed with more in-depth testing or development.

These tests are a trade-off between speed and confidence, prioritizing speed. They exist to quickly give you just enough confidence to continue, like a fail fast mechanism. If a smoke test fails then there's no point in continuing testing or development, as that would be wasted effort. When that happens the team needs to stop and fix the underlying issue.

### Others

#### 📸 Snapshot tests

Snapshot testing is particularly useful to test user interfaces (UI) and the correct rendering of components. The goal is to detect visual differences between snapshots and alert for unintended changes.

When a snapshot test runs, it renders a component or a full page. The test then takes a snapshot of what was rendered. This snapshot can be a screenshot file (like PNG) or a markup file (like HTML or XML). The next time the test executes, a new snapshot will be taken. There's always two snapshots, the reference snapshot and the current snapshot.

The test passes if there are no differences between both snapshots. When a test fails it means something visually changed from the last time the test executed. Could be a button that changed colour, a custom font that failed to render, or a section of the page that is missing. If the change was intended, then with a simple command we accept the current snapshot and the new reference.

Of course all of this could be done manually, by a human going through each screen, using their sight and memory to identify visual breaking changes. That would be slow, fallible and quite boring — that's why using these automated checks can be so enticing. Besides, they auto-generated so you don't even have to write them! However, these tests are not perfect.

Since these tests are so effortless to create, your team might rely on them too much and write less [UI tests](#💄-ui-tests). This can lead to less coverage and longer debug times, because when a snapshot test fails you need to look at long XML files or pixels on screenshots and figure what exactly is wrong and why. The painful debug makes it quite tempting to run the command that accepts all current snapshots and the new reference, which further degrades quality.

If used responsibly snapshot testing can be a valuable addition, otherwise it might hurt your testing.

#### Rejection tests

Same as [acceptance tests](#📋-acceptance-tests) but more "honest".

> Acceptability of a product is multi-dimensional. The product is used by people to solve some problem. The code may perform certain functions exquisitely as part of a product that is an incomplete solution to the problem, that is hard to use, or that we hate.
>
> When the acceptance tests pass, the product *might* be acceptable. When the acceptance tests fail, we know for sure that the product *isn't* acceptable. Thus I'd argue that instead of talking about acceptance tests, we should be talking about them as **rejection tests**.
>
> — [Michael Bolton](https://developsense.com/blog/2010/08/acceptance-tests-lets-change-the-title-too)

#### Sanity tests

Tests that should always be right, no matter what.

> Examples
> `expect(true).to.be.true;`
> `expect(1).to.equal(1);`

If these tests fail, there's something wrong with the test framework or its configuration.

#### Confidence tests

See [smoke tests](#🔥-smoke-tests).

#### Build verification tests

See [smoke tests](#🔥-smoke-tests).

#### Monkey tests

Testing the app randomly, chaotically and mindlessly — like a monkey 🐒

See [chaos testing](#💥-chaos-testing) and [random testing](#🎲-random-testing).

#### Fuzzy tests

See [random testing](#🎲-random-testing).

## Testing approaches

### 🧭 Exploratory testing

> **tl;dr** A human interacting freely, to learn how the system behaves and feels in realistic scenarios.

Exploratory testing is an approach that relies on the testers' creativity, intuition, and domain knowledge to actively explore the system without relying on pre-made test cases. The main goal of exploratory testing is to gain a deeper understanding of the system's behaviour and to get a realistic measure of how it feels to use the system. Testers use the system, interact with its various features, and observe its behaviour to uncover issues and think about what to test next.

Unlike scripted or automated testing, exploratory testing does not follow a rigid test plan. Instead, testers are encouraged to freely explore the software, guided by questions like "what if…" and "what happens when…", and without being biased by a scripted user journey. This allows testers to uncover less frequent and more realistic bugs, making the system more robust.

> Even the most diligent test automation efforts are not perfect. Sometimes you miss certain edge cases in your automated tests. Sometimes it's nearly impossible to detect a particular bug by writing a unit test. Let the tester's freedom and creativity spot quality issues while interacting with the system.
>
> — [Martin Fowler](https://martinfowler.com/articles/practical-test-pyramid.html)

Exploratory testing is particularly useful in situations where requirements are unclear or changing rapidly, as testers can quickly adapt. It is also an effective method for verifying edge cases and scenarios that might not be covered by scripted test cases. Finally, certain quality issues can't even be measured, only felt — and machines aren't great at that (for now). Your test frameworks can't tell you how frustrating it is to use your product.

### 🤖 Automation in testing

> **tl;dr** Usage of tools and scripts to support testing tasks, to make them efficient and repeatable.

Automated testing is an approach that uses tools to automate specific parts of testing. The goal is to accelerate the repetitive and time-consuming test activities. It allows testers to run checks efficiently and consistently, reducing human error and freeing up time for more creative tasks (like [exploratory testing](#🧭-exploratory-testing)).

[Remember](/concepts/what-testing-is-not?id=🤖-automation) that several members of the testing community (James Back, Maaret Pyhäjärvi, Richard Bradshaw and many others) argue that Testing as a whole cannot be fully automated, and in that sense they believe saying "automated testing" is misleading. That's why Mark Winteringham and Richard Bradshaw proposed the term "automation in testing". The latter is more accurate because what we do as testers is use automation (tools, scripts, checks, metrics) to support and speed up our testing.

This automation can be automated checks that simulate user interactions, such as clicking buttons, inputting data, and validating outputs. These checks are written using a programming language and executed using a test automation framework. Once the automated checks are set up, they can be run repeatedly and effortlessly, providing fast, frequent and cheap feedback.

These automated checks are especially useful for [regression testing](#✅-regression-tests), where existing functionalities need to be tested repeatedly to ensure that new changes or enhancements do not introduce issues. Automation is also crucial for load and performance testing, where a large number of virtual users or transactions need to be simulated simultaneously to measure the system's performance under stress.

Mind that not all testing can be fully automated. "Manual testing" remains important for specific scenarios, like usability and exploratory testing, where human judgement and creativity are essential.

### 💥 Chaos testing

> **tl;dr** Proactively introduce controlled faults in the system and observe how it reacts and recovers.

Chaos testing (or chaos engineering) intentionally introduces controlled and unexpected disruptions into a system. The goal is to assess the system's resilience and ability to withstand failures and recover from them, allowing developers to proactively address these issues before they lead to unplanned downtime and negative user experiences.

During chaos testing, various types of faults, such as network outages, resource limitations, or hardware failures, are deliberately injected into the system to observe how it responds and recovers. The chaos is carefully controlled, and the impact on the system is closely monitored to ensure that it remains within acceptable bounds.

Speaking of users, given chaos testing targets production, it's important to do so in a way that minimizes any negative impact on users using the system while the testing is happening. It's crucial to have sufficient and reliable monitoring tools and an incident response team ready to react as soon as users are affected.

Chaos testing plays a crucial role in building robust and resilient systems, especially in distributed and cloud-based architectures, where failures are inevitable.

### 🧬 Mutation testing

> **tl;dr** Introduce small code changes (mutations) to check if the tests detect those mistakes.

A test that always passes gives you no information about the system. It's less than useful, it's misleading. That's why when you write a test you should always try to make it fail. Mutation testing is an advanced technique that streamlines that process and evaluates how good your test suite is at detecting issues.

Mutation testing introduces small changes (mutations) to the original source code under test, creating faulty versions of the software. The mutation can be as simple as replacing a plus operation with a minus or removing a few lines of code. Each mutation represents a potential mistake or error that could happen in the software. The end goal is to determine how well the test suite can identify and "kill" these mutated versions by flagging them as faulty.

During the testing, the mutated code is run through the existing test suite. If the test suite successfully identifies and fails the mutated code, that mutation is considered "killed." On the other hand, if the test suite does not detect the mutation and the tests pass, it is referred to as a "surviving" mutant. The goal is to have as many mutants killed as possible, meaning the test suite is effective at detecting code defects.

The mutation score is the percentage of killed mutants out of the total generated. A high mutation score indicates a robust test suite capable of detecting potential bugs, while a low score signals the need for improvements in the test suite's accuracy. Though mutation testing is computationally intensive and requires additional effort, its insights into test suite quality make it a valuable tool for enhancing software reliability.

### 🎲 Random testing

> **tl;dr** Use random inputs on every test run as a way to gradually increase test data coverage.

Introducing randomness in the tests can be beneficial in some cases. We know that the more we test something, the more we learn about it, and fewer issues will remain to be discovered. If we always use the same test inputs, we're not learning new information about the system. Random testing is particularly effective in finding certain classes of bugs, especially those related to boundary conditions or unexpected inputs.

What if every time the tests run, a new random input is used? If your system expects a number, any number should be fine right? There's no harm in using a number that is not always the number "5", right? Surely it won't break the system, right? That's where randomness can help. Using a new random number, string, name, address, etc. every time the test runs increases the data coverage of your testing.

Computers are great at doing repetitive work, so there's little effort in generating and using new inputs for every test run. There's one catch: you must ensure the tests are reproducible. That means, once the test fails, you must have enough logs to know exactly which inputs caused the failure. Only then you will be able to debug what that particular input causes a problem. Without this information, randomness brings you no value, only inconsistency.

Also see [chaos testing](#💥-chaos-testing).

## Sources

- [Heuristic Test Strategy Model](https://www.satisfice.com/download/heuristic-test-strategy-model)
- [The Practical Test Pyramid](https://martinfowler.com/articles/practical-test-pyramid.html)
- [Things Could Get Worse: Ideas About Regression Testing](https://www.developsense.com/presentations/2013-05-STAREast-Regression.pdf)
- [Contract testing by Pact: Convince me](https://docs.pact.io/faq/convinceme.html)
- [On "White Box" and "Black Box" testing](http://automation-beyond.com/2016/08/30/on-white-box-and-black-box-testing/)
- [Static vs Unit vs Integration vs E2E Testing for Frontend Apps](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests)
- [Kill More Bugs! Add Randomization To Your Web Testing](https://responsibleautomation.wordpress.com/2023/05/31/kill-more-bugs-add-randomization-to-your-web-testing/)
- [What is Chaos Testing?](https://www.pagerduty.com/resources/learn/what-is-chaos-testing)
- [What is Chaos Engineering?](https://www.testingwithmarie.com/post/what-is-chaos-engineering)
- [Talking About Risks Over Types of Testing](https://danashby.co.uk/2019/05/01/risk-based-testing-part-one-talking-about-risks-over-types-of-testing/)
