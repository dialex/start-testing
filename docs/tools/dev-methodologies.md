# Development methodologies

> **tl;dr** SUMMARY_HERE

## Theory

Neither of these methodologies are testing. They are development practices that favor or foster quality, which in turn make testing easier.

### TDD: (Unit) Test Driven Development

> Write [unit tests]() before writing the code that makes those tests pass.

The TDD cycle can be summarised as "Red-Green-Refactor". First, you write a set of unit tests that describe the code behaviour that you want to implement. If you run those tests, they will be failing (red), because that behaviour is not yet implemented. Second, you write the simplest code required to make those tests pass (green). If you wanted, you could stop here. Usually developers go a step further and improve that code to be more resilient and maintanable (refactor).

> Unit tests tell if the code does what the developer expected it to do, at the method level, in isolation from the rest of the codebase.

### ATDD: Acceptance Test Driven Development

> Write [acceptance tests]() before writing the code that makes those tests pass.

The ATDD cycle follows the same "Red-Green-Refactor" from TDD. The difference is the type of test that is created in the "Red" step. In fact, the two methodologies can be used together, as [Robert C. Martin](https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests) illustrates: "a developer runs the acceptance tests and notices what fails; then they write unit tests that force them to write the code that will make some small portion of the acceptance tests pass; they keep running the acceptance tests to see how much is working as expected, and they keep adding unit tests and code until all the acceptance tests pass".

> Acceptance tests tell if the code does what the product/client expected it to do, at the system level, in collaboration with the rest of the codebase.

### OID: Outside-In Development

> OID works by using automation tools combined with scenarios from a collaborative session to create a guide for Developers; this results in ensuring Developers develop what the business wants.
>
> -- [Mark Winteringham](https://www.mwtestconsultancy.co.uk/bdd-testing-part-3/)

> (...) people started working _outside-in_, from the User Interface (UI) through which users experienced the system’s behaviour, to the controllers, models, microservices (API), classes, etc., until they finally had working software that mattered to the stakeholders (...)
>
> -- [Liz Keogh](https://lizkeogh.com/2011/06/27/atdd-vs-bdd-and-a-potted-history-of-some-related-stuff/)

OID is starts very similar to ATDD. Both methodologies start by specifying the behaviour of your system as seen from the outside (see [black box testing]()). These specifications tell developers what their code needs to accomplish.

There's a small difference though. OID is not so prescriptive about test automation as ATDD is. Listen to [Mark Winteringham](https://www.mwtestconsultancy.co.uk/bdd-testing-part-3/): "The assumption from Testers is that because OID uses tools that are typically related to automated testing that must mean OID is automated testing. OID helps Developers design good code and deliver what the business really wants. Not deliver testing."

OID is less about technology and testing and more about process and collaborating; it was an [evolutionary step](https://dannorth.net/whats-in-a-story/) towards behaviour driven development.

### BDD: Behaviour Driven Development

> BDD in a nutshell: Using examples at multiple levels to create a shared understanding and reduce uncertainty to deliver software that matters.
>
> -- Dan North, creator of BDD

BDD is an OID methodology. It starts at the outside by identifying business outcomes, and then drills down into the features that will achieve those outcomes. It focuses heavily on conversations between different roles, using examples to clarify requirements, and describing those requirements in a language readable by all participants.

> If you’re not having conversations, you’re not doing BDD. Order of importance:
> having conversations > capturing conversations > automating conversations
>
> -- [Liz Keogh](https://lizkeogh.com/2014/01/22/using-bdd-with-legacy-systems/)

Each feature is captured as a “story”. Stories are descriptions of [requirements]() and their business benefits. They use a language agreed and understood by everyone -- product owner, developer and tester. It includes a set of acceptance criteria, a list of statements that must be true to declare the story "done".

> This will likely be an iterative process. The stakeholder will have an idea of what they want but will not know how much work will be involved. With the help of the technical and testing experts, they will understand the cost/benefit of each scenario and make a judgement about whether they want it.
>
> -- [Dan North](https://dannorth.net/whats-in-a-story/)

To describe a story we need words. If we use words from a natural language (like English) then anyone will be able to read it, but without some structure everyone's writing style would affect the readability of the story. To avoid that, some rules were introduced and that's how the Gherkin language was born, also known as the Given-When-Then syntax:

```gherkin
Title (one line describing the story)

# Narrative #

As a [role]
I want [feature]
So that [benefit]

# Acceptance Criteria #

Scenario: Title
Given [context]
When [action/event]
Then [outcome]
```

> If you look up anything around BDD, you’re likely to find conversation, collaboration, scenarios and examples at its core, together with suggestions for how to automate them. If you look further, you’ll find Three Amigos and the Gherkin syntax and Cucumber (...) and a host of other tools.
>
> -- [Liz Keogh](https://lizkeogh.com/2015/03/27/what-is-bdd/)

Using this common language, it's time to gather the team to write these stories together. The purpose is to uncover more information and refine the idea, discovering assumptions and ambiguities.

> We involve members from testing, development, and business in an informal meeting that is more typically known as "[Three amigos](https://www.stickyminds.com/sites/default/files/magazine/file/2013/3971888.pdf)" to discuss and question what we plan to build. The goal is to dispel any incorrect assumptions (...) and ignorance we have around what we want to deliver.
>
> -- [Mark Winteringham](https://www.mwtestconsultancy.co.uk/bdd-testing-part-2/)

> The output of these conversations is our feature files, with scenarios that provide examples of the features, based on the information that we have uncovered throughout the collaborative conversations.
>
> -- [Dan Ashby](https://danashby.co.uk/2017/02/03/bdd-and-the-real-primary-purpose-of-feature-files/)

## Practice

### TDD

For every method or class you need to implement, repeat the "Red-Green-Refactor" cycle:

1. Decide what code behaviour you want to implement;
2. Write a set of unit tests that assert that behaviour;
3. Run those tests -- they should fail;
4. Write enough code to make them pass;
5. Run those tests -- they should pass;
6. Refactor the code, and repeat steps 4-5.

These unit tests usually cover happy and sad paths (see [Test types: Unit tests]()).

### ATDD

For every feature or acceptance criteria, repeat this cycle:

1. Write a list of acceptance criteria to consider a feature done;
2. Automate those criteria into acceptance tests;
3. Run those tests -- they should fail;
4. Decide what code changes are necessary to pass those tests;
   1. (optional) For each code change, use the "Red-Green-Refactor" cycle;
5. Run those tests -- they should pass.

These acceptance tests usually cover just the happy path (see [Test types: Acceptance tests]()).





---

> There are things about your domain that you don’t know or you’ve misunderstood. By talking through examples in groups, the chances of uncovering these gaps is increased.
>
> -- [Liz Keogh](https://lizkeogh.com/2011/03/04/step-away-from-the-tools/)

> Testers tend to perceive BDD as the use of Gherkin syntax and automation. Testers tend to pay very little attention to the collaborative aspects of BDD.
>
> -- [Mark Winteringham](https://www.mwtestconsultancy.co.uk/bdd-testing-part-2/)

> a mechanism for describing the behaviour of code and providing examples, without using the word “test”, because it turned out that this clarified a lot of the confusion
>
> -- https://lizkeogh.com/2011/06/27/atdd-vs-bdd-and-a-potted-history-of-some-related-stuff/

> A tester using BDD will be able to ask questions, collect information and help identify risks to inform other testing activities.
>
> -- [Mark W](https://www.mwtestconsultancy.co.uk/bdd-testing-part-4/)

### ATDD

> At the end, all the acceptance tests (and unit tests) are passing. There is no hand-off to Testers to make sure the system does what it is supposed to. The acceptance tests already prove that the system is working (according to spec).
>
> This does not mean that Testers do not put their hands on the keyboard and their eyes on the screen. They do! (...) They perform _exploratory testing_. They get _creative_. They do what Testers are really good at—they find new and interesting ways to break the system. They uncover under-specified areas of the system.
>
> So, in short, the business specifies the system with automated acceptance tests. Programmers run those tests to see what unit tests need to be written. The unit tests force them to write production code that passes both tests. In the end, all the tests pass. In the middle of the iteration, QA changes from writing automated tests, to exploratory testing.
>
> -- https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests

### Unit vs Acceptance

To make the acceptance test pass (green), multiple TDD cycles can be used but this is not mandatory.

> recommended by the Agile disciplines. Unit tests, which are written by programmers, for programmers, in a programming language. And acceptance tests, which are written by business people (and QA), for business people, in a high level specification language
>
> It’s true that the two streams of tests test the same things. Indeed, that’s the point. Unit tests are written by programers to ensure that the code does what they intend it to do. Acceptance tests are written by business people (and QA) to make sure the code does what they intend it to do. The two together make sure that the business people and programmers intend the same thing.
>
> programmers must go to great lengths to decouple the components of the system in order to test them independently. Therefore unit tests seldom exercise large integrated chunks of the system. Acceptance tests operate on much larger integrated chunks of the system. (black box)
>
> -- https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests

### ATDD vs BDD

> the biggest difference between BDD and ATDD was the way in which BDD enabled a common language between users and business stakeholders. Nowadays, is mainly wording. The difference is that one is called Behaviour Driven Development – and some people find that wording useful – and one (or two) is called (Acceptance) Test Driven Development – and some people find that wording useful in a different way.
>
> And that’s it.
>
> -- https://lizkeogh.com/2011/06/27/atdd-vs-bdd-and-a-potted-history-of-some-related-stuff/

> BDD gives a clearer understanding as to what the system should do from the perspective of the developer and the customer. TDD only gives the developer an understanding of what the system should do.
>
> -- https://www.linkedin.com/pulse/agile-development-difference-between-tddatddbdd-komal-sureka/

- BDD focuses on the behavioural aspect of the system rather unlike the TDD focuses on the implementation aspect of the system.
- TDD uses white box testing (implementation). ATDD uses black box testing (behaviour).

## Practice

### Story (BDD)

> maybe too technical: https://dannorth.net/introducing-bdd/

1. Specify features using examples/scenarios, aka. specification by example
2. Cross functional conversation/collaboration, aka. 3 amigos
3. Write code to fulfil those requirements
4. (Optional) write code to assert those requirements, aka. executable specification
5. (Optional) write code to merge all features into a single file, aka. living documentation

> - The title should describe an activity
> - The narrative should include a role, a feature and a benefit
> - The scenario title should say what’s different
> - The scenario should be described in terms of Context, Actions and Results
> - The givens should define all of, and no more than, the required context
> - The action should describe the feature
>
> -- https://dannorth.net/whats-in-a-story/

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

> ```gherkin
> Scenario: User account level permissions and restrictions
> Given the user [has] an account with [a certain access level]
> When the search screen is viewed
> Then the user [should see something]
>
> | has           | a certain access level              | should see something                                                                     |
> | has           | basic access privileges             | be able to search and read the results, but not edit them                                |
> | has           | read only access                    | see a message saying the page is restricted and they cannot access                       |
> | has           | admin privileges                    | be able to search and read the results, and can edit/action them but not delete them     |
> | has           | super admin/tech support privileges | be able to search and read the results, and can edit/action them including deleting them |
> | has           | anonymous privileges                | see a message saying the page is restricted and they cannot access                       |
> | does not have | any privileges                      | see a message saying the page is restricted and they cannot access                       |
> ```
>
> -- https://danashby.co.uk/2017/02/03/bdd-and-the-real-primary-purpose-of-feature-files/

> There are teams ignoring the collaborative side of BDD, focusing too much on using a Gherkin syntax as means to build test cases and misunderstanding the purpose of Outside-in development to focus on automating test coverage. It’s important to remember that Gherkin is for development guidance, not test coverage.
>
> -- https://www.mwtestconsultancy.co.uk/bdd-testing-part-4/

> - Specifications, not scripts: she should move to less workflow based scenarios but more specifications about what is needed, as these are easier to understand, more precise and testable;
> - Abstract: the specification should be abstract enough to highlight the detail, remove the noise, and not being tied to the implementation of the user interface;
> - Ubiquitous language: the language used by the team and specifications should be consistent throughout the development process to ensure a shared understanding;
> - Edge cases: unusual variances should be specified to ensure clarity of expectations: “things that seem obvious kill us, if something sounds obvious, that’s where the danger is”;
> - Key examples: each decision point should have 5 - 6 key examples, and not more, so it is clear what is expected. These can be created by focussing on the differences between existing scenarios;
> - End-to-End flows: only a few (1-3) end-to-end flows, not a combination of every decision point combination
> - Accessible: publishing the specifications so Janet, Dave and others can easily access the latest versions.
>
> a whole example from automation > cucumber > gherkin > living doc
>
> -- https://www.thoughtworks.com/insights/blog/specification-example

### Specification by Example (BDD)

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
> That’s because OID _is not about Testing it’s about guidance_, and this is what Testers get wrong. The assumption from Testers is that because OID uses tools that are typically related to automated testing that must mean OID is automated testing.
>
> -- https://www.mwtestconsultancy.co.uk/bdd-testing-part-3/

### Living documentation (BDD)

executable specifications

\*.feature` to html reports. it takes your Specification (written in Gherkin, with Markdown descriptions) and turns them into an always up-to-date documentation of the current state of your software - in a variety of formats.

## Teachers

- Dan North
- Liz Keogh

## Sources

- https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests
- https://www.mwtestconsultancy.co.uk/bdd-testing-part-3/
- https://dannorth.net/whats-in-a-story/
- https://lizkeogh.com/2015/03/27/what-is-bdd/
- https://www.mwtestconsultancy.co.uk/bdd-testing-part-2/
- https://danashby.co.uk/2017/02/03/bdd-and-the-real-primary-purpose-of-feature-files/
