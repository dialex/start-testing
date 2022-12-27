# The test pyramid model

> **tl;dr** SUMMARY_HERE

## Theory

The concept of a test pyramid was initially introduced by [Mike Cohn](https://amzn.to/3W7LLKz). It is a visual metaphor that groups tests into layers and recommends how many tests we should have in each of these layers.

![original test pyramid](/docs/_media/articles/test-pyramid.png)

This visual model conveys several messages:

- You should have multiple test types or layers
- You should have more unit tests than service steps, and more of those than UI tests
- Tests at the base of the pyramid (unit) are faster, cheaper and more precise
- Tests at the top of the pyramid (UI) are slower, more expensive and more realistic

Unit tests ensure a small and specific unit of code works as intended in isolation. That's why they are cheap and fast to run. These units of code then interact with other parts the system to provide services. The behaviour of those services is tested by the service tests. Finally, a human needs to interact with those services and that is done through a User Interface (UI). The UI tests check that the system as a whole does what the user expects, and that's why those tests are the slowest to run and most expensive to debug.

> The test pyramid is a way of thinking about how different kinds of automated tests should be used to create a balanced portfolio
>
> — [Martin Fowler](https://martinfowler.com/bliki/TestPyramid.html)

Since it was introduced in 2009, new test types were developed. The "service tests" are nowadays called "integration tests" and may include [API testing](/types) and [Contract testing](/types). The "UI tests" are nowadays split between [frontend testing](/types) and [end-to-end testing](/types).

The simplicity and usefulness of this model made the test pyramid very popular, and many engineers and testers use it as a reference still today.

> "All models are wrong, some are useful"
>
> — [George Box](https://en.wikipedia.org/wiki/George_E._P._Box)

Despite it's popularity, it is not without flaws. Some people say the model is overly simplistic because it doesn't include all testing done for a project. Others say it is biased towards automation, like Dan Ashby who calls it ["the automation triangle"](https://danashby.co.uk/2018/05/03/a-better-testing-pyramid/).

### The testing trophy

> I want to be confident that my code satisfies the requirements and I'll use a mix of the different testing strategies to accomplish that goal.
>
> \-- [Kent Dodds](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests)

Almost [10 years later](https://twitter.com/kentcdodds/status/960723172591992832?lang=en), Kent Dodds published his modern take on the test pyramid and called it the testing trophy. It's an overall improvement over the previous model in [several aspects](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests).

![Test trophy](/docs/_media/articles/test-pyramid-trophy.png)

Here's a summary, paraphrasing the author:

- **Purpose.** Why do _you_ write tests? Confidence. I want to be confident that the code I'm writing won't break the app. I want to get the most confidence out of the tests I write, and I'm aware of the trade-offs I'm making when testing.
- **Static tests**. Linters and other static analysis tools scan your code for typos, type errors, common mistakes, potential bugs.
- **Unit tests**: Verify that individual, isolated parts work as expected.
- **Integration tests**: Verify that several units work together in harmony.
- **End-to-End tests**: Simulate the user interacting with the app and verify that it functions correctly.
- **Flexible.** The size of each of test layer may differ based on what your team values. The proportions are not meant to be taken as rigid rules. It also depends on how easy it is to test your app with the tools available.

> Every level comes with its own trade-offs. An E2E test has more points of failure making it often harder to track down the problem, but it also means that your test is giving you more confidence.
>
> — [Kent Dodds](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests)

## Practice

As with any tool, "keep the best and discard the rest".

Think of the test pyramid as an [heuristic](/docs/toolbox/heuristics.md) to trigger your thinking, a starting point — it should not be blindly pursued as perfection or the end goal. It teaches you three valuable lessons:

1. Write tests with different granularity
2. High-level tests should be realistic (and you pay for it)
3. Low-level tests should be fast and precise
4. If a higher-level test fails without a lower-level test failing too, you need to write a lower-level test

That last one needs a bit more explanation. Tests at the top of the pyramid exercise multiple parts of the system at the same time. If one of those tests fail, it tells you _"there's a problem with X"_ but without a lower-level test you will not know the cause of the problem. And they will serve as a good [regression test](/types) for the future.

It also keeps your test suite fast. If you have tested all conditions on a lower-level test, the extra confidence you get from a higher-level test is small. Redundant tests makes your development process more costly because you need to change more tests when you change the behaviour of your code.

> The more your tests resemble the way your software is used, the more confidence they can give you.
>
> — [Kent Dodds](https://twitter.com/kentcdodds/status/977018512689455106)

The "pyramid" concept also suggests an analogy to construction. Each test layer is a different material used in the construction. A building made of a single material is not as strong as one that uses multiple specialised materials, each contributing differently to the stability of the building.

If you prefer cheese to construction, here's another analogy. Swiss cheese slices have holes. We want to create a surface where you can't see through, thus we layer one slice on top of the other. Individually, slices have holes (limitations) and don't cover the whole surface, but together the surface of one layer covers the holes of the layer below!

And that's what we want to achieve with our testing layers. Individually each layer has coverage gaps, but all together we efficiently maximise coverage. "The right tool for the right job". "Divide to conquer".

![Rosie's test pyramid with circles](/docs/_media/articles/test-pyramid-rosie-circles.png)

With time, many more models were created besides the original pyramid. Nowadays you have many flavours to pick from, just like ice creams. Speaking of which:

- [the ice cream cone](https://alisterbscott.com/kb/testing-pyramids/) (or [cupcake](https://www.thoughtworks.com/insights/blog/introducing-software-testing-cupcake-anti-pattern))
- [the trophy](https://kentcdodds.com/blog/the-testing-trophy-and-testing-classifications)
- [the box of rocks](https://gerg.dev/2018/05/testing-is-like-a-box-of-rocks/)
- [the honeycomb](https://medium.com/@fistsOfReason/testing-is-good-pyramids-are-bad-ice-cream-cones-are-the-worst-ad94b9b2f05f)
- [the planet](https://www.dropbox.com/s/ahnmtqt4c5l1qv7/round%20earth.pdf?dl=0)
- [the snowman](https://angryweasel.com/blog/the-test-automation-snowman)
- [the wheel](https://www.ministryoftesting.com/dojo/lessons/an-introduction-to-the-automation-test-wheel)
- [the filters](https://infiniteundo.com/post/158179632683/abandoning-the-pyramid-of-testing-in-favor-of-a)
- and [many more](http://www.testingreferences.com/here_be_pyramids.php)

![Ice cream cone anti-pattern](/docs/_media/articles/test-pyramid-icecream.png)

What they all have in common is that their authors are trying to convey a message visually. Use whatever illustrates best your narrative or create your own.

## Teachers

- [Alister Scott](https://alisterbscott.com/kb/testing-pyramids/)
- [Kent C. Dodds](https://kentcdodds.com/)
- [Martin Fowler](https://martinfowler.com/bliki/TestPyramid.html)
- [Mike Cohn](https://www.mountaingoatsoftware.com/blog)

## Sources

- [The Practical Test Pyramid](https://martinfowler.com/articles/practical-test-pyramid.html)
- [Just Say No to More End-to-End Tests](https://testing.googleblog.com/2015/04/just-say-no-to-more-end-to-end-tests.html)
- [Static vs Unit vs Integration vs E2E Testing for Frontend Apps](https://kentcdodds.com/blog/static-vs-unit-vs-integration-vs-e2e-tests)
- [Balancing the Test Automation Pyramid](https://medium.com/lydtech-consulting/balancing-the-test-automation-pyramid-30cf9c8d8a3c)
- [How to test your mobile apps efficiently? A five-level pyramid testing strategy](https://medium.com/@BIT_OFIT/how-to-test-efficiently-your-mobile-apps-68be944331ee)
