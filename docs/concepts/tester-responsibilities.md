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

Looking for an exhaustive list of all the typical responsibilites of a tester? Then check this [link](https://dojo.ministryoftesting.com/dojo/lessons/what-do-software-testers-do-version-0-1).

…

...

### Release

> Half my day is facilitating conversations between stakeholders and attempting to understand what each person is expecting from a release and to help get the release into a place where all stakeholders expectations are met.
>
> If this is not possible I warn the stakeholder that this will require new timelines and I provide data to demonstrate why and how.
>
> — [What do testers do on a daily basis?](https://club.ministryoftesting.com/t/what-do-testers-do-on-a-daily-basis/12687)

### Team velocity


> The rest of the time I help the team maintain a high velocity by suggestion tools and practices that expedite our work.
>
> — [What do testers do on a daily basis?](https://club.ministryoftesting.com/t/what-do-testers-do-on-a-daily-basis/12687)

Issues that slow down testing are terribly important, because they allow bugs the opportunity to hide for longer and deeper. So report not only *bugs* in the product, but *issues* that slow down testing.

### ❓ Search & Share

One of your responsibilities is to uncover information and deliver it to. To do so, there are many questions a tester could ask. [Mnemonics](/tools/mnemonics.md) are a clever way to avoid forgetting them. If you can only memorise four questions, these are the ones:

1. **What are we building?** *What features? What are the components? How do they integrate?* 
2. **For who?** *What value are they expecting? How will they use it? How can they get help?*
3. **What could go wrong?** *What's the impact? Who would suffer? How long would it take to fix it?*
4. **How would we find out?** *Can we detect a failure? Can we prevent or mitigate it?*


Once you have gathered that information, share it with your team and other relevant stakeholders. Be mindful about your audience — deliver just the right amount of data using the most effective medium for them (e.g. using diagrams for non-technical people).

### 👥 Team~~player~~ mate 

Part of your role is keeping these two groups aligned. First, you need to align yourself with them.

- **Development**: Some developers think that all testers do is question their work and expose their flaws. On the contrary, one of the tester's goal is to help developers look good (by finding issues early) and save them debugging time (by investigating themselves).
- **Business**: Set expectations, explaing that software development is not a precise number on an Excel sheet or Gantt chart. Provide the information they need to make informed decisions, and then let them make the decisions. The only person who should be signing off the product is its owner.



### 🍎 Think differently

One way testers add value to teams is by contributing with different perspectives. If you always use the same thinking, you get biased and you might miss important aspects. Next time, try to combine different approaches:

- **Technical thinking**: usage of *experience* to select the right tools, techniques and technologies. This is useful to minimise the effort of [testing](/concepts/testing-purpose.md) and make development more efficient.
- **Creative thinking**: usage of _creativity_ to analyse the same context using a different perspective. This is useful to uncover new information that no one thought about before (aka. *unknown unknowns*).
- **Critical thinking**: usage of _scepticism_ to question what is known or assumed to be the truth. This is useful to detect assumptions or biases and review the "why" and "how" of a requirement.
- **Practical thinking**: usage of _visualisation_ to draw the ideas under discussion or ask for examples. This is useful to predict how an idea will be done and remove any obstacles to its implementation.
- **Blackbox thinking**: usage of _ignorance_ to skip implementation details. This is useful to focus on behaviour and end-to-end flow, impersonating a user.

## Teachers

- [Michael Bolton](http://www.developsense.com/)

## Sources

- [Four and more questions](http://www.developsense.com/blog/2018/03/four-and-more-questions/)
- [Am I really a valuable member of my team?](https://testingfromthehip.wordpress.com/2016/01/08/am-i-really-a-valuable-member-of-my-team/)
- [How To Think Like a Software Tester](https://thelifeofoneman.com/think-like-software-tester)
- [99 Second Introduction to Lateral and Critical Thinking](https://dojo.ministryoftesting.com/dojo/lessons/99-second-introduction-to-lateral-and-critical-thinking)
- [What do software testers do](https://dojo.ministryoftesting.com/dojo/lessons/what-do-software-testers-do-version-0-1)
- [Testers: Get Out of the Quality Assurance Business](http://www.developsense.com/blog/2010/05/testers-get-out-of-the-quality-assurance-business/)

-------------

The light in the dark

Although we try to account for multiple scenarios that might come our way, It is impossible to think that there will be no trouble ahead. The tester's role is to find information along the journey so that the team is able make better decisions to reach the goal. As the tester, it is your responsibility to tell management what you feel about the project.

Verify what is being built is what has been asked

Your job is to clarify the mission, the goal. You get the team to sit down and agree with the mission objectives. Finally, if you find yourself losing track, remind yourself of your goal. This is what will keep you going. As a team member, it is one of your roles to verify if what is being built is correct. Imagine building a car without blueprints?

Find threats to the value of your product

One of our core missions - finding bugs that are important quickly. Why do this? It is the job of the tester to inform the stakeholders about anything that threatens the value of the system. They test that the core functionality still works before looking at the new functions. They test items of higher-impact before testing items of lower impact. The tester finds important problems soon and will make sure that the team knows about it.

Dealing with multiple stakeholders

- Developers - You make the programmer's job extremely clear by writing out clear acceptance criteria, clear test plans, and clear bug reports, as soon as possible. The tester needs to know the product like it's the back of their hand so you don't waste the time of the developers, your product manager, and other teams. When you know about the product, you will gain influence and credibility.
- Project Manager - The project manager needs to know your process, what you do, why you are doing it. The project manager is served by reporting the status of the testing, reporting problems fast. This information is important to the project manager as he the right to steer the project, and what you say will drive the decision.
- Technical Support -  The bugs that are still present in the system becomes a burden for the customer team or the technical support team. This group is served by alerting them of what parts of the platform maybe inhibited and if there is a workaround.
- Top management - Your role is to create reports in an extremely simple manner so that they are able to take actions into your findings. You may find that despite something has been “Ready for QA” when you start testing in the staging server it doesn't work. What could it be? Could it be that it works on local but it does not work in the server? Whatever case you may find, you must have solutions to your problems rather than being the bearer of bad news all the time.
- The end user - Deep inside you now that you serve the one true master, the user. There is an exhilarating effect that you have the responsibility to ensure that the product works as expected. If you so much as say you are not happy with a certain feature then what you say is taken seriously. What I've found is that most of the time, the functionality works but the User Experience is not taken into account. It is the tester's duty to tell the team that if the colour of a button is not consistent with the same type of button in a different part of the system. You may ask why should you care about the colour of a button? To me, finding inconsistencies is a major issue and detrimental to the usability of the product. Who wants to use an inconsistent platform?

More about stakeholders when you get to [requirements](/concepts/requirements.md).

Don't own quality

You are not the one sole responsible for the quality of the product. Sometimes, you may find yourself not having a say with how something should be implemented and that’s fine. It is important that you make your team feel empowered that they are doing the job their own way so as to preserve their creativity. The tester does not “break the product”, the tester finds a product that is already broken. You must work with the team to ensure that you keep on improving. If you find that in sprint retrospectives no one is making suggestions to improve the process, something is going terribly wrong. Be a quality fanatic, if something can be automated and would save 5 minutes a day, say it.

--------

- Testing is building credibility for yourself and your organisation, which serves you and which you are serving.

Strive to earn the respect and trust of your team.

- You're often the bearer of bad news. Own it and deliver the information with compassion and humility.
- Your role is to help to prevent programmers and managers from being fooled—and that that starts with not being fooled yourself

The goal of a tester is not _just_ finding issues, otherwise you might become [a perfectionist that raises mostly low-value issues](https://letmetrysoftwaretesting.wordpress.com/2018/01/22/testing-to-make-product-better-vs-perfect/). Instead, your focus should be pursuing quality and keeping it at a high level. Finding issues is just a consequence of that pursuit.

----------

When we have this sort of immediate feedback we learn quicker, we improve our game. When the feedback is about problems we don't even know might exist, that expands our knowledge letting us adapt before its painful to do so.

My son had his own plan, skill and will. He could have learned on his own. It probably would have taken longer and maybe been more painful or even dangerous. Working as a team, we achieved something, more than we could alone.

That's where skilled testers come in. Some of us are highly technical and will highlight technical issues or opportunities you haven't noticed. Some of us are skilled at seeing the app from the customers view point and highlighting problems that will cost you customers. Many of us do the above and much more. This could be letting you know if we are breaking the law. We often write tools that enable us to test more things – better. Testers can be useful for just pointing out the simple stuff like – we are developing for Red Hat Linux, but 60% of our users are on Windows, and 25% are on Apple Macs.

http://www.investigatingsoftware.co.uk/2017/04/why-you-might-need-testers.html

---------

Look at the current state and ask "Do we really need that?" or "Is there an easier way of implementing this?". Your ideas could make implementation easier or cut some additional work for the developer. Whatever the case, you helped your team.

> The tester’s role is to find information along the journey so that the team is able to make better decisions to reach the goal. (...) As the team member, it is one of your roles to verify if what is being built is correct. Or in this case, ensure that we know what we are actually building.
>
> https://thelifeofoneman.com/how-to-get-more-testing-done



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