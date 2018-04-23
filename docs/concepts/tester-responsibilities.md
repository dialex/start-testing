# Tester's responsibilities

> **tl;dr** To perform the necessary activities to fulfil the [purpose of testing](/concepts/testing-purpose.md).

## Theory

Your responsibility as a tester is to fulfil the [purpose of testing](/concepts/testing-purpose.md).

That means you will be performing a [diverse set of activities](/concepts/what-testing-is.md), which include:

- Clarify [requirements](/concepts/requirements.md) between stakeholders and developers;
- Elaborate a [test strategy]() for your product;
- Advocate the right [test methodology]() for your team;
- Collect and develop [tools and techniques]() to support your testing;
- Choose which [test types]() bring the most value at a given time;
- Adapt your [role]() to the current team's needs.

While you do all that, be aware and [avoid the common pitfalls](/concepts/what-testing-is-not.md).

## Practice

>  We're extensions to the senses of our stakeholders. We help the team sense things that they might not be able to sense on their own, due to their limited time and the mindset required to do their job.
>
> — [Michael Bolton](http://www.developsense.com/blog/2010/05/testers-get-out-of-the-quality-assurance-business/)

> If you feel that your value is not appreciated or you can be easily replaced, then shame on you. Think to yourself: am I doing all I can to help my team succeed? Does my team value my contributions?
>
> — [John Andrews](https://testingfromthehip.wordpress.com/2016/01/08/am-i-really-a-valuable-member-of-my-team/)

If you want an (almost) exhaustive list of reponsibilities and activities, this [link](https://dojo.ministryoftesting.com/dojo/lessons/what-do-software-testers-do-version-0-1) is for you.

### 🐞 Bug detector

> The tester does not “break the product”. The tester finds a product that is already broken.
>
> — ["The life of one man"](https://thelifeofoneman.com/the-role-of-the-tester)

Finding bugs — probably the most widely know mission of a tester. Why? It is the job of the tester to inform the stakeholders about anything that threatens the value of the product. To ensure the core functionality still work after adding new features. To ensure the critical issues are detected before the enhancement opportunities. To ensure the team is aware of the known issues and their risk (probability + impact).

Issues that slow down testing are terribly important, because they give bugs the opportunity to hide for longer. So report not only *bugs* in the product but also *issues* that slow down testing.

Keep in mind that the ultimate goal of a tester is not finding issues (per se). If that was the case you would become a perfectionist, someone that raises an excessive number of low-value issues.

Your _ultimate goal_ should be pursuing quality and keeping it at a high level. Using that mindset, finding issues becomes just a consequence of that pursuit. And naturally you will focus on issues that threat quality.

### 👥 Teammate

Part of your role is keeping these two groups aligned. First, you need to align yourself with them. More about stakeholders when you get to [requirements](/concepts/requirements.md).

- **Development**: Some developers think that all testers do is question their work and expose their flaws. On the contrary, one of the tester's goal is to help developers look good (by finding issues early) and save them debugging time (by investigating themselves).
- **Business**: Set expectations, explaing that software development is not a precise number on an Excel sheet or Gantt chart. Provide the information they need to make informed decisions, and then let them make the decisions. The only person who should be signing off the product is its owner.

You are often the bearer of bad news. Own it and deliver the information with compassion and humility. Attempt to fix the bad news before reporting them and you might end up with good news.

Strive to earn the respect of your team. As a tester you need to know the product like it's the back of your hand. That way you build credibility for yourself and save everyone else's time.

### ❤️ (User) Friend

Developers focus on code and functionality, while managers focus on business growth and profit. In the middle you have these two groups, who could definitely use some love from you.

- **Support**: The bugs waiting to be fixed become a burden for the customer team or the customer support team. This group will appreciate if you tell what is currently buggy and wether there is a workaround.
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

Your (business) stakeholders will not always know what they want. Sometimes they are transparent about it and reach to you for advice, e.g. "What are your thoughts on X? How should we do Y?". Other times you must observe them carefuly to notice their hesitation or their fragile/biased reasoning. That's a silent call for your help.

Even though you don't own the product, you can give them your advice and support it with data (your experience, domain knowledge, market benchmarks, competitors, etc.). This strengthens your relationship because you show that you care without being prescriptive.

### 🔎 Inspector

One of your responsibilities is to uncover information and deliver it. To do so, there are many questions a tester could ask. [Mnemonics](/tools/mnemonics.md) are a clever way to avoid forgetting them. If you can only memorise four questions, these are the ones:

1. **What are we building?** *What features? What are the components? How do they integrate?* 
2. **For who?** *What value are they expecting? How will they use it? How can they get help?*
3. **What could go wrong?** *What's the impact? Who would suffer? How long would it take to fix it?*
4. **How would we find out?** *Can we detect a failure? Can we prevent or mitigate it?*

It is your job to tell management what you feel about the product.

Once you have gathered that information, share it with your team and other relevant stakeholders. Be mindful about your audience — deliver just the right amount of data using the most effective medium for them (e.g. using diagrams for non-technical people).

Get the team to sit down and agree on your project's goal. In the future, if anyone starts losing track revisit the agreed goal. After all, one of your duties is to verify if what is being built is as expected.

### 🏕️ Scout

> Always leave the campground better than you found it.
>
> — [The boy scout rule](http://programmer.97things.oreilly.com/wiki/index.php/The_Boy_Scout_Rule)

Besides the code, the team and the processes can also benefit from your testing. Work closely with your team to identify bottlenecks and keep on improving. Help your colleagues maintain a high velocity by recommending tools and practices that expedite your work. Use [retrospectives](/roles/agile-team-member.md) to share your concerns and suggestions.


### 🍎 Thinker

Testers add value to teams by contributing with different perspectives. If you always use the same thinking, you get biased and you might miss important aspects. Next time, try to combine different approaches:

- **Technical thinking**: usage of *experience* to select the right tools, techniques and technologies. This is useful to minimise the effort of [testing](/concepts/testing-purpose.md) and make development more efficient.
- **Creative thinking**: usage of _creativity_ to analyse the same context using a different perspective. This is useful to uncover new information that no one thought about before (aka. *unknown unknowns*).
- **Critical thinking**: usage of _scepticism_ to question what is known or assumed to be the truth. This is useful to detect assumptions or biases and review the "why" and "how" of a requirement.
- **Practical thinking**: usage of _visualisation_ to draw the ideas under discussion or ask for examples. This is useful to predict how an idea will be done and remove any obstacles to its implementation.
- **Blackbox thinking**: usage of _ignorance_ to skip implementation details. This is useful to focus on behaviour and end-to-end flow, impersonating a user.

## Sources

- [Four and more questions](http://www.developsense.com/blog/2018/03/four-and-more-questions/)
- [Am I really a valuable member of my team?](https://testingfromthehip.wordpress.com/2016/01/08/am-i-really-a-valuable-member-of-my-team/)
- [The role of the tester](https://thelifeofoneman.com/the-role-of-the-tester)
- [How To Think Like a Software Tester](https://thelifeofoneman.com/think-like-software-tester)
- [What testers find](http://www.satisfice.com/blog/archives/572)
- [Testers: Get Out of the Quality Assurance Business](http://www.developsense.com/blog/2010/05/testers-get-out-of-the-quality-assurance-business/)
- [99 Second Introduction to Lateral and Critical Thinking](https://dojo.ministryoftesting.com/dojo/lessons/99-second-introduction-to-lateral-and-critical-thinking)
- [What do software testers do](https://dojo.ministryoftesting.com/dojo/lessons/what-do-software-testers-do-version-0-1)

----------

When we have this sort of immediate feedback we learn quicker, we improve our game. When the feedback is about problems we don't even know might exist, that expands our knowledge letting us adapt before its painful to do so.

My son had his own plan, skill and will. He could have learned on his own. It probably would have taken longer and maybe been more painful or even dangerous. Working as a team, we achieved something, more than we could alone.

That's where skilled testers come in. Some of us are highly technical and will highlight technical issues or opportunities you haven't noticed. Some of us are skilled at seeing the app from the customers view point and highlighting problems that will cost you customers. Many of us do the above and much more. This could be letting you know if we are breaking the law. We often write tools that enable us to test more things – better. Testers can be useful for just pointing out the simple stuff like – we are developing for Red Hat Linux, but 60% of our users are on Windows, and 25% are on Apple Macs.

http://www.investigatingsoftware.co.uk/2017/04/why-you-might-need-testers.html

---------



> A team can never really know the quality of their products or how they will be perceived in the marketplace. They can know things like: the number of open defects, the missed requirements, the poorly written / thought out designs, or early feedback from demos. Our testing should be **helping to provide our teams with as much information as we can**, to make an informed opinion on their own perceived view of quality. This perception should **help teams decide** things like: when to release / not release, when to enhance, when to bug fix, when to scale back, when to move on, etc.

> Are you really helping your team make informed decisions? Are you testing the right things, at the right time? Are you a lighthouse, shining light so your teams boat can avoid obstacles and problems on its way to its destination? Let’s hope you are!

FROM: <https://testingfromthehip.wordpress.com/2016/06/14/what-is-the-main-purpose-of-our-testing/>

> Do your due diligence to become a reliable and knowledgeable source of information for the rest of the team.

> Testers that rely on only documenting tests and test results are at risk oversimplifying a job that requires much more than writing and executing test cases. They also risk creating the perception that testing is easy. This view can lead to problems around your status in a team and may even encourage the idea that you could be replaced by test automation. Documented Tests are a tool and they should be used wisely to solve a specific problem rather than a replacement for critical thinking and communication.

<https://dojo.ministryoftesting.com/lessons/what-do-tests-look-like>

> I want to discover as much useful information as possible to share with my team to help them be awesome. This information can tell me:
>
> - How a stakeholder(s) wants the product to work.
> - How it actually works.
> - How to come up with new test ideas.
> - Are there any bugs within the product.
>
> As a tester, it’s my responsibility to go forth and find that information; something that the very excellent EvilTester promotes regularly in his books and talks. This responsibility means that I have the freedom to create any type of test I want, but I need to ensure that what I create is revealing information that my team can use to succeed.

> It’s the testers job to ask questions, explore, and think critically about all of these things: Ideas, Requirements, Designs, Assumptions, Documentation, Infrastructure, Processes.
> It could result in something that could have turned into a bug later in the development process being caught much earlier.

<https://dojo.ministryoftesting.com/lessons/designing-tests-what-s-the-difference-between-a-good-test-and-a-bad-test>

Testing is a skill that requires: mindfulness (bias awareness), attention to detail, creativity, determination, constant learning

> Testers Don't Have Tech Skills
> 
> This idea is one that sets my teeth on edge. I've known some very good testers who couldn't code and didn't have particularly deep technical skills. I've also known some very good testers who could out-code every developer in their organization. Technical skills are not just about being able to code, and arguably include being able to reproduce an error that's difficult to trace and difficult to reproduce, being able to read or understand an error code, being able to set up the application under test with different configurations, being able to clearly explain both to a developer and to someone with no development experience just what the software is doing and why that behavior is a problem.
> 
> Being able to communicate your findings about the product, or reproduce that odd event, or find the places where the developer's assumptions don't match the customer expectations before the customer sees the software, these are the kinds of skills that matter. They're a lot harder to define and much harder to quantify than "can code as well as a developer."
>
> Probably the simplest way to describe this is that testers and developers have complementary skill sets with some overlap. Boosting the developer's ability to do tester-things takes time away from his primary activity. Boosting the tester's ability to do developer-things takes time away from her primary activity. Both are needed, and each supports the other.

https://dojo.ministryoftesting.com/dojo/lessons/ten-misconceptions-about-software-testing-that-non-testers-share