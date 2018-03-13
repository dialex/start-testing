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

> Apple shipped the first version of Hypercard with about 500 known bugs in it, yet the product was a smashing success. The Hypercard QA team chose the right bugs to ship with. They also chose the right features.
>
> — [James Bach](http://www.satisfice.com/articles/gooden2.pdf)

Even though you cannot guarantee quality, you can do your best effort to pursuit it. Thus the **purpose of testing** is to measure and maximise quality delivered, while minimising risk to an acceptable level. The more we test, the more we know about our products. With that knowledge, teams can make informed decisions on what to do with the product.

### Testing is...

#### 🔎 Investigation

**Testing uncovers information that enables better decisions.**

- Noticing what everyone looks but no one sees.
- Looking for what is inconsistent or counterintuitive.
- Finding problems before they happen or become critical.
- Providing information that improves team's decisions.
- Gathering examples or patterns before reporting a bug.
- Chasing some pattern which might be elusive or hard to understand.
- Going beyond optimism and actually trying it.

#### ⛺️ Exploration

**Testing uses creativity to discover assumptions and unexpected behaviours.**

- Using the product like a well-behaved user would.
- Abusing the product like a ill-intentioned user would.
- Examining different aspects of the product to prevent surprises.
- Identifying the product's subtleties and extremities.
- Studying the product beyond the formal requirements.
- Using questions to validate assumptions and prompt new scenarios.
- Exploring products imaginatively to find unexpected behaviours.

#### 🤝 Empathy

**Testing wears multiple hats to understand the different stakeholders.**

- Defining personas for the product's stakeholders.
- Applying different perspectives to the same situation.
- Identifying your team's biases and assumptions.
- Speaking with different stakeholders to detect misunderstandings and misalignments.
- Showing the client the gap between what they want and what the users want.
- Thinking critically about features in order to evaluate their true value.
- Negotiating with the client a balance between "good", "cheap" and "pretty".
- Striving to deliver a reliable product that can be used with confidence.

#### 💬 Communication

**Testing democratises information and aids stakeholders talking to each other.**

- Combining scattered data into relevant and accessible information.
- Sharing just the right information, at the right time, using the right format.
- Reporting bugs in a way that developers can fix them and clients prioritise them.
- Communicating clearly and helping others do the same, using questions and examples.
- Keeping discussions visual and people engaged and feeling heard.
- Using your "helicopter view" to onboard people and "flying down" to details when needed.
- Maintaining documentation and training users on how to use the product.

### Testing is not...

#### ❌ Checking

> When you check, you confirm what you already know. When you test, you search for new information.
>
> — [Connor Roberts](http://pixelgrill.com/what-is-testing/)

More on testing vs checking: http://www.satisfice.com/blog/archives/856

Providing information that improves team's decisions

A computer cannot currently explore in the same way as a human being.




#### 🤖 Testing Automation

> Much of what we find as testers comes off-script and high-value unknowns are found by letting humans do what humans do best - thinking creatively!
>
> — [Connor Roberts](http://pixelgrill.com/what-is-testing/)

Testing is about using and creating tools to support your work, not trying to get them to replace you. Testing as an exploratory, intellectual activity, cannot be replaced by automated checks. **Automation is a tool that frees us from repetitive monotonous tasks**; a means to save time and invest it in using our brains towards our testing goal.

From the previous section you learned that words matter. That's why we should talk about ["Automation in Testing"](https://automationintesting.com/about/) and not "Test Automation". Remember: your product will be used by humans, like you. If only bots "test" your product, what kind of product will you deliver?

#### ❌ Quality Assurance

> There is a powerful alternative to the orthodox, expensive, and boring methodologies that aim at the best possible quality: (...) the discipline of good enough software development.
>
> — [James Bach](http://www.satisfice.com/articles/gooden2.pdf)

**Quality Assurance (QA)**: Ah, yes. The most abused title/phrase in the testing world... No one person does this, and anyone who has a title "QA" is fooling themselves. "The quality assurance role in the company resides with the management and the CEO (the principal quality officer in the company), since it was they — and certainly not the testers — who had the authority to make decisions about quality."

More on the difference between Testing and QA: http://www.developsense.com/blog/2010/05/testers-get-out-of-the-quality-assurance-business

### To summarise it

Testing includes many activities.

- Identify risks and explore the product to discover if those risks are real and a threat
- Feedback loop: provides information that has been uncovered or confirms if expectations on how the product should work are met
- Exploring the product or executing tests to discover information
- Give feedback to the team and stakeholders, for them to make an informed decision about the next steps to take regarding the product.
- Challenge team assumptions of what the product is and should be.
- Facilitate collaboration and communication between team members.
- Help your team make an informed opinion about the perceived quality of the products and features that they own

## Teachers

- [MoT's The Dojo](https://dojo.ministryoftesting.com/)

## Sources

- [41 Definitions of Software Testing](https://chroniclesoftesting.blogspot.pt/2017/11/41-definitions-of-software-testing.html)
- [The Anatomy of a Definition of Testing](https://qahiccupps.blogspot.pt/2016/11/the-anatomy-of-definition-of-testing.html)
- [Testing Terminology](http://pixelgrill.com/testing-terminology/)
- [The Challenge of "Good Enough" Software](http://www.satisfice.com/articles/gooden2.pdf)
- [99 Second Introduction to Testing](https://dojo.ministryoftesting.com/lessons/99-second-introduction-to-testing)
- [Testing is…](http://www.developsense.com/blog/2014/10/testing-is/)
- [So, What Is Software Testing?](https://dojo.ministryoftesting.com/dojo/lessons/so-what-is-software-testing)
- [What is the main purpose of our testing?](https://testingfromthehip.wordpress.com/2016/06/14/what-is-the-main-purpose-of-our-testing/)
- [Automation in Testing](https://automationintesting.com/about/)
