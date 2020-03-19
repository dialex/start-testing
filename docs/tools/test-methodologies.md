# Development Methodologies

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
> So, in short, the business specifies the system with automated acceptance tests. Programmers run those tests to see what unit tests need to be written. The unit tests force them to write production code that passes both tests. In the end, all the tests pass. In the middle of the iteration, QA changes from writing automated tests, to exploratory testing.
>
> -- https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests

> Lots of people started working *outside-in*, from the UIs through which users experienced the system’s behaviour, to the controllers, the domain models, the utility classes, services, repositories, etc., until they finally had working software that tended to matter more to the stakeholders of the project than software had before.
>
> -- https://lizkeogh.com/2011/06/27/atdd-vs-bdd-and-a-potted-history-of-some-related-stuff/

> Outside-in Development. OID works by using automation tools combined with scenarios from a collaborative session to create a guide for Developers. This results in ensuring Developers develop what the business wants.
>
> That’s because OID *is not about Testing it’s about guidance*, and this is what Testers get wrong. The assumption from Testers is that because OID uses tools that are typically related to automated testing that must mean OID is automated testing. OID helps Developers design good code and deliver what the business really wants. Not deliver testing.
>
> -- https://www.mwtestconsultancy.co.uk/bdd-testing-part-3/

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

> If you’re not having conversations, you’re not doing BDD
>
> -- Liz Keogh

> There are things about your domain that you don’t know or you’ve misunderstood. By talking through examples in groups, the chances of uncovering these gaps is increased.
>
> -- [Liz Keogh](https://lizkeogh.com/2011/03/04/step-away-from-the-tools/)

> Testers tend to perceive BDD as the use of Gherkin syntax and automation. Testers tend to pay very little attention to the collaborative aspects of BDD.
>
> We involve members from testing, development, design and the business in an informal meeting that is more typically known as ‘[Three amigos](https://www.stickyminds.com/sites/default/files/magazine/file/2013/3971888.pdf)’ to discuss and question what we plan to build. The goal is to dispel any incorrect assumptions we may have, and remove any ignorance we have around what we want to deliver.
>
> **Mistakes. Thinking that OID, ATDD and TDD were testing approaches when they are not. However, as I created my model I began to realise that OID is a development practice and not testing**
>
> -- https://www.mwtestconsultancy.co.uk/bdd-testing-part-2/

> a mechanism for describing the behaviour of code and providing examples, without using the word “test”, because it turned out that this clarified a lot of the confusion.
>
> -- https://lizkeogh.com/2011/06/27/atdd-vs-bdd-and-a-potted-history-of-some-related-stuff/

### ATDD vs BDD

> the biggest difference between BDD and ATDD was the way in which BDD enabled a common language between users and business stakeholders. Nowadays, is mainly wording. The difference is that one is called Behaviour Driven Development – and some people find that wording useful – and one (or two) is called (Acceptance) Test Driven Development – and some people find that wording useful in a different way.
>
> And that’s it.
>
> -- https://lizkeogh.com/2011/06/27/atdd-vs-bdd-and-a-potted-history-of-some-related-stuff/

## Practice

> maybe too technical: https://dannorth.net/introducing-bdd/



> There are tools we can use during our three amigos sessions to help us. A testers goal is to generate questions and ensure the conversation stays inside the scope of the feature. As a tester, questions are your best tool for collaboration sessions.
>
> - [The five Ws - What, Who, Where, When, Why](https://en.wikipedia.org/wiki/Five_Ws)
> - ‘This maybe a stupid question but…’ - Those stupid questions weed out a lot of assumptions
> - ‘So just to confirm….’ - Again, verbalising what is required will weed out assumptions
>
> Another tool, that is synonymous with BDD is Gherkin. Gherkin uses Given, When, Then syntax to allow us to create examples in the form of Scenarios to demonstrate how we might expect acceptance criteria to behave. For example:
>
> ```gherkin
> Given the user has not ordered yet
> When the user adds a book into the shopping cart
> Then a discount of 10% is applied to the total.
> ```
>

### Specification by Example (BDD)

>
> Writing examples in Gherkin is hard. However, there is a new approach called Example mapping created by Matt Wynne. (LINK TO EXTRA/SBE) In short it uses different coloured post-it notes as visual aids to help keep track of rules (acceptance-criteria), examples (Gherkin scenarios) and questions
>
> -- https://www.mwtestconsultancy.co.uk/bdd-testing-part-2/

> **Red state** A Developer starts on the ‘outer wheel’ by using a Gherkin based tool to tie explicit user actions to the step of a scenario that creates a scenario that can’t be executed (Because the feature doesn’t exist). For example, a Developer may use Cucumber to trigger a series of Selenium WebDriver actions on a browser to simulate how a user would execute a scenario.
>
> **Green state** The Developer will then move into the ‘inner wheel’ and run a similar red, green and amber process on a lower lever. The Developer will use this pattern against individual methods using a different unit level automation tool multiple times to get all the production code working. This, in turn, provides code that means the ‘outer wheel’ automated scenario can be executed without issue.
>
> This process ensures that the Developer has delivered what is expected from the business, as well as informing the Developer when they are done.
>
> **Amber state** The Developer is now able to refactor their code and be informed if their changes are no longer delivering what the business expects.
>
> (DUPLICATED)
>
> That’s because OID *is not about Testing it’s about guidance*, and this is what Testers get wrong. The assumption from Testers is that because OID uses tools that are typically related to automated testing that must mean OID is automated testing.
>
> -- https://www.mwtestconsultancy.co.uk/bdd-testing-part-3/

### Living documentation (BDD)

`*.feature` to html reports. it takes your Specification (written in Gherkin, with Markdown descriptions) and turns them into an always up-to-date documentation of the current state of your software - in a variety of formats.

## Teachers

- Dan North
- Liz Keogh

## Sources

- [XXX](YYY)
