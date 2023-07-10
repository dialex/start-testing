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

What's important is that you and your team speak the same testing language. Make sure you align with them on naming and scope of each relevant type of test.

### Categories

#### Functional testing

TODO

#### Non functional testing

TODO

#### Black box testing

> A “box” that takes some input and gives you some output. You don’t know what’s going on inside.
>
> -- [Albert Gareev](http://automation-beyond.com/2016/08/30/on-white-box-and-black-box-testing/)

Black box testing is a classification given to any test that is executed without knowing or caring about the internal workings of the system under test. The term "black box" is used because the system is treated as an opaque or mysterious box. The tester provides inputs to the system and observes the outputs or actions it produces. The focus is checking the system's external behaviour to ensure it matches the system's requirements and the user's expectations.

Examples of black box testing include:

- [UI Testing](): Testing the user interface to ensure it is easy to use and understand, regardless its code implementation.
- [Integration Testing](): Testing the interaction between different components to ensure they can cooperate, regardless how each component is implemented.
- [Functional Testing](): Testing the features or functions of the system, without caring how that behaviour is implemented.

#### White box testing

> We can read the code. We understand what it’s supposed to do. The code is in a glass “box”.
>
> -- [Albert Gareev](http://automation-beyond.com/2016/08/30/on-white-box-and-black-box-testing/)

White box testing is a classification given to any test that knows the internal structure of the system and checks details of its internal behaviour. The term "white box" suggests that the system is treated as a transparent box, where the tester can see inside. The tester uses their knowledge of the system to create tests that are more detailed and thorough than black box tests. The focus is checking the information flow and the internal state of the system during the test execution.

Examples of white box testing techniques include:

- [Unit Testing](): Testing the behaviour of methods inside a component, to validate how many times a specific method is called and with what parameters (information flow) or to examine the values of internal variables during different stages of execution (internal state).

### Types

#### Static tests

> **tl;dr** Examine the code (without executing it) looking for potential errors and code quality issues.

Static tests, also known as static analysis or linting, focus on examining the source code without actually executing it.

It looks for potential (runtime) errors, vulnerabilities, and code quality issues. Examples of code quality issues include syntax errors, coding conventions violations, unused variables, incorrect types, and more.

These checks are very fast to run and you don't have to write them -- you simply run a tool. You should take advantage of these cost-effective tools because they improve the quality of your code with minimal effort.

#### Unit tests

> **tl;dr** Assert the behaviour a small unit of code to ensure it behaves as expected (in isolation).

Unit tests check the behaviour of small units of code, hence their name. These units are typically small parts of the code, such as methods or classes. The purpose of unit testing is to verify the correctness of these units by testing them independently from the rest of the system.

The core caracteristics of these tests are small, focused, fast, independent, reliable.

Unit tests should ensure that all your non-trivial code paths are covered (including happy paths and edge cases). At the same time they shouldn't be tied to your implementation too closely. As long as the behavior of a unit remains unchanged, a unit test should not fail even if the internal implementation of the unit is modified during refactoring.

These automated checks are fast to run because they don't require the whole system to be up and running and they only execute a small portion of the code. This makes them ideal to collect quick feedback and run frequently. Also, when a unit test fails, it becomes evident where the issue lies because each test covers a narrow scope and they run in isolation.

Unit tests act as a safety net, allowing developers to make changes with confidence, knowing that if a unit test fails, it indicates a problem within that specific unit. These tests also simplify debugging and support refactoring, as any issues introduced by changes can be detected through failing unit tests (see [Test-Driven Development](/toolbox/dev-methodologies?id=tdd-unit-test-driven-development)).

#### Integration tests

> **tl;dr** SUMMARY_HERE

> When writing unit tests these are usually the parts you leave out in order to come up with better isolation and faster tests. Still, your application will interact with other parts and this needs to be tested. **[Integration Tests](https://martinfowler.com/bliki/IntegrationTest.html)** are there to help. They test the integration of your application with all the parts that live outside of your application.
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

> Integration tests are a type of software testing that focuses on testing the interaction and collaboration between different components or modules of a system. These tests aim to verify that the integrated parts of the system work together correctly and produce the expected results. Integration tests are important because they help identify issues that may arise when multiple components are combined, such as communication problems, data mismatches, or compatibility issues.
>
> By simulating real-world scenarios and validating the interaction between different system parts, integration tests ensure that the system functions as a cohesive whole, reducing the risk of failures or errors when the software is deployed in a production environment. They provide confidence in the overall system reliability and help uncover potential integration-related bugs early in the development process, leading to a more robust and stable software product.

#### Contract tests

> **tl;dr** SUMMARY_HERE

> More modern software development organisations have found ways of scaling their development efforts by spreading the development of a system across different teams. Individual teams build individual, loosely coupled services without stepping on each others toes and integrate these services into a big, cohesive system. The more recent buzz around microservices focuses on exactly that.
>
> Splitting your system into many small services often means that these services need to communicate with each other via certain (hopefully well-defined, sometimes accidentally grown) interfaces.
>
> Interfaces between different applications can come in different shapes and technologies. Common ones are
>
> - REST and JSON via HTTPS
> - RPC using something like [gRPC](https://grpc.io/)
> - building an event-driven architecture using queues
>
> For each interface there are two parties involved: the provider and the consumer. The **provider** serves data to consumers. The **consumer** processes data obtained from a provider. In a REST world a provider builds a REST API with all required endpoints; a consumer makes calls to this REST API to fetch data or trigger changes in the other service. In an asynchronous, event-driven world, a provider (often rather called **publisher**) publishes data to a queue; a consumer (often called **subscriber**) subscribes to these queues and reads and processes data.
>
> As you often spread the consuming and providing services across different teams you find yourself in the situation where you have to clearly specify the interface between these services (the so called **contract**).
>
> Automated [contract tests](https://martinfowler.com/bliki/ContractTest.html) make sure that the implementations on the consumer and provider side still stick to the defined contract. They serve as a good regression test suite and make sure that deviations from the contract will be noticed early.
>
> **Consumer-Driven Contract tests** (CDC tests) let the [consumers drive the implementation of a contract](https://martinfowler.com/articles/consumerDrivenContracts.html). Using CDC, consumers of an interface write tests that check the interface for all data they need from that interface. The consuming team then publishes these tests so that the publishing team can fetch and execute these tests easily. The providing team can now develop their API by running the CDC tests. Once all tests pass they know they have implemented everything the consuming team needs.
>
> The team providing the interface should fetch and run these CDC tests continuously (in their build pipeline) to spot any breaking changes immediately. If they break the interface their CDC tests will fail, preventing breaking changes to go live. As long as the tests stay green the team can make any changes they like without having to worry about other teams.
>
> https://martinfowler.com/articles/practical-test-pyramid.html

#### API tests

TODO

#### UI tests

> **tl;dr** SUMMARY_HERE

> Depending on the technology you use, testing your user interface can be as simple as writing some unit tests for your frontend javascript code with your backend stubbed out. With web interfaces there's multiple aspects that you probably want to test around your UI: behaviour, layout, usability or adherence to your corporate design are only a few.
>
> Fortunately, testing the *behaviour* of your user interface is pretty simple. You click here, enter data there and want the state of the user interface to change accordingly. Modern single page application frameworks ([react](https://facebook.github.io/react/), [vue.js](https://vuejs.org/), [Angular](https://angular.io/) and the like) often come with their own tools and helpers that allow you to thoroughly test these interactions in a pretty low-level (unit test) fashion.
>
> Testing that your web application's *layout* remains intact is a little harder. Depending on your application and your users' needs you may want to make sure that code changes don't break the website's layout by accident.
>
> The problem is that computers are notoriously bad at checking if something "looks good", see ["snapshot tests"](). Once you want to test for *usability* and a "looks good" factor you leave the realms of automated testing. This is the area where you should rely on [exploratory testing](https://en.wikipedia.org/wiki/Exploratory_testing), usability testing (this can even be as simple as [hallway testing](https://en.wikipedia.org/wiki/Usability_testing#Hallway_testing)) and showcases with your users to see if they like using your product and can use all features without getting frustrated or annoyed.
>
> https://martinfowler.com/articles/practical-test-pyramid.html

#### End-to-end tests

> **tl;dr** SUMMARY_HERE

> End-to-end tests give you the biggest confidence when you need to decide if your software is working or not. Automate your tests by driving a (headless) browser against your deployed services, performing clicks, entering data and checking the state of your user interface.
>
> End-to-End tests come with their own kind of problems. They are notoriously flaky and often fail for unexpected and unforeseeable reasons. Quite often their failure is a false positive. The more sophisticated your user interface, the more flaky the tests tend to become. Browser quirks, timing issues, animations and unexpected popup dialogs are only some of the reasons that got me spending more of my time with debugging than I'd like to admit.
>
> Due to their high maintenance cost you should aim to reduce the number of end-to-end tests to a bare minimum.
>
> Think about the high-value interactions users will have with your application. Try to come up with user journeys that define the core value of your product and translate the most important steps of these user journeys into automated end-to-end tests.
>
> Remember: you have lots of lower levels in your test pyramid where you already tested all sorts of edge cases and integrations with other parts of the system. There's no need to repeat these tests on a higher level. High maintenance effort and lots of false positives will slow you down and cause you to lose trust in your tests, sooner rather than later.
>
> https://martinfowler.com/articles/practical-test-pyramid.html

#### Acceptance tests

> **tl;dr** SUMMARY_HERE

> At one point you should make sure to test that your software works correctly from a *user's* perspective, not just from a technical perspective. What you call these tests is really not that important. Having these tests, however, is. Pick a term, stick to it, and write those tests.
>
> This is also the moment where people talk about BDD and tools that allow you to implement tests in a BDD fashion. BDD or a BDD-style way of writing tests can be a nice trick to shift your mindset from implementation details towards the users' needs.
>
> Acceptance tests can come in different levels of granularity. Most of the time they will be rather high-level and test your service through the user interface. However, it's good to understand that there's technically no need to write acceptance tests at the highest level of your test pyramid. If your application design and your scenario at hand permits that you write an acceptance test at a lower level, go for it. Having a low-level test is better than having a high-level test. The concept of acceptance tests - proving that your features work correctly for the user - is completely orthogonal to your test pyramid.
>
> *given* there's a logged in user
>
> *and* there's an article "bicycle"
>
> *when* the user navigates to the "bicycle" article's detail page
>
> *and* clicks the "add to basket" button
>
> *then* the article "bicycle" should be in their shopping basket
>
> https://martinfowler.com/articles/practical-test-pyramid.html

> Acceptance tests are more abstract, business focused, tests that are attempting to check that the team is developing what the business wants. They can be written in the same the format as test scripts but more high level so that non-technical users can interpret how the application is expected to work. However, they can also be written using a language known as Gherkin, which has gained popularity in the last few years.
>
> [Gherkin](http://docs.behat.org/en/v2.5/guides/1.gherkin.html) follows the format of Given…, When…., Then…. like the example below:
>
> ​     Given I am a registered user of the product
>
> ​     When I log in with my credentials
>
> ​     Then I should be logged into the product
>
> Sometimes testers get confused about the use of Gherkin and acceptance tests and fall into the trap of trying to use Gherkin to create test scripts. Acceptance tests should be treated as a guide for the team rather than a tool for validation. This means teams can use a few acceptance tests to guide them towards developing what the business wants and not create exhaustive tests using Gherkin.
>
> So what value might you get from using acceptance tests?
>
> - Acceptance tests are best generated in a group with developers and business owners. The high level, abstract, nature of them means they are great for initiating discussions/collaborations.
> - Show how the app behaves when all the acceptance criteria are put together
> - Acceptance tests, especially in Gherkin, describe not only the rules of the application in the form of acceptance criteria but also the expectation of how those rules will behave when an end user interacts with them.
>
> And what about weaknesses or pitfalls to be aware of?
>
> - Acceptance tests are often misunderstood and the format is used to create test scripts. Which means you don’t get the collaborative value from them (too many to talk through) and they don’t offer enough detail (they are too abstract)
>
> -- https://www.ministryoftesting.com/articles/36e94742

> Yet acceptability of a product is multi-dimensional. In the end, the product is always being used by people to solve some problem. The code may perform certain functions exquisitely as part of product that is an incomplete solution to the problem, that is hard to use, or that we hate.
>
> When the acceptance tests pass, the product *might* be acceptable. When the acceptance tests fail, we know for sure that the product *isn’t* acceptable. Thus I’d argue that instead of talking about acceptance tests, we should be talking about them as **rejection tests**.
>
> -- https://developsense.com/blog/2010/08/acceptance-tests-lets-change-the-title-too

#### Regression tests

> **tl;dr** Checks for the return of a previously fixed issue.

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

#### Smoke tests



#### Fuzzy tests

> [Beizer’s explanation](http://www.qsgsoft.com/the-software-testing-pesticide-paradox/) is that pests will no longer exist in the places where you’ve applied pesticide; you’ll find them only where you haven’t applied it. The analogy to testing is that, over time, you’ll find fewer and fewer bugs in the parts of your code that have been highly tested, and the bugs that users do find will be in the areas that you have tested less rigorously.
>
> Roughly speaking, fuzzing is testing without knowing what a specific outcome should be. When fuzzing, you don’t necessarily know what *should* happen, but you have a good idea of some things that *shouldn’t*, such as 404 errors, server crashes, or application crashes.
>
> One of the reasons testers are reluctant to adopt randomization is concern about reproducibility. Your automation has little value if you can’t reproduce the situation that caused a specific unexpected behavior. Without reproducibility, it’s harder to debug a potential issue, and your team can’t assess whether or not it has fixed the issue.
>
> Instead, the type of browser fuzzing described here facilitates each actor working to its strength: Computers do the grunt, repetitive work, while humans do the cognitive work of deciding if a specific weirdness constitutes a problem.
>
> https://responsibleautomation.wordpress.com/2023/05/31/kill-more-bugs-add-randomization-to-your-web-testing/

#### Mutation testing

TODO

#### Snapshot testing

TODO

#### Stress testing

> How the product behaves with unexpectedly huge numbers.
>
> Overwhelm the product. Too big. Too often. Too fast.

#### Load testing

>
> How the product behaves with high but expected numbers over a long period of time.

#### Accessibility testing
>
> - https://github.com/pa11y/pa11y
> - https://github.com/dequelabs/axe-core

#### Security testing

#### Performance testing

// Probably should go to Practice

### Testing approaches

#### Exploratory testing

> **tl;dr** SUMMARY_HERE

> Even the most diligent test automation efforts are not perfect. Sometimes you miss certain edge cases in your automated tests. Sometimes it's nearly impossible to detect a particular bug by writing a unit test. Certain quality issues don't even become apparent within your automated tests (think about design or usability). Despite your best intentions with regards to test automation, manual testing of some sorts is still a good idea.
>
> Emphasises the tester's freedom and creativity to spot quality issues in a running system. Simply take some time on a regular schedule, roll up your sleeves and try to break your application. Use a destructive mindset and come up with ways to provoke issues and errors in your application. Document everything you find for later. Watch out for bugs, design issues, slow response times, missing or misleading error messages and everything else that would annoy you as a user of your software.
>
> During exploratory testing you will spot problems that slipped through your build pipeline unnoticed. Don't be frustrated. This is great feedback on the maturity of your build pipeline. As with any feedback, make sure to act on it: Think about what you can do to avoid these kinds of problems in the future. Maybe you're missing out on a certain set of automated tests. Maybe you have just been sloppy with your automated tests in this iteration and need to test more thoroughly in the future. Maybe there's a shiny new tool or approach that you could use in your pipeline to avoid these issues in the future. Make sure to act on it so your pipeline and your entire software delivery will grow more mature the longer you go.
>
> https://martinfowler.com/articles/practical-test-pyramid.html

#### Automation (in) testing

TODO

### Types vs Risks - Are there more types of testing?

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

## Practice

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

## Teachers

- [James Bach](https://www.satisfice.com/)
- [Kent C. Dodds](https://kentcdodds.com/blog)
- [Michael Bolton](https://www.developsense.com/)

## Sources

- [Heuristic Test Strategy Model](https://www.satisfice.com/download/heuristic-test-strategy-model)
- [The Practical Test Pyramid](https://martinfowler.com/articles/practical-test-pyramid.html)
- [Things Could Get Worse: Ideas About Regression Testing](https://www.developsense.com/presentations/2013-05-STAREast-Regression.pdf)
- [Contract testing by Pact: Convince me](https://docs.pact.io/faq/convinceme.html)
- [On “White Box” and “Black Box” testing](http://automation-beyond.com/2016/08/30/on-white-box-and-black-box-testing/)
- [Static vs Unit vs Integration vs E2E Testing for Frontend Apps](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests)
- [Say TATTA to Your TUTTU](https://www.youtube.com/watch?v=VGNxv9ilFbQ)