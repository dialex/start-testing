# Testing's purpose

> **tl;dr** SUMMARY_HERE

## Theory

Are you looking for the official definition of testing? You won't like it. Fine, here it is:

> The process consisting of all lifecycle activities, both static and dynamic, concerned with planning, preparation and evaluation of software products and related work products to determine that they satisfy specified requirements, to demonstrate that they are fit for purpose and to detect defects.
>
> — International Software Testing Qualifications Board [(ISTQB)](http://glossary.istqb.org/search/testing)

You just read 43 words in a single sentence. [Hemingway](http://www.hemingwayapp.com/) hates it and your brain hates it too. Instead, let's focus on what is the purpose of testing — why we need it and what it is. From there, we can think about the [responsibilities of a tester](/concepts/responsibilities.md).

### Quality pursuit

Quality is **value to some person, who matters**. A bug is anything that threatens quality. This simple definition shows how subjective quality really is. Here are a few other perspectives:

- Aesthetic view: *Quality is emotive and simplicity.*
  - ✅ Fosters excellence and pride in workmanship.
  - ❌ Can become a cloak for perfectionists.
- Manufacturing view: *Quality is conformance to specifications.*
  - ✅ Fits the mindset of highly regulated contexts, e.g. health industry.
  - ❌ Can produce products that satisfy no one, besides the specification's author.
- Customer view: *Quality is whatever satisfies the customer.*
  - ✅ Increases customer loyalty.
  - ❌ Can lead to eternal chasing of trends and competitors.

Stakeholders will form a *perception* of the current quality based on their values, knowledge, skills and past experiences. Given the diversity of stakeholders, each will have a different perception of quality. That's why you cannot _assure quality_ to all of them.

> Apple shipped the first version of Hypercard with about 500 known bugs in it, yet the product was a smashing success. The Hypercard QA team chose the right bugs to ship with. They also chose the right features. — [James Bach](http://www.satisfice.com/articles/gooden2.pdf)

Even though you cannot guarantee quality, you can do your best effort to pursuit it. Thus the **purpose of testing** is to measure and maximise quality delivered, while minimising risk to an acceptable level. The more we test, the more we know about our products. With that knowledge, teams can make informed decisions on what to do with the product.

### What testing is

Testing includes many activities.

- Identify risks and explore the product to discover if those risks are real and a threat
- Feedback loop: provides information that has been uncovered or confirms if expectations on how the product should work are met
- Exploring the product or executing tests to discover information
- Give feedback to the team and stakeholders, for them to make an informed decision about the next steps to take regarding the product.
- Challenge team assumptions of what the product is and should be.
- Facilitate collaboration and communication between team members.

#### Value

?

#### Tasks

?

#### ❌ Continuous

#### ❌ Valuable

#### ❌ Mitigation

#### ❌ Sharing

- Collect aids which aims at delivering quality information to anyone equipped to better build the product.


#### ❌ Communication

>  Testing is making implicit things explicit to someone who matters. What everyone looks at but no one sees.
> Testing is closing in on the ‘I’ the consumer, ‘I’ the tester, ‘I’ the developer, ‘I’ the owner and illuminating the path of ‘We’ the team.
> Formalise knowledge

#### ❌ Multiple perspective (hats)

- Strive to deliver a reliable product that can be used with confidence.
> Testing is diminishing confusion and expanding the confidence of a user.
>  Helicopter view: it is sufficiently open that people could buy into it, and read into it, particularly non-testers.
> Testing can be acting as an advocate for our customers.

#### ❌ Exploration

**Testing uncovers information that helps people make better decisions.** A test script will check if what was expected and known to be true, still is.

- Identifying the subtleties and extremities where the system can be used.
- Questioning and challenging how the product is presumed to be built and used.
- Finding what is Not in harmony with the surroundings (context)
>  "pursuit" two aspects of testing for me: finding out what is there and digging what needs to be uncovered (chasing something which might be elusive or hard to find/spot).

- Like buying a microscope and a telescope to look at how a product is used today and in future.

#### ❌ Investigation

debug and find root causes. working more closely with developers, having conversations instead of waiting for work to reach us, we are helping to reduce the chance of bugs being made from misunderstandings or scenarios not thought about.
To discover new information you need to act critically and creatively~~: ask questions, compare perspectives, try scenarios (even if they're unlikely).~~

- Testing is having an eye for details however miniature or magnanimous.
> Attention to detail. Coherence.
> Notice what everyone looks but no one sees.
> Testing is testing the assumptions, change perspective.
- Being biased and up-rooting those biases

---------


### Test from hip
* Unknowns
* Risk
* Coverage
* Non-functional
* Persona testing

-----

- **Zero quality control**. Quality is built-in and it is not a separate/dedicated stage in the process.
- **Quick feedback**. Identify issues early when they are the cheapest to fix.


Here are some possible replies; I believe everything is Tweetable, or pretty close. Testing is...

- reviewing the product and ideas and descriptions of it, looking for significant and relevant inconsistencies.
- experimenting with the product to find out how it may be having problems—which is not "breaking the product", by the way.
- helping our clients to make empirically informed decisions about the product, project, or business.
- a process by which we systematically examine any aspect of the product with the goal of preventing surprises.
- a process of interacting with the product and its systems in many ways that challenge unwarranted optimism.
- observing and evaluating the product, to see where all those defect prevention ideas might have failed.
- a special part of the development process focused on discovering what could go badly (or what is going badly).
- exploring, discovering, investigating, learning, and reporting about the product to reveal new information.
- gathering information about the product, its users, and conditions of its use, to help defend value.
- raising questions to help teams to develop products that more quickly and easily reveal their own problems.
- helping programmers and the team to learn about unanticipated aspects of the product we’re developing.
- helping our clients to understand the product they’ve got so they can decide if it’s the product they want.
- using both tools and direct interaction with the product to question and evaluate its behaviours and states.
- exploring products deeply, imaginatively, and suspiciously, to help find problems that threaten value.
- performing actual and thought experiments on products and ideas to identify problems and risks.
- thinking critically and skeptically when thinking about products and ideas around them, with the goal of not being fooled.
- evaluating a product by learning about it through exploration, experimentation, observation and inference.

### What testing is not

> Much of what we find as testers comes off-script and high-value unknowns are found by letting humans do what humans do best - thinking creatively! — [Connor Roberts](http://pixelgrill.com/what-is-testing/)

When you check, you confirm what you already know. When you test, you search for new information.

More on testing vs checking: <http://www.satisfice.com/blog/archives/856>

More on the difference between Testing and QA: <http://www.developsense.com/blog/2010/05/testers-get-out-of-the-quality-assurance-business/>



> There is a powerful alternative to the orthodox, expensive, and boring methodologies that aim at
> the best possible quality: (…) the discipline of good enough software development. — [James Bach](http://www.satisfice.com/articles/gooden2.pdf)

**Quality Assurance (QA)**: Ah, yes. The most abused title/phrase in the testing world... No one person does this, and anyone who has a title "QA" is fooling themselves. "The quality assurance role in the company resides with the management and the CEO (the principal quality officer in the company), since it was they — and certainly not the testers — who had the authority to make decisions about quality."

Notes: Again, more on the difference between Testing and QA here: <http://www.developsense.com/blog/2010/05/testers-get-out-of-the-quality-assurance-business/>

## Teachers

- [Name](#link)

## Sources

- [41 Definitions of Software Testing](https://chroniclesoftesting.blogspot.pt/2017/11/41-definitions-of-software-testing.html)
- [The Anatomy of a Definition of Testing](https://qahiccupps.blogspot.pt/2016/11/the-anatomy-of-definition-of-testing.html)
- [Testing Terminology](http://pixelgrill.com/testing-terminology/)
- [The Challenge of "Good Enough" Software](http://www.satisfice.com/articles/gooden2.pdf)
- [99 Second Introduction to Testing](https://dojo.ministryoftesting.com/lessons/99-second-introduction-to-testing)
