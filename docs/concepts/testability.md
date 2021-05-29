# Testability

> **tl;dr** Testability measures the ability to test. When it's easy, you get deeper and faster info about the product.

## Theory

Testability measures our human ability to test — how skilled we are, how easy it is to test, and how deep we can go. One of the [responsibilities of a tester](/concepts/tester-responsibilities.md) is to advocate testability within the team, highlighting what is making testing harder or slower.

> If testing is questioning a product in order to evaluate it, then testability is anything that makes it easier to question or evaluate that product.
>
> When testing is hard or slow, bugs have more time and opportunity to stay hidden. Those bugs — deeper, less obvious, more intermittent — may be far worse than any bugs discovered so far.
>
> — [Michael Bolton](http://www.developsense.com/blog/2017/09/deeper-testing-3-testability/)

[Bret Pettichord](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.94.5966&rep=rep1&type=pdf) defines testability as visibility and control. **Visibility** is our ability to observe the states, outputs and other side effects of the system under test. **Control** is our ability to give inputs to the system under test or set it in specific states.

Do not confuse with [automatability](https://www.youtube.com/watch?v=gL8hmAH4ZGM) which measures how easy it is to automate the interaction and control of our system. For instance, [logging](/fields/logging.md) is a feature that improves _testability_ because it helps humans inspect how the system works; browser cookies enhance _automatability_ because it allows automation to control a user session.

## Practice

There are four main groups of variables that influence testability: value-related, intrinsic, project-related and subjective. Below are some [heuristics](/toolbox/heuristics.md) adapted from [James Bach](http://www.satisfice.com/tools/testable.pdf). To discover even more dimensions that influence testability, refer to [Maria Kedemo](https://mkedemo.wordpress.com/2015/11/22/dimensions-of-testability-v1-1/)'s **dimensions of testability**.

- **Value**: changing the quality standard or our knowledge of it.
  - [_Oracles_](/toolbox/oracles.md). We need ways to detect each kind of problem that is worth looking for.
  - _Users_. The more we can talk to and observe users, the easier it is to test for them.
  - _Environment_. Testing is more accurate when performed in the users' environment (or similar).
- **Intrinsic** (aka. product): changing the system itself.
  - _Reliability_. Issues slow down testing since we must stop to report them or work around them.
  - _Tolerance_. The less quality required or the more risk that can be taken, the less testing is needed.
  - _Controllability_. Ideally we can provide any possible input and invoke any possible state or combination of states easily and on demand.
- **Project**: changing the conditions under which we test.
  - _Information_. We get all information we want or need to test well.
  - _Sandboxing_. We are free to do any testing without fear of disrupting users or team members.
  - _Time_. We need time to think, prepare and deal with surprises.
- **Subjective** (aka. tester): changing the tester or the test process.
  - [_Test strategy_](/toolbox/test-strategy.md). A strategy will reduce waste by focusing the testing efforts on what matters.
  - _Context knowledge_. The more we know about the users and the system, the better we can test.
  - _Technical knowledge_. Our knowledge of technology and tools makes testing easier for us.

Here's a [mnemonic](/toolbox/mnemonics.md) to remember these dimensions: usability, security and other -ilities are equally important; testability is VIP as well; thus testability dimensions are **`VIPS`** (**v**alue, **i**ntrinsic, **p**roject, **s**ubjective). Here's another: [`SOCKS`](https://www.a-sisyphean-task.com/2012/07/putting-your-testability-socks-on.html).

This checklist adapted from [Ash Winter](https://testingisbelieving.blogspot.com/2017/08/the-team-test-for-testability.html) can be used for a quick **health check on your testability**. For each question answer Yes (+1) or No (+0). If your final score is below 8, you are working under unnecessary risk.

1. Do developers react positively when a bug is reported?
2. Can anyone access a prioritised list of the open bugs?
3. Does your team measure critical metrics about the system?
4. Is it possible to simulate a failure of a dependency (e.g.. 3rd party)?
5. Is it possible to test with enough isolation a specific system behaviour?
6. Can any team member test an unfinished feature from their machines?
7. Can you set your system into a given state to repeat a test?
8. Can any team member create a test environment?
9. Can you test on production (e.g.. feature flags)?
10. Is it possible to see and query logs from production?
11. Does your team have regular contact with the users of the system?
12. Does your team maintain a knowledge base on how their system is built and tested?

If you were unsatisfied with score you got, there are methods to improve it. Of course you have ~~boring~~ ~~expensive~~ [maturity models](https://www.tmmi.org/tmmi-documents/#) in the market to formally evaluate your testability. However, if you prefer something simple and tailored for your team you can use the [**Test Improvement Assessment**](http://www.huibschoots.nl/wordpress/wp-content/uploads/2017/02/Test-Improvement-Huib-Schoots-Joep-Schuurkes.pdf). Essentially your team selects which testability criteria are relevant for your context, scores them and finally agrees on how to improve. If you need hints on practices that can improve your system's testability, [Michael Bolton](http://www.developsense.com/blog/2009/07/testability/) has a few.

Both the checklist and the assessment are practical methods to discuss testability. To visually **report the state of testability** you can use a [mind map](/toolbox/note-taking.md), as illustrated (pun intended) by [Adam Knight](https://www.a-sisyphean-task.com/2014/07/a-map-for-testability.html).

## Teachers

- [Ash Winter](https://testingisbelieving.blogspot.com/2019/02/ask-me-anything-testability.html)
- [Bret Pettichord](http://www.pettichord.com/)
- [James Bach](https://vimeo.com/78912852)
- [Maria Kedemo](https://mkedemo.wordpress.com/2015/11/22/dimensions-of-testability-v1-1/)
- [Michael Bolton](http://www.developsense.com/blog/category/testability/)

## Sources

- [Test improvement in an agile/CD environment](http://www.huibschoots.nl/wordpress/?p=2543)
- [The team test for testability](https://testingisbelieving.blogspot.com/2017/08/the-team-test-for-testability.html)
- [Deeper Testing: Testability](http://www.developsense.com/blog/2017/09/deeper-testing-3-testability/)
- [Heuristics of Software Testability](http://www.satisfice.com/tools/testable.pdf)
- [Putting Your Testability Socks On](https://www.a-sisyphean-task.com/2012/07/putting-your-testability-socks-on.html)
- [A Map For Testability](https://www.a-sisyphean-task.com/2014/07/a-map-for-testability.html)
- [Design for Testability](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.94.5966&rep=rep1&type=pdf)
- [30 days of Testability challenge](https://dojo.ministryoftesting.com/dojo/lessons/30-days-of-testability)
