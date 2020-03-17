# Test Methodologies

> **tl;dr** SUMMARY_HERE

## Theory



### Black box testing

> This is a “box” that takes some input and gives you some output. You don’t know what’s going on inside. Because we don’t have a direct knowledge or control over what’s inside we can only try to interact with it and observe the behavior.
>
> As we gather our observations, we also need some evaluation rule(s) to make a judgment – is there a potential problem? ORACLES
>
> Note that a perception of a problem will be different for different people. Therefore testing, being a service, must not rely solely on the testers’ perception of the problem. QUALITY DEF
>
> -- http://automation-beyond.com/2016/08/30/on-white-box-and-black-box-testing/

### White box testing

> We see the code. We can read it. We can infer what it’s supposed to do. We can mentally execute it and identify possible issues. The code is in a transparent “box”. Or a “glass” box. Which, eventually, to contrast it with Black Box testing, became a White Box testing term, albeit slightly misleading in this form.
>
> -- http://automation-beyond.com/2016/08/30/on-white-box-and-black-box-testing/

### Acceptance test

> QA and Business analysts should take the stories chosen during the planning meeting, and turn them into automated acceptance tests. Programmers use the acceptance tests as requirements. They read those tests to find out what their stories are *really* supposed to do.
>
> -- https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests

> In our world, we need to come up with ways to convey our intentions and ideas clearly so we are not misunderstood by our colleagues. In software development, acceptance criteria aid the development team in knowing the expectations for a certain feature.
>
> **Why?**
>
> - Define Behaviour -This aids the team in getting a list of items on what the feature should do
> - Reach Harmony - The development team knows exactly what conditions need to be met, just as the clients know what to expect from the feature
> - Support testing - On top of the ticket description, talking to the product, and talking to the development team for test cases, this provides another point of view for testers
>
> **Who?**
>
> These are normally written by the product owner and reviewed by a member of the development team to ensure that there are no technical constraints and/or inconsistencies from a development perspective. In my team, it is first written by the product owner, then reviewed by a developer for the technical constraints, and finally a QA specialist for their knowledge of how the new feature should interact with the current system.
>
> **How?**
>
> There are multiple ways to write acceptance criteria. Our team prefers the **scenario-oriented** format as the team gets a better understanding of the requirements compared to one sentence scenarios. *Given/When/Then* format
>
> -- https://thelifeofoneman.com/how-to-write-acceptance-criteria



### Unit vs Acceptance

> recommended by the Agile disciplines. Unit tests, which are written by programmers, for programmers, in a programming language. And acceptance tests, which are written by business people (and QA), for business people, in a high level specification language
>
> It’s true that the two streams of tests test the same things. Indeed, that’s the point. Unit tests are written by programers to ensure that the code does what they intend it to do. Acceptance tests are written by business people (and QA) to make sure the code does what *they* intend it to do. The two together make sure that the business people and programmers intend the same thing.
>
> programmers must go to great lengths to decouple the components of the system in order to test them independently. Therefore unit tests seldom exercise large integrated chunks of the system. Acceptance tests operate on much larger integrated chunks of the system. (black box)
>
> -- https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests

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
> ### And that’s it.
>
> -- https://lizkeogh.com/2011/06/27/atdd-vs-bdd-and-a-potted-history-of-some-related-stuff/

## Practice

### Acceptance tests

> **User Story 1**
>
> - **As** an admin of Analytics Platform X
> - **I want** to be able to invite my team members to access the system
> - **So that** my team can analyse the data on Analytics Platform X to make more informed business decisions
>
> **Acceptance** **Criteria**
>
> - Given that I am an Admin on Platform X
> - And I am on the [Users Page](https://thelifeofoneman.com/meme-of-the-day-bug-reports)
> - And I click on “[Invite ](https://thelifeofoneman.com/the-role-of-the-tester)Users”
> - Then I fill in the Email Address of a team member
> - And I click on Send Invite
> - Then team member I have invited gets an email to access the platform

## Teachers

- Dan North
- Liz Keogh

## Sources

- [XXX](YYY)
