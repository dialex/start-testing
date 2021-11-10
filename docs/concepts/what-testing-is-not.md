# Testing is not…

## ☑️ Checking

> When you check, you confirm what you already know. When you test, you search for new information.
>
> — [Connor Roberts](http://pixelgrill.com/what-is-testing/)

As you should know by now, testing encompasses many activities — checking is just one of those.

According to [Rapid Software Testing](http://www.satisfice.com/blog/archives/856), checking is "the process of making evaluations by applying algorithmic decisions to observations of a product". Algorithmic meaning objective and repeatable. That's why checking is an activity that can be performed by a tool instead of a human.

However, testing is a cognitive work that can only be performed by a human, optionally supported by tools.

## 🤖 Automation

> Much of what we find as testers comes off-script and high-value unknowns are found by letting humans do what humans do best - thinking creatively!
>
> — [Connor Roberts](http://pixelgrill.com/what-is-testing/)

Tools can be used to support many testing activities — automating checks is just one of those.

Testing is about using and creating tools to support your work, not trying to get them to replace you. Testing as an exploratory, intellectual activity, cannot be replaced by automated checks. No automation will ever replace the tester reaction of "hmm, that's odd".

Automation is a tool that frees us from repetitive monotonous tasks; a means to save time and invest it in using our brains towards our testing goal. And since words matter, we prefer to say ["Automation in Testing"](https://automationintesting.com/about/) than "Test Automation".

Remember: your product will be used by humans, like you. If only bots "test" your product, what kind of product will you deliver?

## 💥 Breaking software

> Somehow, code that worked just fine for the developer doesn't work for the tester. The reason is that the tester did something the developer didn't expect.
>
> — [Kate Paulk](https://dojo.ministryoftesting.com/dojo/lessons/ten-misconceptions-about-software-testing-that-non-testers-share)

Testing is about exploring and discovering new information. Sometimes, testing attacks the software to check how it stands its ground (e.g. Penetration Testing). But most of the times, testers just search places that are broken and report them. They might not look broken, they might look unexpected or unpleasant to the user.

It's like holding an object in your hand and, gently, look for cracks. In dysfunctional teams, testing can be blamed for not finding bugs or finding too many issues. Testing is just "the messenger", so focus on bringing reliable and relevant "news" to your team.

## 🐵 Straightforward

> Testing is often thought of as something anyone can do (…) It takes real skill to do these things well and in a systematic way.
>
> — [Claire Reckless](https://dojo.ministryoftesting.com/dojo/lessons/so-what-is-software-testing)

Anyone can "play around" with a product. But testers explore it in a structured way. They use their intuition to look for problematic areas and their empathy to think/feel like a user. They report their findings objectively, together with recommendations.

Anyone, even bots, can perform an action and compare the actual result with an expectation. But testers design scenarios to maximise coverage while minimising execution time. Some will be automated, and for those they will use/create tools and frameworks.

> If you have skilled testers with the freedom and knowledge to investigate beyond test scripts, you will find your testers doing (…) a number of things to add value to your software, that an untrained person wouldn't know are even possible.
>
> — [Kate Paulk](https://dojo.ministryoftesting.com/dojo/lessons/ten-misconceptions-about-software-testing-that-non-testers-share)

## 💯 Quality Assurance (QA)

> Assuring quality requires control and when there are so many variables in play, control comes down to everyone doing their best work to make the software as good as they can get it.
>
> — [Kate Paulk](https://dojo.ministryoftesting.com/dojo/lessons/ten-misconceptions-about-software-testing-that-non-testers-share)

Quality is a team effort. If something fails in production it's because the whole team failed: maybe the PO had unclear requirements, the developer forgot to consider an extra scenario, the DevOps deployed at the wrong time and the tester did not explore enough to spot the issue.

The people who test are as human as the people who code, and all humans make mistakes. Testing is neither invincible nor a gatekeeper. Even with medical software, where lives are at stake, mistakes happen.

> There is a powerful alternative to the orthodox, expensive, and boring methodologies that aim at the best possible quality: (…) the discipline of good enough software development.
>
> — [James Bach](http://www.satisfice.com/articles/gooden2.pdf)

Testing can inform if a product has _enough quality_ for release, or if the user will _perceive_ the product as stable and useful. Otherwise, you risk never finishing your testing.

## ⏳ Finite

> Does my (current) testing concentrate on making the product better or perfect? Be smart with your priorities: work on making the product better, not perfect.
>
> — [Lina Zubyte](https://letmetrysoftwaretesting.wordpress.com/2018/01/22/testing-to-make-product-better-vs-perfect/)

Nothing can be tested completely. With an unlimited budget and an unlimited deadline (e.g. billions of years) it would be possible to check every combination of inputs that would lead to every bug of a particular software. But that's impossible.

Part of the skill of being a tester is deciding what to test. You will have to compromise and prioritise. That will be your [test strategy](/toolbox/test-strategy.md) to achieve ~~perfect~~ good enough software. And when do you stop testing?

> Ultimately, testing is _finished_ when management has enough information to enable them to make the decision whether or not to release the product.
>
> — [Claire Reckless](https://dojo.ministryoftesting.com/dojo/lessons/so-what-is-software-testing)

## Sources

- [The Challenge of "Good Enough" Software](http://www.satisfice.com/articles/gooden2.pdf)
- [Ten Misconceptions About Software Testing](https://dojo.ministryoftesting.com/dojo/lessons/ten-misconceptions-about-software-testing-that-non-testers-share)
- [Testers: Get Out of the Quality Assurance Business](http://www.developsense.com/blog/2010/05/testers-get-out-of-the-quality-assurance-business)
- [Pressing the Green Button](http://www.developsense.com/blog/2018/12/pressing-the-green-button/)
- ["Testers just Validate Acceptance Criteria"](https://medium.com/@blakenorrish/testers-just-validate-acceptance-criteria-4c25566b591e)
