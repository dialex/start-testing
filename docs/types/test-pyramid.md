# The test pyramid model

> **tl;dr** SUMMARY_HERE

## Theory

The concept of a test pyramid was initially introduced by [Mike Cohn](https://amzn.to/3W7LLKz). It is a visual metaphor that groups tests into layers and recommends how many tests we should have in each of these layers.

![testPyramid](/docs/_media/articles/test-pyramid.png)

This visual model conveys several messages:

- You should have multiple test types or layers
- You should have more unit tests than service steps, and more of those than UI tests
- Tests at the base of the pyramid (unit) are faster, cheaper and more precise
- Tests at the top of the pyramid (UI) are slower, more expensive and more realistic

Unit tests ensure a small and specific unit of code works as intended in isolation. That's why they are cheap and fast to run. These units of code then interact with other parts the system to provide services. The behaviour of those services is tested by the service tests. Finally, a human needs to interact with those services and that is done through a User Interface (UI). The UI tests check that the system as a whole does what the user expects, and that's why those tests are the slowest to run and most expensive to debug.

> The test pyramid is a way of thinking about how different kinds of automated tests should be used to create a balanced portfolio
>
> -- [Martin Fowler](https://martinfowler.com/bliki/TestPyramid.html)

Since it was introduced in 2009, new test types were developed. The "service tests" are nowadays called "integration tests" and include [API testing](/types) and [Contract testing](/types). The "UI tests" are nowadays split between [frontend testing](/types) and [end-to-end testing](/types).

The simplicity and recommendations of this model made the test pyramid very popular, and many engineers and testers use it as a reference still today.

> “All models are wrong, some are useful”
>
> -- [George Box](https://en.wikipedia.org/wiki/George_E._P._Box)

Despite it's popularity, it is not without flaws. Some people say the model is overly simplistic because it doesn't include all testing done for a project. Others say it is biased towards automation, like Dan Ashby who calls it ["the automation triangle"](https://danashby.co.uk/2018/05/03/a-better-testing-pyramid/).

### The testing trophy

Almost [10 years later](https://twitter.com/kentcdodds/status/960723172591992832?lang=en), Kent Dodds published his modern take on the test pyramid and called it the testing trophy. It's an overall improvement over the previous model in [several aspects](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests).

![test trophy][/docs/_media/articles/test-trophy.png]

Here's a summary, paraphrasing the author:

- **Purpose.** Why do *you* write tests? The most important reason is confidence. I want to be confident that the code I'm writing won't break the app. I want to get the most confidence out of the tests I write, and I'm aware of the trade-offs I'm making when testing.
- **Static tests**. Linters and other static analysis tools scan your code for typos, type errors, common mistakes, potencial.
- **Unit tests**: Verify that individual, isolated parts work as expected.
- **Integration tests**: Verify that several units work together in harmony.
- **End-to-End tests**: Simulate the user interacting with the app and verify that it functions correctly.
- **Flexible.** The size of each of test layer may differ slightly based on what your team values. The proportions are not meant to be taken as rigid rules. It depends on how easy it is to test your app with the tools available.



-----




> ### [Cost: ￠ heap ➡ 💰🤑💰](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests#cost--heap--)
> 
> As you move up the testing trophy, the tests become more costly. This comes in the form of actual money to run the tests in a continuous integration environment, but also in the time it takes engineers to write and maintain each individual test.
> 
>The higher up the trophy you go, the more points of failure there are and therefore the more likely it is that a test will break, leading to more time needed to analyze and fix the tests. **Keep this in mind because it's important** #foreshadowing...
> 
>### [Speed: 🏎💨 ➡ 🐢](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests#speed---)
> 
>As you move up the testing trophy, the tests typically run slower. This is due to the fact that the higher you are on the testing trophy, the more code your test is running. Unit tests typically test something small that has no dependencies or will mock those dependencies (effectively swapping what could be thousands of lines of code with only a few). **Keep this in mind because it's important** #foreshadowing...
> 
>### [Confidence: Simple problems 👌 ➡ Big problems 😖](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests#confidence-simple-problems---big-problems-)
> 
>The cost and speed trade-offs are typically referenced when people talk about the testing pyramid 🔺.
> 
>[The more your tests resemble the way your software is used, the more confidence they can give you.](https://twitter.com/kentcdodds/status/977018512689455106)
> 
>Every level comes with its own trade-offs. An E2E test has more points of failure making it often harder to track down what code caused the breakage, but it also means that your test is giving you more confidence. This is especially useful if you don't have as much time to write tests. I'd rather have the confidence and be faced with tracking down why it's failing, than not having caught the problem via a test in the first place.
> 
>https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests

## Practice

As with any tool, "keep the best and throw away the rest".

Think of the test pyramid as an [heuristic](#) to trigger your thinking, a starting point -- it should not be blindly pursued as perfection or the end goal. It teaches you three valuable lessons:

1. Write tests with different granularity
2. The more high-level you get, the fewer tests you should have
3. If a higher-level test fails without a lower-level test failing too, you need to write a lower-level test

That last one needs a bit more explanation. Tests at the top of the pyramid exercise multiple parts of the system at the same time. If one of those tests fail, it tells you *"there's a problem with X"* but without a lower-level test you will not know *"...and here's the cause"*.

The "pyramid" concept also suggests the analogy to a construction. Each test layer is a different material used in the construction. A building made of a single material is not as good as one that uses multiple specialised materials, each contributing differently to the stability of the building.

If you prefer cheese to construction, here's another analogy. Swiss cheese slices have holes. We want to create a surface where you can't see through, thus we layer one slice on top of the other. Individually, slices have holes (limitations) and don't cover the whole surface, but together the surface of one layer covers the holes of the layer below!

And that's what we want to achieve with our testing layers. Invidually each layer has coverage gaps, but all together we efficiently maximise coverage. "The right tool for the right job". "Divide to conquer".

![testPyramid](/docs/_media/articles/test-pyramid-rosie-circles.png)



…

- Diff pyramids or perspectives
- What is important to take out of it

> What I'm interested in is whether I'm confident that when I ship my changes, my code satisfies the business requirements and I'll use a mix of the different testing strategies to accomplish that goal.
>
> -- [Kent Dodds](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests)

Many flavours, just as ice-creams. Speaking of which:

- [the ice cream cone](https://alisterbscott.com/kb/testing-pyramids/) (or [cupcake](https://www.thoughtworks.com/insights/blog/introducing-software-testing-cupcake-anti-pattern))
- [the trophy](https://kentcdodds.com/blog/the-testing-trophy-and-testing-classifications)
- [the box of rocks](https://gerg.dev/2018/05/testing-is-like-a-box-of-rocks/)
- [the honeycomb](https://medium.com/@fistsOfReason/testing-is-good-pyramids-are-bad-ice-cream-cones-are-the-worst-ad94b9b2f05f)
- [the planet](https://www.dropbox.com/s/ahnmtqt4c5l1qv7/round%20earth.pdf?dl=0)
- [the snowman](https://angryweasel.com/blog/the-test-automation-snowman)
- [the wheel](https://www.ministryoftesting.com/dojo/lessons/an-introduction-to-the-automation-test-wheel)
- [the filters](https://infiniteundo.com/post/158179632683/abandoning-the-pyramid-of-testing-in-favor-of-a)
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

- [Kent C. Dodds](https://kentcdodds.com/)

## Sources

- [The Practical Test Pyramid](https://martinfowler.com/articles/practical-test-pyramid.html)
- [Just Say No to More End-to-End Tests](https://testing.googleblog.com/2015/04/just-say-no-to-more-end-to-end-tests.html)
- [Static vs Unit vs Integration vs E2E Testing for Frontend Apps](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests)
- [Balancing the Test Automation Pyramid](https://medium.com/lydtech-consulting/balancing-the-test-automation-pyramid-30cf9c8d8a3c)
- [How to test your mobile apps efficiently? A five-level pyramid testing strategy](https://medium.com/@BIT_OFIT/how-to-test-efficiently-your-mobile-apps-68be944331ee)
