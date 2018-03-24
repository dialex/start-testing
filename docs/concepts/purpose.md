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
  - ✔ Fosters excellence and pride in workmanship.
  - ✘ Can become a cloak for perfectionists.
- Manufacturing view: *Quality is conformance to specifications.*
  - ✔ Fits the mindset of highly regulated contexts, e.g. health industry.
  - ✘ Can produce products that satisfy no one, besides the specification's author.
- Customer view: *Quality is whatever satisfies the customer.*
  - ✔ Increases customer loyalty.
  - ✘ Can lead to eternal chasing of trends and competitors.

Quality is a moving target — it adapts to its changing context (e.g. time, priorities, trends). Stakeholders will form a *perception* of the current quality based on their values, knowledge, skills and past experiences. Given the diversity of stakeholders, each will have a different perception of quality. That's one of the reasons why you cannot _assure quality_.

> Apple shipped the first version of Hypercard with about 500 known bugs in it, yet the product was a smashing success. The Hypercard QA team chose the right bugs to ship with. They also chose the right features.
>
> — [James Bach](http://www.satisfice.com/articles/gooden2.pdf)

Even though you cannot guarantee quality, you can do your best effort to pursuit it. Thus the **purpose of testing** is to measure and maximise quality delivered, while minimising risk to an acceptable level. The more we test, the more we know about our products. With that knowledge, teams can make informed decisions on how to improve the product.

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

#### ☑️ Checking

> When you check, you confirm what you already know. When you test, you search for new information.
>
> — [Connor Roberts](http://pixelgrill.com/what-is-testing/)

As you should know by now, testing encompasses many activities — checking is just one of those.

According to [Rapid Software Testing](http://www.satisfice.com/blog/archives/856), checking is "the process of making evaluations by applying algorithmic decisions to observations of a product". Algorithmic meaning objective and repeatable. That's why checking is an activity that can be performed by a tool instead of a human.

However, testing is a cognitive work that can only be performed by a human, optionally supported by tools.

#### 🤖 Automation

> Much of what we find as testers comes off-script and high-value unknowns are found by letting humans do what humans do best - thinking creatively!
>
> — [Connor Roberts](http://pixelgrill.com/what-is-testing/)

Tools can be used to support many testing activities — automating checks is just one of those.

Testing is about using and creating tools to support your work, not trying to get them to replace you. Testing as an exploratory, intellectual activity, cannot be replaced by automated checks. No automation will ever replace the tester reaction of "hmm, that's odd".

Automation is a tool that frees us from repetitive monotonous tasks; a means to save time and invest it in using our brains towards our testing goal. And since words matter, we say more ["Automation in Testing"](https://automationintesting.com/about/) and less "Test Automation".

Remember: your product will be used by humans, like you. If only bots "test" your product, what kind of product will you deliver? And who tests the tests?

#### 💥 Breaking software

> Somehow, code that worked just fine for the developer doesn't work for the tester. The reason is that the tester did something the developer didn't expect.
>
> — [Kate Paulk](https://dojo.ministryoftesting.com/dojo/lessons/ten-misconceptions-about-software-testing-that-non-testers-share)

Testing is about exploring and discovering new information. Sometimes, testing attacks the software to check how it stands its ground (e.g. Penetration Testing). But most of the times, testers just search places that are broken and report them. They might not look broken, they might look unexpected or unpleasant to the user.

It's like holding an object in your hand and, gently, look for cracks. In dysfunctional teams, testing can be blamed for not finding bugs or finding too many issues. Testing is just "the messenger", so focus on bringing reliable and relevant "news" to your team.

#### ❌ Straightforward

> Testing is often thought of as something anyone can do (...) It takes real skill to do these things well and in a systematic way.
>
> — [Claire Reckless](https://dojo.ministryoftesting.com/dojo/lessons/so-what-is-software-testing)

Anyone can follow instructions but testing takes skill and training.

> If you have skilled, trained testers with the freedom and knowledge to investigate past detailed instructions, you will find your testers doing things like searching the Internet to discover the obscure server setting that causes your software to break for some users. Or building load tests to find those nagging performance issues before you release. Or doing any number of other things to add value to your software that an untrained, unskilled person wouldn't know are even possible.

Knowledge about the context let's your testing go deeper (detail).
Knowledge about the testing practices and tools let's you go wider (areas/disciplines).

> To explore an application at a deeper level could require knowing something about the architecture, the technologies used, as well as the psychological aspect of thinking like different types of user.

> Testers are not telepathic. We try, but even at our best, we can't say for certain what the customer actually wanted or needed. This is why we try our best to test what matters -  we do risk assessments and try to make sure the core functionality of a piece of software is working to the best of our knowledge and ability.

If you have skilled, trained testers with the freedom and knowledge to investigate past detailed instructions, you will find your testers doing things like searching the Internet to discover the obscure server setting that causes your software to break for some users. Or building load tests to find those nagging performance issues before you release. Or doing any number of other things to add value to your software that an untrained, unskilled person wouldn't know are even possible.

Exploration is not simple. Anyone can "play around" with your product. Testers do it in a structured way. They use their intuition to look for problematic areas, their empathy to think and feel like a user. They report their findings clearly, together with > recommendations.

Checking is not simple. Anyone, even bots, can perform an action and compare the actual result with an expectation. Testers design scenarios to maximise coverage while minimising execution time. Some will be automated and for those they will use tools, frameworks, technologies, and design patterns.

#### 💯 Quality Assurance

> Assuring quality requires control and when there are so many variables in play, control comes down to everyone doing their best work to make the software as good as they can get it.
>
> — [Kate Paulk](https://dojo.ministryoftesting.com/dojo/lessons/ten-misconceptions-about-software-testing-that-non-testers-share)

Quality is a team effort. If something fails in production it's because the whole team failed: maybe the PO had unclear requirements, the developer forgot to consider an extra scenario, the DevOps deployed at the wrong time and the tester did not explore enough to spot the issue.

The people who test are as human as the people who code, and all humans make mistakes. Testing is neither invincible nor a gatekeeper. Even with medical software, where lives are at stake, mistakes happen.

> There is a powerful alternative to the orthodox, expensive, and boring methodologies that aim at the best possible quality: (...) the discipline of good enough software development.
>
> — [James Bach](http://www.satisfice.com/articles/gooden2.pdf)

Testing can inform if a product has _enough quality_ for release, or if the user will _perceive_ the product as stable and useful. Otherwise, you risk never finishing your testing.

#### ❌ Finite

> Does the product work as expected? Are there any areas which may cause trouble and were not thoroughly tested? Does my testing concentrate on making product better or perfect?
>
> — [Lina Zubyte](https://letmetrysoftwaretesting.wordpress.com/2018/01/22/testing-to-make-product-better-vs-perfect/)

> As we cannot test everything, there may be scenarios we have not tried where issues occur.

> Nothing Can Be Tested Completely. I'm sure that with an unlimited budget and an unlimited time frame (in the order of trillions of years) it would be possible to find every actual bug in a piece of software. It's silly to think testers should be able to catch everything that's wrong with a program. Thousands of computers, before you've tested every possible combination.

> you cannot possibly test every single thing there is to test for a given application. To test every combination, or action a user might take, or environmental variation, or possible data value, or path through the code, or variable, is unrealistic. Ultimately, testing is ‘finished’ when management has enough information to enable them to make the decision whether or not to release the product.

> Part of the skill of being a tester is making the decisions on what to test.  Understanding the implications of not testing the other things, and any associated risks with decisions to exclude some or all of a thing which as a low risk, from testing.

> Sometimes we are wasting our energy, effort and even nerves with bugs which are for “polishing to perfection” rather than making the product better. Think for a moment: what is the main purpose of the product? Sometimes you have to let go of the minor bugs – there are more important features to test/improve. Be smart with your priorities: work on making the product better, not perfect.






Bach's good enough.

### To summarise it

<!-- Testing includes many activities.

- Identify risks and explore the product to discover if those risks are real and a threat
- Feedback loop: provides information that has been uncovered or confirms if expectations on how the product should work are met
- Exploring the product or executing tests to discover information
- Give feedback to the team and stakeholders, for them to make an informed decision about the next steps to take regarding the product.
- Challenge team assumptions of what the product is and should be.
- Facilitate collaboration and communication between team members.
- Help your team make an informed opinion about the perceived quality of the products and features that they own -->

## Teachers

- [MoT's The Dojo](https://dojo.ministryoftesting.com/)
- [Rapid Software Testing](http://www.satisfice.com/testmethod.shtml)

## Sources

- [Quality is a journey – but do you know your destination?](https://mavericktester.com/2018/03/14/quality-engineering/)
- [41 Definitions of Software Testing](https://chroniclesoftesting.blogspot.pt/2017/11/41-definitions-of-software-testing.html)
- [The Anatomy of a Definition of Testing](https://qahiccupps.blogspot.pt/2016/11/the-anatomy-of-definition-of-testing.html)
- [Testing Terminology](http://pixelgrill.com/testing-terminology/)
- [99 Second Introduction to Testing](https://dojo.ministryoftesting.com/lessons/99-second-introduction-to-testing)
- [Testing is...](http://www.developsense.com/blog/2014/10/testing-is/)
- [So, What Is Software Testing?](https://dojo.ministryoftesting.com/dojo/lessons/so-what-is-software-testing)
- [What is the main purpose of our testing?](https://testingfromthehip.wordpress.com/2016/06/14/what-is-the-main-purpose-of-our-testing/)
- [Testing and Checking Refined](http://www.satisfice.com/blog/archives/856)
- [Ten Misconceptions About Software Testing](https://dojo.ministryoftesting.com/dojo/lessons/ten-misconceptions-about-software-testing-that-non-testers-share)
- [Testers: Get Out of the Quality Assurance Business](http://www.developsense.com/blog/2010/05/testers-get-out-of-the-quality-assurance-business)
