# The testing pyramid model

> **tl;dr** SUMMARY_HERE

## Theory

Well it's not actually a pyramid, it's a triangle. And it's biased towards automation. And it doesn't include all testing layers.

> “All Models are wrong, some are useful” — [George Box](https://en.wikipedia.org/wiki/George_E._P._Box)

So what is it? As Dan Ashby puts it, it's ["the automation triangle"](https://danashby.co.uk/2018/05/03/a-better-testing-pyramid/).

OK then! It's just an [heuristic](#) to trigger our thinking, a starting point -- it should not be blindly pursued as perfection.

> The test pyramid is a way of thinking about how different kinds of automated tests should be used to create a balanced portfolio. Its essential point is that you should have many more low-level [UnitTests](https://martinfowler.com/bliki/UnitTest.html) than high level [BroadStackTests](https://martinfowler.com/bliki/BroadStackTest.html) running through a GUI.
>
> tests that drove an application through its user-interface. easy to record tests, and the tests can be recorded by people with no knowledge of programming. Testing through the UI like this is slow, increasing build times. Often it requires installed licences for the test automation software, which means it can only be done on particular machines. Usually these cannot easily be run in a "headless" mode, monitored by scripts to put in a proper deployment pipeline. Most importantly such tests are very brittle. An enhancement to the system can easily end up breaking lots of such tests, which then have to be re-recorded.
>
> I always argue that high-level tests are there as a second line of test defense. If you get a failure in a high level test, not just do you have a bug in your functional code, you also have a missing or incorrect unit test. Thus I advise that before fixing a bug exposed by a high level test, you should replicate the bug with a unit test. Then the unit test ensures the bug stays dead.
>
> ![img](\docs\_media\articles\test-pyramid-fowler.png)
>
> source: https://martinfowler.com/bliki/TestPyramid.html

> The "Test Pyramid" is a metaphor that tells us to group software tests into buckets of different granularity. It also gives an idea of how many tests we should have in each of these groups.
>
> It's a great visual metaphor telling you to think about different layers of testing. Mike Cohn's original test pyramid consists of three layers that your test suite should consist of (bottom to top):
>
> 1. Unit Tests
> 2. Service Tests
> 3. User Interface Tests
>
> From a modern point of view the test pyramid seems overly simplistic and can therefore be misleading. Still, due to its simplicity the essence of the test pyramid serves as a good rule of thumb when it comes to establishing your own test suite. Your best bet is to remember two things from Cohn's original test pyramid:
>
> 1. Write tests with different granularity
> 2. The more high-level you get the fewer tests you should have
>
> Unit tests are the foundation. Your unit tests make sure that a certain unit (your *subject under test*) of your codebase works as intended. Unit tests have the narrowest scope of all the tests in your test suite. The number of unit tests in your test suite will largely outnumber any other type of test. They should ensure that all your non-trivial code paths are tested (including happy path and edge cases).
>
> your application will interact with other parts and this needs to be tested. **[Integration Tests](https://martinfowler.com/bliki/IntegrationTest.html)** are there to help. They test the integration of your application with all the parts that live outside of your application. If you're testing the integration with a database you need to run a database when running your tests. Narrow integration tests live at the boundary of your service. Conceptually they're always about triggering an action that leads to integrating with the outside part. 
>
> ~~Contract (CDC). Individual teams build individual, loosely coupled services without stepping on each others toes and integrate these services into a big, cohesive system. The more recent buzz around microservices focuses on exactly that. Splitting your system into many small services often means that these services need to communicate with each other via certain (hopefully well-defined, sometimes accidentally grown) interfaces (e.g. REST, RPC, event-driven). **Consumer-Driven Contract tests** (CDC tests) let the [consumers drive the implementation of a contract](https://martinfowler.com/articles/consumerDrivenContracts.html). The consuming team writes test that encapsulate how they will consume the interface. The providing team fetches those tests and writes an implementation that makes those tests pass.~~
>
> *UI tests* test that the user interface of your application works correctly. User input should trigger the right actions, data should be presented to the user, the UI state should change as expected. UI Tests and end-to-end tests are sometimes (as in Mike Cohn's case) said to be the same thing. Yes, testing your application end-to-end often means driving your tests through the user interface. The inverse, however, is not true. Testing your user interface doesn't have to be done in an end-to-end fashion. testing the *behaviour* of your user interface is pretty simple. You click here, enter data there and want the state of the user interface to change accordingly. Modern single page application frameworks ([react](https://facebook.github.io/react/), [vue.js](https://vuejs.org/), [Angular](https://angular.io/) and the like) often come with their own tools and helpers that allow you to thoroughly test these interactions in a pretty low-level (unit test) fashion.
>
> Testing your deployed application via its user interface is the most end-to-end way you could test your application. automate your tests by automatically driving a (headless) browser against your deployed services, performing clicks, entering data and checking the state of your user interface. They are notoriously flaky and often fail for unexpected and unforeseeable reasons. Quite often their failure is a false positive. The more sophisticated your user interface, the more flaky the tests tend to become. Browser quirks, timing issues, animations and unexpected popup dialogs.
>
> Even the most diligent test automation efforts are not perfect. Sometimes you miss certain edge cases in your automated tests. Sometimes it's nearly impossible to detect a particular bug by writing a unit test. Certain quality issues don't even become apparent within your automated tests (think about design or usability). Despite your best intentions with regards to test automation, manual testing of some sorts is still a good idea.
>
> As with production code you should strive for simplicity and avoid duplication. In the context of implementing your test pyramid you should keep two rules of thumb in mind:
>
> 1. If a higher-level test spots an error and there's no lower-level test failing, you need to write a lower-level test
>
> 2. Push your tests as far down the test pyramid as you can
>
> The first rule is important because lower-level tests allow you to better narrow down errors and replicate them in an isolated way. They'll run faster and will be less bloated when you're debugging the issue at hand. And they will serve as a good regression test for the future. The second rule is important to keep your test suite fast. If you have tested all conditions confidently on a lower-level test, there's no need to keep a higher-level test in your test suite. It just doesn't add more confidence that everything's working. Having redundant tests will become annoying in your daily work. Your test suite will be slower and you need to change more tests when you change the behaviour of your code.
>
> ![img](\docs\_media\articles\testPyramid.png)
>
> IN DEPTH https://martinfowler.com/articles/practical-test-pyramid.html

> - **End to End**: A helper robot that behaves like a user to click around the app and verify that it functions correctly. Sometimes called "functional testing" or e2e.
> - **Integration**: Verify that several units work together in harmony.
> - **Unit**: Verify that individual, isolated parts work as expected.
> - **Static**: Catch typos and type errors as you write the code.
>
> I think it's important to remember why it is that we write tests in the first place. Why do *you* write tests? Is it because I told you to? Is it because your PR will get rejected unless it includes tests? Is it because testing enhances your workflow?
>
> The biggest and most important reason that I write tests is **CONFIDENCE**. I want to be confident that the code I'm writing for the future won't break the app that I have running in production today. So whatever I do, I want to make sure that the kinds of tests I write bring me the most confidence possible and I need to be cognizant of the trade-offs I'm making when testing.
>
> ### [Cost: ￠ heap ➡ 💰🤑💰](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests#cost--heap--)
>
> As you move up the testing trophy, the tests become more costly. This comes in the form of actual money to run the tests in a continuous integration environment, but also in the time it takes engineers to write and maintain each individual test.
>
> The higher up the trophy you go, the more points of failure there are and therefore the more likely it is that a test will break, leading to more time needed to analyze and fix the tests. **Keep this in mind because it's important** #foreshadowing...
>
> ### [Speed: 🏎💨 ➡ 🐢](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests#speed---)
>
> As you move up the testing trophy, the tests typically run slower. This is due to the fact that the higher you are on the testing trophy, the more code your test is running. Unit tests typically test something small that has no dependencies or will mock those dependencies (effectively swapping what could be thousands of lines of code with only a few). **Keep this in mind because it's important** #foreshadowing...
>
> ### [Confidence: Simple problems 👌 ➡ Big problems 😖](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests#confidence-simple-problems---big-problems-)
>
> The cost and speed trade-offs are typically referenced when people talk about the testing pyramid 🔺.
>
> [The more your tests resemble the way your software is used, the more confidence they can give you.](https://twitter.com/kentcdodds/status/977018512689455106)
>
> Every level comes with its own trade-offs. An E2E test has more points of failure making it often harder to track down what code caused the breakage, but it also means that your test is giving you more confidence. This is especially useful if you don't have as much time to write tests. I'd rather have the confidence and be faced with tracking down why it's failing, than not having caught the problem via a test in the first place.
>
> https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests

> ![Triangle Refactoring 3](https://danashby04.files.wordpress.com/2018/05/triangle-refactoring-3.jpg?w=820)
>
> With this one, we can think about the different environments and where we should conduct our testing. The majority of the risks that we are investigating should be done on a Dev environment. Ideally while pairing with a developer. This offers the fastest feedback loop and any problems can be resolved there and then when discovered.

- What it is and means (purpose)
- Brief (1-2 sentences) desc of types of tests (what unit, integration and e2e tests are) and refer test types page for more details

## Practice

…

- Diff pyramids or perspectives
- What is important to take out of it

> What I'm interested in is whether I'm confident that when I ship my changes, my code satisfies the business requirements and I'll use a mix of the different testing strategies to accomplish that goal.
>
> [Kent Dodds](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests)

Many flavours, just as ice-creams. Speaking of which:

- [the ice cream cone](https://alisterbscott.com/kb/testing-pyramids/) (or [cupcake](https://www.thoughtworks.com/insights/blog/introducing-software-testing-cupcake-anti-pattern))
- [the trophy](https://kentcdodds.com/blog/the-testing-trophy-and-testing-classifications)
- [the box of rocks](https://gerg.dev/2018/05/testing-is-like-a-box-of-rocks/)
- [the honeycomb](https://medium.com/@fistsOfReason/testing-is-good-pyramids-are-bad-ice-cream-cones-are-the-worst-ad94b9b2f05f)
- [the planet](https://www.dropbox.com/s/ahnmtqt4c5l1qv7/round%20earth.pdf?dl=0)
- [the snowman](https://angryweasel.com/blog/the-test-automation-snowman)
- [the wheel](https://www.ministryoftesting.com/dojo/lessons/an-introduction-to-the-automation-test-wheel)
- and [many more](http://www.testingreferences.com/here_be_pyramids.php)

> As with production code you should strive for simplicity and avoid duplication. In the context of implementing your test pyramid you should keep two rules of thumb in mind:
>
> 1. If a higher-level test spots an error and there's no lower-level test failing, you need to write a lower-level test
>
> 2. Push your tests as far down the test pyramid as you can
>
> The first rule is important because lower-level tests allow you to better narrow down errors and replicate them in an isolated way. They'll run faster and will be less bloated when you're debugging the issue at hand. And they will serve as a good regression test for the future. The second rule is important to keep your test suite fast. If you have tested all conditions confidently on a lower-level test, there's no need to keep a higher-level test in your test suite. It just doesn't add more confidence that everything's working. Having redundant tests will become annoying in your daily work. Your test suite will be slower and you need to change more tests when you change the behaviour of your code.
>
> https://martinfowler.com/articles/practical-test-pyramid.html

> ![193028ce268ce21d4b40451075c9ff193d56f861](\docs\_media\articles\193028ce268ce21d4b40451075c9ff193d56f861.png)
>
> Added ‘testability’ to the base of the pyramid. For me, a successful automation strategy is based on testability.
>
> DIOGO: Notice the different (number of) layers on each surface of the pyramid. That's a hint that you need to adapt the layers to your team's context.
>
> https://club.ministryoftesting.com/t/missing-layer-from-the-test-automation-pyramid/24942

> ![](\docs\_media\articles\8f3dda0ad8e339dc657ccafa3a0eb692f7cd7634.png)
>
> https://club.ministryoftesting.com/t/the-software-testing-pyramid/13855

## Teachers

- [Name](#link)

## Sources

- [title](#link)
- https://testing.googleblog.com/2015/04/just-say-no-to-more-end-to-end-tests.html
- https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests
- 
