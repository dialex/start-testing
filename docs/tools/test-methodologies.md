# Test Methodologies

> **tl;dr** SUMMARY_HERE

## Theory



### TDD

...

### ATDD

> Programmers start a story by executing the acceptance tests for that story, and noting what fails. Then they write unit tests that force them to write the code that will make some small portion of the acceptance tests pass. They keep running the acceptance tests to see how much of their story is working, and they keep adding unit tests and production code until all the acceptance tests pass.
>
> At the end of the iteration all the acceptance tests (and unit tests) are passing. There is nothing left for QA to do. There is no hand-off to QA to make sure the system does what it is supposed to. The acceptance tests already prove that the system is working.
>
> This does not mean that QA does not put their hands on the keyboards and their eyes on the screen. They do! But they don’t follow manual test scripts! Rather, they perform *exploratory testing*. They get *creative*. They do what QA people are really good at—they find new and interesting ways to break the system. They uncover unspecified, or under-specified areas of the system.
>
> **So, in short, the business specifies the system with automated acceptance tests. Programmers run those tests to see what unit tests need to be written. The unit tests force them to write production code that passes both tests. In the end, all the tests pass. In the middle of the iteration, QA changes from writing automated tests, to exploratory testing.**
>
> -- https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests

> Lots of people started working *outside-in*, from the UIs through which users experienced the system’s behaviour, to the controllers, the domain models, the utility classes, services, repositories, etc., until they finally had working software that tended to matter more to the stakeholders of the project than software had before.
>
> -- https://lizkeogh.com/2011/06/27/atdd-vs-bdd-and-a-potted-history-of-some-related-stuff/

### Unit vs Acceptance

> recommended by the Agile disciplines. Unit tests, which are written by programmers, for programmers, in a programming language. And acceptance tests, which are written by business people (and QA), for business people, in a high level specification language
>
> It’s true that the two streams of tests test the same things. Indeed, that’s the point. Unit tests are written by programers to ensure that the code does what they intend it to do. Acceptance tests are written by business people (and QA) to make sure the code does what they intend it to do. The two together make sure that the business people and programmers intend the same thing.
>
> programmers must go to great lengths to decouple the components of the system in order to test them independently. Therefore unit tests seldom exercise large integrated chunks of the system. Acceptance tests operate on much larger integrated chunks of the system. (black box)
>
> -- https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests

### BDD

> If you look up anything around BDD, you’re likely to find conversation, collaboration, scenarios and examples at its core, together with suggestions for how to automate them. If you look further, you’ll find Three Amigos and Outside-In and the Given / When / Then syntax and Cucumber and Selenium and JBehave and Capybara and SpecFlow and a host of other tools.
>
> define BDD, I say something like, “Using examples in conversation to illustrate behaviour.”
>
> -- https://lizkeogh.com/2015/03/27/what-is-bdd/

> a mechanism for describing the behaviour of code and providing examples, without using the word “test”, because it turned out that this clarified a lot of the confusion.
>
> -- https://lizkeogh.com/2011/06/27/atdd-vs-bdd-and-a-potted-history-of-some-related-stuff/

### ATDD vs BDD

> the biggest difference between BDD and ATDD was the way in which BDD enabled a common language between users and business stakeholders. Nowadays, is mainly wording. The difference is that one is called Behaviour Driven Development – and some people find that wording useful – and one (or two) is called (Acceptance) Test Driven Development – and some people find that wording useful in a different way.
>
> And that’s it.
>
> -- https://lizkeogh.com/2011/06/27/atdd-vs-bdd-and-a-potted-history-of-some-related-stuff/

### Living documentation

`*.feature` to html reports. it takes your Specification (written in Gherkin, with Markdown descriptions) and turns them into an always up-to-date documentation of the current state of your software - in a variety of formats.

## Practice



## Teachers

- Dan North
- Liz Keogh

## Sources

- [XXX](YYY)
