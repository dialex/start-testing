# Tester's responsibilities

> **tl;dr** To master the necessary skills to fulfil the [purpose of testing](/concepts/testing-purpose.md).

## Theory

Your responsibility as a tester is to fulfil the [purpose of testing](/concepts/testing-purpose.md).

That means you will be performing a [diverse set of activities](/concepts/what-testing-is.md), which include:

- Clarify [requirements](/concepts/requirements.md) between stakeholders and developers;
- Elaborate a [test strategy](/toolbox/test-strategy.md) for your product;
- Advocate the right [development methodology](/toolbox/dev-methodologies.md) for your team;
- Collect and develop [tools and techniques](/toolbox/tester-tools.md) to support your testing;
- Choose which [test types](/types/index.md) bring the most value at a given time;
- Adapt your [role](/roles/index.md) to the current team's needs.

While you do all that, be aware and [avoid the common pitfalls](/concepts/what-testing-is-not.md).

## Practice

> We're extensions to the senses of our stakeholders. We help the team sense things that they might not be able to sense on their own, due to their limited time and the mindset required to do their job.
>
> — [Michael Bolton](http://www.developsense.com/blog/2010/05/testers-get-out-of-the-quality-assurance-business/)
>
> If you feel that your value is not appreciated or you can be easily replaced, then shame on you. Think to yourself: am I doing all I can to help my team succeed? Does my team value my contributions?
>
> — [John Andrews](https://testingfromthehip.wordpress.com/2016/01/08/am-i-really-a-valuable-member-of-my-team/)

If you want an (almost) exhaustive list of responsibilities and activities, this [link](https://dojo.ministryoftesting.com/dojo/lessons/what-do-software-testers-do-version-0-1) is for you.

### 🐞 Bug catcher

> The tester does not "break the product". The tester finds a product that is already broken.
>
> — ["The life of one man"](https://thelifeofoneman.com/the-role-of-the-tester)

Finding bugs — probably the most widely know mission of a tester. Why? It is the job of the tester to inform the stakeholders about anything that threatens the value of the product. To ensure the core functionality still work after adding new features. To ensure the critical issues are detected before the enhancement opportunities. To ensure the team is aware of the known issues and their risk (probability + impact).

Issues that slow down testing are terribly important, because they give bugs the opportunity to hide for longer. So report not only _bugs_ in the product but also _issues_ that slow down testing.

Keep in mind that the goal of a tester is not finding issues (per se). If that was the case you would become a perfectionist, someone that raises an excessive number of low-value issues.

Your _ultimate goal_ should be pursuing quality and keeping it at a high level. Using that mindset, finding issues becomes just a consequence of that pursuit. And naturally you will focus on issues that threat quality.

### 👥 Teammate

Part of your role is keeping these two groups aligned. First, you need to align yourself with them. More about stakeholders when you get to [requirements](/concepts/requirements.md).

- **Development**: Some developers think that all testers do is question their work and expose their flaws. On the contrary, one of the tester's goal is to help developers look good (by finding issues early) and save them debugging time (by investigating themselves).
- **Business**: Set expectations, explain that software development is not a precise number on an Excel sheet or Gantt chart. Provide the information they need to make informed decisions, and then let them make the decisions. The only person who should be signing off the product is its owner.

You are often the bearer of bad news. Own it and deliver the information with compassion and humility. Attempt to fix the bad news before reporting them and you might end up with good news.

Strive to earn the respect of your team. As a tester you need to know the product like it's the back of your hand. Do your due diligence to become a reliable and knowledgeable source of information to the rest of the team.

### ❤️ (User) Friend

Developers focus on code and functionality, while managers focus on business growth and profit. Besides these groups, there are two more that would appreciate some love from you:

- **Support**: The bugs waiting to be fixed become a burden for the customer team or the customer support team. This group will appreciate if you tell what is currently buggy and whether there is a workaround.
- **End user**: Often a feature works but the user experience is not taken into account. Ask yourself what type of emotions you would feel when using the product. Be the user's voice and "complain" to your team so that they don't have to.

Share some of that love with your team too. Seek a joyful and friendly environment in your team. Celebrate success and keep a journal of small victories or praises.

### 🔦 Guiding light

> Half my day is facilitating conversations between stakeholders and attempting to understand what each person is expecting from a release. The goal is get the release into a place where all stakeholders' expectations are met.
>
> If this is not possible I warn the stakeholder that this will require new timelines and I provide data to demonstrate why and how.
>
> — [Phillipe Bojorquez](https://club.ministryoftesting.com/t/what-do-testers-do-on-a-daily-basis/12687/2)

James Bach compares a tester to the front lights of a car. The analogy aims to explain that your role is to _illuminate_ what is unknown and ahead of the team. You do not control the system, instead you provide input for others to act. You are not the _driver_ (Product Owner), but what your light uncovers surely influences the driver.

Testers attempt to forecast multiple scenarios that might hurt the team, so that it can prepare in advance and reduce the risk. However, it's impossible to think about every trouble ahead of time. It's part of your role to keep gathering information along the way, so that your team can react and make better decisions.

Your (business) stakeholders will not always know what they want. Sometimes they are transparent about it and reach to you for advice, e.g. "What are your thoughts on X? How should we do Y?". Other times you must observe them carefully to notice their hesitation or their fragile/biased reasoning. That's a silent call for your help.

Even though you don't own the product, you can give them your advice and support it with data (your experience, domain knowledge, market benchmarks, competitors, etc.). This strengthens your relationship because you show that you care without being prescriptive.

### 🔎 Inspector

> Your testing should provide enough information for the team to make its own perceived view of quality (…) to help decide things like: when to release, when to bug fix, when to scale back, when to move on, etc.
>
> — [John Andrews](https://testingfromthehip.wordpress.com/2016/06/14/what-is-the-main-purpose-of-our-testing/)

One of your responsibilities is to uncover information and deliver it. To do so, there are many questions a tester could ask. [Mnemonics](/toolbox/mnemonics.md) are a clever way to avoid forgetting them. If you can only memorise four questions, these are the ones:

1. **What are we building?** _What features? What are the components? How do they integrate?_
2. **For who?** _What value are they expecting? How will they use it? How can they get help?_
3. **What could go wrong?** _What's the impact? Who would suffer? How long would it take to fix it?_
4. **How would we find out?** _Can we detect a failure? Can we prevent or mitigate it?_

Once you have gathered that information, share it with your team and other relevant stakeholders. Be mindful about your audience — deliver just the right amount of data using the most effective medium for them (e.g. using diagrams for non-technical people).

Get the team to sit down and agree on your project's goal. In the future, if anyone starts losing track revisit the agreed goal. After all, one of your duties is to verify if what is being built is as expected.

### 🏕️ Scout

> Always leave the campsite better than you found it.
>
> — [The boy scout rule](http://programmer.97things.oreilly.com/wiki/index.php/The_Boy_Scout_Rule)

Besides the code, the team and the processes can also benefit from your testing. Work closely with your team to identify bottlenecks and keep on improving. Help your colleagues maintain a high velocity by recommending tools and practices that expedite your work. Use [retrospectives](/roles/agile-team-member.md) to share your concerns and suggestions.

Working as a team, you achieve more, faster and with less pain.

### 🍎 Thinker

Testers add value to teams by contributing with different perspectives. If you always use the same thinking, you get biased and you might miss important aspects. Next time, try to combine different approaches:

- **Technical thinking**: usage of _experience_ to select the right tools, techniques and technologies. This is useful to minimise the effort of [testing](/concepts/testing-purpose.md) and make development more efficient.
- **Creative thinking**: usage of _creativity_ to analyse the same context using a different perspective. This is useful to uncover new information that no one thought about before (aka. _unknown unknowns_).
- **Critical thinking**: usage of _scepticism_ to question what is known or assumed to be the truth. This is useful to detect assumptions or biases and review the "why" and "how" of a requirement.
- **Practical thinking**: usage of _visualisation_ to draw the ideas under discussion or ask for examples. This is useful to predict how an idea will be done and remove any obstacles to its implementation.
- **Black box thinking**: usage of _ignorance_ to skip implementation details. This is useful to focus on behaviour and end-to-end flow, impersonating a user.

### 📚 Learner

Skilled testers come in all "flavours". Some are highly technical and will highlight technical issues you haven't noticed. Some are skilled at seeing the app from the users' perspective and highlight problems that will cost you customers. Some will let you know if you are breaking any regulation or standard.

A good tester should be meticulous, curious, creative, determined and mindful of biases. A greater tester, nurtures the [student mindset](/next/index.md) and is humble enough to be always learning.

## Sources

- [Four and more questions](http://www.developsense.com/blog/2018/03/four-and-more-questions/)
- [Why you might need testers](http://www.investigatingsoftware.co.uk/2017/04/why-you-might-need-testers.html)
- [Am I really a valuable member of my team?](https://testingfromthehip.wordpress.com/2016/01/08/am-i-really-a-valuable-member-of-my-team/)
- [The role of the tester](https://thelifeofoneman.com/the-role-of-the-tester)
- [Ten Misconceptions About Software Testing That Non-Testers Share](https://dojo.ministryoftesting.com/dojo/lessons/ten-misconceptions-about-software-testing-that-non-testers-share)
- [What's the difference between a good test and a bad test?](https://dojo.ministryoftesting.com/dojo/lessons/designing-tests-what-s-the-difference-between-a-good-test-and-a-bad-test)
- [How To Think Like a Software Tester](https://thelifeofoneman.com/think-like-software-tester)
- [What testers find](http://www.satisfice.com/blog/archives/572)
- [Testers: Get Out of the Quality Assurance Business](http://www.developsense.com/blog/2010/05/testers-get-out-of-the-quality-assurance-business/)
- [99 Second Introduction to Lateral and Critical Thinking](https://dojo.ministryoftesting.com/dojo/lessons/99-second-introduction-to-lateral-and-critical-thinking)
- [Modern Testing Principles](https://dojo.ministryoftesting.com/dojo/lessons/modern-testing-principles)
- [What do software testers do](https://dojo.ministryoftesting.com/dojo/lessons/what-do-software-testers-do-version-0-1)
