# Development methodologies

> **tl;dr** TDD, ATDD and BDD are different development practices that favour quality.

## Theory

Neither of these methodologies are "testing" by itself. They are development practices that foster quality, which in turn make testing easier.

### TDD: (Unit) Test Driven Development

> Write [unit tests](/types) before writing the code that makes those tests pass.

The TDD cycle can be summarised as "Red-Green-Refactor". First, you write a set of unit tests that describe the code behaviour that you want to implement. If you run those tests, they will be failing (red), because that behaviour is not yet implemented. Second, you write the simplest code required to make those tests pass (green). If you wanted, you could stop here. Usually developers go a step further and improve that code to be more resilient and maintainable (refactor).

Unit tests tell if the code does what the developer expected it to do, at the method level, in isolation from the rest of the codebase.

### ATDD: Acceptance Test Driven Development

> Write [acceptance tests](/types) before writing the code that makes those tests pass.

The ATDD cycle follows the same "Red-Green-Refactor" from TDD. The difference is the type of test that is created in the "Red" step. In fact, the two methodologies can be used together, as [Robert C. Martin](https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests) illustrates: "a developer runs the acceptance tests and notices what fails; then they write unit tests that force them to write the code that will make some small portion of the acceptance tests pass; they keep running the acceptance tests to see how much is working as expected, and they keep adding unit tests and code until all the acceptance tests pass".

Acceptance tests tell if the code does what the product/client expected it to do, at the system level, in collaboration with the rest of the codebase.

### OID: Outside-In Development

> OID works by using automation tools combined with scenarios from a collaborative session to create a guide for Developers; this results in ensuring Developers develop what the business wants.
>
> — [Mark Winteringham](https://www.mwtestconsultancy.co.uk/bdd-testing-part-3/)
>
> (…) people started working _outside-in_, from the User Interface (UI) through which users experienced the system's behaviour, to the controllers, models, microservices (API), classes, etc., until they finally had working software that mattered to the stakeholders (…)
>
> — [Liz Keogh](https://lizkeogh.com/2011/06/27/atdd-vs-bdd-and-a-potted-history-of-some-related-stuff/)

OID is starts similar to ATDD. Both methodologies start by specifying the behaviour of your system as seen from the outside (see [black box testing](/types)). These specifications tell developers what their code needs to accomplish.

There's a small difference though. OID is not so prescriptive about test automation as ATDD is. Listen to [Mark Winteringham](https://www.mwtestconsultancy.co.uk/bdd-testing-part-3/): "The assumption from Testers is that because OID uses tools that are typically related to automated testing that must mean OID is automated testing. OID helps Developers design good code and deliver what the business really wants. Not deliver testing."

OID is less about technology and testing and more about process and collaborating; it was an [evolutionary step](https://dannorth.net/whats-in-a-story/) towards behaviour driven development.

### BDD: Behaviour Driven Development

> BDD in a nutshell: Using examples at multiple levels to create a shared understanding and reduce uncertainty to deliver software that matters.
>
> — Dan North, creator of BDD

BDD is an OID methodology. It starts at the outside by identifying business outcomes, and then drills down into the features that will achieve those outcomes. It focuses heavily on conversations between different roles, using examples to clarify requirements, and describing those requirements in a language readable by all participants.

> If you're not having conversations, you're not doing BDD. Order of importance:
> having conversations > capturing conversations > automating conversations
>
> — [Liz Keogh](https://lizkeogh.com/2014/01/22/using-bdd-with-legacy-systems/)

Each feature is captured as a **story**. Stories are descriptions of [requirements](/concepts/requirements.md) and their business benefits. They use a language agreed and understood by everyone — product owner, developer and tester. It includes a set of acceptance criteria, a list of statements that must be true to declare the story "done".

> This will likely be an iterative process. The stakeholder will have an idea of what they want but will not know how much work will be involved. With the help of the technical and testing experts, they will understand the cost/benefit of each scenario and make a judgement about whether they want it.
>
> — [Dan North](https://dannorth.net/whats-in-a-story/)

To describe a story we need words. If we use words from a natural language (like English) then anyone will be able to read it, but without some structure everyone's writing style would affect the readability of the story. To avoid that, some rules were introduced and that's how the **Gherkin language** was born, also known as the Given-When-Then syntax.

> If you look up anything around BDD, you're likely to find conversation, collaboration, scenarios and examples at its core, together with suggestions for how to automate them. If you look further, you'll find Three Amigos and the Gherkin syntax and Cucumber (…) and a host of other tools.
>
> — [Liz Keogh](https://lizkeogh.com/2015/03/27/what-is-bdd/)

Using this common language, it's time to gather the team to write these stories together. The purpose is to uncover more information and refine the idea, discovering assumptions and ambiguities.

> We involve members from testing, development, and business in an informal meeting that is more typically known as "[Three amigos](https://www.stickyminds.com/sites/default/files/magazine/file/2013/3971888.pdf)" to discuss and question what we plan to build. The goal is to dispel any incorrect assumptions (…) and ignorance we have around what we want to deliver.
>
> — [Mark Winteringham](https://www.mwtestconsultancy.co.uk/bdd-testing-part-2/)
>
> The output of these conversations is our feature files, with scenarios that provide examples of the features, based on the information that we have uncovered throughout the collaborative conversations.
>
> — [Dan Ashby](https://danashby.co.uk/2017/02/03/bdd-and-the-real-primary-purpose-of-feature-files/)

## Practice

### TDD

For every method or class you need to implement, repeat the "Red-Green-Refactor" cycle:

1. Decide what code behaviour you want to implement;
2. Write a set of unit tests that assert that behaviour;
3. Run those tests — they should fail;
4. Write enough code to make them pass;
5. Run those tests — they should pass;
6. Refactor the code, and repeat steps 4-5.

These unit tests usually cover happy and sad paths (see [Test types: Unit tests](/types)).

### ATDD

For every feature or acceptance criteria, repeat this cycle:

1. Write a list of acceptance criteria to consider a feature done;
2. Automate those criteria into acceptance tests;
3. Run those tests — they should fail;
4. Decide what code changes are necessary to pass those tests;
   - (optional) For each code change, use the "Red-Green-Refactor" cycle;
5. Run those tests — they should pass.

These acceptance tests usually cover just the happy path (see [Test types: Acceptance tests](/types)).

### BDD

For every feature:

1. Gather different team roles to discuss the feature, aka. "three amigos";
2. Capture the feature into a story using scenarios, aka. [specification by example](/notebook/specification-by-example.md);
3. Write code to fulfil the acceptance criteria of that story;
4. (optional) Write code to assert those criteria, aka. executable specification;
5. (optional) Write code to merge all features into a single file, aka. living documentation.

#### Three amigos

As [Liz Keogh](https://lizkeogh.com/2011/03/04/step-away-from-the-tools/) puts it: "There are things about your domain that you don't know or you've misunderstood; by talking through examples in groups, the chances of uncovering these gaps is increased."

Your role in these sessions is to generate questions and ensure the conversation stays inside the scope of the feature. It's also a good opportunity to evaluate the [testability](/concepts/testability) of that feature.

> A tester using BDD will be able to ask questions, collect information and help identify risks to inform other testing activities. Questions are your best tool for collaboration sessions:
>
> - "What, Who, Where, When, Why" - see [**`W5HEK`** mnemonic](/toolbox/mnemonics)
> - "Maybe this is a stupid question but…" - Those questions identify a lot of assumptions
> - "So just to confirm…" - Rephrasing with your own words validates your understanding
>
> — [Mark Winteringham](https://www.mwtestconsultancy.co.uk/bdd-testing-part-2/)

#### Specification By Example (SBE)

Detailing a feature into a story using scenarios is hard. SBE is an old concept but it was recently popularised by [Gojko Adzic](https://gojko.net/books/specification-by-example/)'s book. The goal of these specifications is to "improve quality, reduce rework and collaborate better".

[Matt Wynne](https://cucumber.io/blog/bdd/example-mapping-introduction/) then proposed a simplified implementation of SBE called Example Mapping.

> A low-tech method for making this conversation (three amigos) short and powerfully productive. In short, it uses different coloured post-it notes as visual aids to help keep track of rules (acceptance-criteria), examples (Gherkin scenarios) and questions.

For a detailed guide on how to use this technique in practice, continue to this [notebook page](/notebook/specification-by-example).

#### Story

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
Then [result]
```

> - The title should describe an activity
> - The narrative should include a Role, a Feature and a Benefit
> - The scenario title should say what's different
> - The scenario should be described in terms of Context, Actions and Results
> - The given should define all of, and no more than, the required context
> - The action should describe the feature
>
> — [Dan North](https://dannorth.net/whats-in-a-story/)

#### Living documentation (BDD)

The tool that reads Gherkin and executes test code is called [Cucumber](https://cucumber.io/). If your team decides to write automated checks for each scenario (i.e. executable specification) then you can go a step further and achieve living documentation.

If you automated your scenarios, most likely you have a collection of `*.feature` files. You can find (or build) a tool that reads these files and automatically generates web pages (`*.html` files).

The end goal is to have an automated process that reads your scenarios, transforms them into clean web pages, and publishes them online for any team member to access. That means you will have an always up-to-date documentation of the current functionality of your software — that's the origin of the term _living_ documentation.

#### All together now!

> There are teams ignoring the collaborative side of BDD, focusing too much on using a Gherkin syntax as means to build test cases and (…) focus on automating test coverage. It's important to remember that Gherkin is for development guidance, not test coverage.
>
> — [Mark Winteringham](https://www.mwtestconsultancy.co.uk/bdd-testing-part-4/)

[Alister Scott](https://www.thoughtworks.com/insights/blog/specification-example) wrote a blog post about a fictional team, illustrating their journey from ATDD to BDD, highlighting the difficulties along the way. They start with automated acceptance checks (ATDD), then convert them to Gherkin scenarios (BDD), and finally end with living documentation (BDD).

He highlights several requirements of a successful BDD, here are a few:

> - Abstract: the scenarios should be high-level enough to hide details and implementations;
> - Language: terminology should be consistent to ensure a shared understanding;
> - Flows: only a few (1-3) end-to-end flows, not a combination of every decision point.

## Teachers

- [Alister Scott](https://watirmelon.blog/)
- [Dan Ashby](https://danashby.co.uk/)
- [Dan North](https://dannorth.net/) (author of BDD)
- [Gáspár Nagy](http://gasparnagy.com/)
- [Liz Keogh](https://lizkeogh.com)
- [Mark Winteringham](https://www.mwtestconsultancy.co.uk/)

## Sources

- [ATDD vs. BDD, and a potted history of some related stuff](https://lizkeogh.com/2011/06/27/atdd-vs-bdd-and-a-potted-history-of-some-related-stuff/)
- [BDD and the real primary purpose of feature files](https://danashby.co.uk/2017/02/03/bdd-and-the-real-primary-purpose-of-feature-files/)
- [Introducing Example Mapping](https://cucumber.io/blog/bdd/example-mapping-introduction/)
- [Is BDD testing? (part 2)](https://www.mwtestconsultancy.co.uk/bdd-testing-part-2/)
- [Is BDD testing? (part 3)](https://www.mwtestconsultancy.co.uk/bdd-testing-part-3/)
- [Is BDD testing? (part 4)](https://www.mwtestconsultancy.co.uk/bdd-testing-part-4/)
- [Specification by Example (book)](https://gojko.net/books/specification-by-example/)
- [Specification by Example (example)](https://www.thoughtworks.com/insights/blog/specification-example)
- [Step Away from the Tools](https://lizkeogh.com/2011/03/04/step-away-from-the-tools/)
- [TDD with Acceptance Tests and Unit Tests](https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests)
- [The Three Amigos: all for one, one for all](https://www.stickyminds.com/sites/default/files/magazine/file/2013/3971888.pdf)
- [Using BDD with Legacy Systems](https://lizkeogh.com/2014/01/22/using-bdd-with-legacy-systems/)
- [What is BDD?](https://lizkeogh.com/2015/03/27/what-is-bdd/)
- [What's in a story?](https://dannorth.net/whats-in-a-story/)
- [BDD in 2020](https://alisterbscott.com/2020/05/28/bdd-in-2020/)
