# Heuristics

> **tl;dr** Heuristics are shortcuts to make decisions or pick what to test next.

## Theory

If [mnemonics]() act as "memory shortcuts", then heuristics are "decision shortcuts". These mechanisms allow people to function without spending too much to thinking about their next action.

> We use heuristics under conditions of uncertainty (...) to rapidly solve problems or make decisions. When you consider the number of decisions people make every day, it makes sense for our brains to use shortcuts to help us quickly assess the different options and decide. 
>
> -- [Richard Bradshaw and Sarah Deery](https://www.ministryoftesting.com/dojo/lessons/software-testing-heuristics-mind-the-gap)

Expressions like "rule of thumb", "educated guess", or "intuition" are all examples of humans using heuristics. So consider this rule of thumb, one that you might recall from your student years: *"I don't know the contents of the next exam, but the teacher already mentioned this specific subject three times, so it must be important."*

This example of heuristic is useful to demonstrate two key limitations:

- **All heuristics are fallible.** They simplify our context by assuming what is uncertain and ignoring what is contradictory or irrelevant. Given this incomplete context our decisions will be fallible, but there are situations where acting is more important than precision -- and that's when heuristics are useful.
- **All heuristics can turn to biases.** Prolongued usage of the same heuristics have a negative impact on you and your testing. Without awareness for bias, you will eventually miss or misinterpret information, which create gaps in your testing.

> Despite their fallible nature and the potential biases they cause, heuristics are very useful (...) to find solutions that are "good enough" (...) in scenarios where it's impractical to find the optimal solution to a problem.
>
> -- [Richard Bradshaw and Sarah Deery](https://www.ministryoftesting.com/dojo/lessons/software-testing-heuristics-mind-the-gap)

As with any other tool, it's important that you understand the advantages and limitations of heuristics, so that you can wisely choose when and which heuristics to apply in your context.

> Reliance on an oracle can lead you to the wrong conclusion.
> A decision rule that is useful but not always correct is called a heuristic.
>
> -- [Cem Kaner](http://kaner.com/?p=190)

Oracles are considered heuristics, however not all heuristics are oracles: "**`FEW HICCUPS`**" is an oracle because it tells you how to decide if something is right or wrong; the "Goldilocks" is not because it only gives you hints about what to test.

### Test ideas



> What’s a heuristic? Think of a heuristic as a rule of thumb that helps you make a decision about a problem you’re trying to solve. Heuristics are great for one you need to make a decision where there’s a whole lot of uncertainty and complexity and you don’t have all the time you want. Heuristics help simplify decision-making by providing patterns that can be useful in *some* situations, *some* times. That’s because its useful to treat heuristics with a certain amount of distrust.
>
> SFDIPOT is not necessarily useful for testing stories because it explores at wrong level of abstraction. Stories are not products, so trying to apply that type of coverage to a slice of a product can prove to be an ineffective method of identifying valuable story coverage.
>
> Heuristics can be really useful to us in testing. Sometimes they help us think of new ways to test, prompting us to ask new questions about the story (or the product) and the context in which we’re testing. But they can also bias us, channelling our ideas about testing into narrow ruts that over time make it hard to know any other route.
>
> https://mavericktester.com/2019/12/31/heuristics-sfdipot/

You can also think of heuristics as test ideas, when you are in doubt about what to test, there are a number of things you can try. That's a shortcut to get you testing.

> When I am instructed to test a software application there are a number of things that I know are worth trying. These are my test heuristics. Heuristics are simply experience-based techniques for problem solving, learning, and discovery.
>
> Every tester will have their own set of heuristics that guide their testing every day. These are innate and developed through experience.
>
> This insight into how others think allows me to introduce variety in my own approach. Instead of consistently finding the same sort of bugs, I broaden my horizons.
>
> https://katrinatester.blogspot.com/2014/09/heuristics-and-oracles.html

## Practice

> Heuristics can work incredibly well in certain contexts when applied with thought and skill.
>
> As testers, we frequently come across heuristics in the form of checklists, mnemonics and cheat sheets. They may sometimes be referred to as oracles or models. No matter what they're called or the form you get them in, if they serve as cognitive shortcuts that help us to solve problems or make decisions, they’re heuristics.
>
> - Boundary testing. We are all familiar with the story of [Goldilocks and the Three Bears](https://en.wikipedia.org/wiki/Goldilocks_and_the_Three_Bears), and the Goldilocks heuristic focuses on the concept of “too big, too small and just right”. 
>
>   When considering the Goldilocks heuristic, testers could think about data entry fields and try testing with data entries that are too big, too small and with entries that are more “typical” for that field and context. For example, you could try entering data into a currency field with a googol, a negative number and a more typical number for your product.
>
> - [RCRCRC](http://karennicolejohnson.com/wp-content/uploads/2012/11/KNJohnson-2012-heuristics-mnemonics.pdf) 
>
> - [FEW HICCUPPS](http://www.developsense.com/blog/2012/07/few-hiccupps/). These oracles focus on consistency criteria, for example, your product should be consistent with History: “We expect the present version of the system to be consistent with past versions of it.”
>
> Once you’ve learnt all about heuristics, it’s time to practice applying them in different contexts. Importantly, you should reflect upon their efficacy; what worked, what didn’t and why. If a heuristic is not working for you, try another, modify it or make your own.
>



>  checklist of heuristics and test ideas
>
> http://testobsessed.com/wp-content/uploads/2011/04/testheuristicscheatsheetv1.pdf



> - Diversify your actions -- e.g. try a smaller resolution, use keyboard shortcuts
> - Diversify your test data -- e.g. pick a diff user, generate random data
> - Diversify your oracles -- e.g. show what you found to a diff stakeholder
> - Diversify who is doing the testing -- e.g. rotate perspectives and expectations
> - Diversify your test environment -- e.g. use a diff machine or OS, test in production
>
> [link](https://mavericktester.com/2018/03/20/2018-3-20-how-to-avoid-being-fooled-in-software-testing/)

> **Find Importants Problem Fast** - Testing should be optimised to find important problems fast, rather than attempting to find all problems with equal urgency.
>
> **Maximise Diversity** - No single view of techniques will reveal all the problems in software. Diversification minimises the risk that the strategy will be blind to certain kinds of problems.
>
> ? Consider your [stakeholders]() - Other teams and stakeholders will have information about the product about pain points, bugs, problems and many more. Their perspective will help the tester to get a more complete view and make better analysis of what they are testing.
>
> ? Minimise text - When writing test cases, avoid long winded and unnecessary text. Do not state the obvious, do not be too detailed as no one will read for too long. Any text that is too long will reduce the likelihood that it will be read. 
>
> https://thelifeofoneman.com/the-main-test-heuristics-to-consider

> - “Have I performed enough ____?”
> - “Has my ____ been good enough?”
> - “Did my ____ cover everything it could?”
>
> Alan Richardson suggestes a few words to fill in the blanks: Questioning, Usage, Analysis, Exploration, Reasoning, Experimentation ([`QUAERE`](https://www.eviltester.com/2017/05/quaere-heuristics-mnemonics-and-acronyms.html))

See https://www.satisfice.com/download/heuristic-test-strategy-model

### Bias

> Bias is an irrational judgement or subconcious inference made from the data available to us. In testing, biases have the effect of causing you to miss or focus too much on a specific behaviour or data.
>
> e.g. when you miss something in one area of the application because you are focused on another point (inattentional blindness)
>
> Ignoring biases can affect your perception of the product you are testing. It may lead to gaps in your testing which could let bugs slip through.
>
> Being concious of biases allows us to attempt to prevent them from negatively impacting our testing. We can also use biases to focus on specific testing activities and ignore distractions.
>
> https://www.ministryoftesting.com/dojo/lessons/99-second-introduction-to-biases-in-testing

> The knowledge that you have gathered becomes natural to you. You forget what it was like *not* knowing this. You go from “consciously competent” to “[unconsciously competent](https://en.wikipedia.org/wiki/Four_stages_of_competence)”, so you have a harder time explaining the thing to somebody else. It just seems so self-evident by now, so you have to dig deeper and think harder to find the right words.
>
> This is the curse of knowledge at work: The longer you have the knowledge, the less you are aware of it, and the more difficult it becomes to pass it on.
>
> - *“As we all know, …“*
> - *“You probably know that…“*
> - *“I’m sure you’re all aware that…“*
> - *“I probably don’t need to explain that…“*
>
> Are you still going to ask this question? No, you’ll ask it in a smaller circle some time later, or try to find out from the project’s documentation. And if *this* question has been subtly labelled as “stupid” by the presenter, maybe it’s safer not to ask *any* questions during this presentation at all, right? After all, the audience seems so damn smart that *most* questions must appear stupid.
>
> This is how you create psychologically unsafe environments.
>
> Imposter syndrome:
>
> > *“Whew, thank God I finally figured this out. I bet everyone around me knew this already. I’ll better act like I have known that for a long time, as has everyone else.”*
>
> So, instead of teaching others what you have learned, you assume everyone already has that knowledge — which, in a lot of cases, they don’t.
>
> 
>
> If you want to remain aware how complex something you built actually is, a project diary can help. A Google doc or something similar is just fine.
>
> Whenever you make a difficult decision, or whenever you face multiple options, describe the situation in your project diary. 
>
> Finally, let’s consider people’s frequent reaction when asked to speak at an event: “Nah, I don’t think I’m proficient enough yet. I better improve my skills and knowledge a bit more before I put myself in front of an audience.”
>
> What most people are not aware of is that the I-only-just-learned-this perspective is an asset, not a liability. It gives you a unique advantage over more experienced experts, because they cannot remember any more what it was like *not* knowing.
>
> It will make your explanations clearer and more accessible, and the audience will thank you for it.
>
> https://www.tombartel.me//blog/are-you-suffering-from-curse-of-knowledge/



> **Problem 1: Too much information.**
>
> *There is just too much information in the world, we have no choice but to filter almost all of it out. Our brain uses a few simple tricks to pick out the bits of information that are most likely going to be useful in some way.*
>
> - We notice things that are already primed in memory or repeated often.
> - Funny or visually-striking things stick out more than non-bizarre/unfunny things.
> - We notice when something has changed. 
> - We are drawn to details that confirm our own existing beliefs. 
> - We notice flaws in others more easily than flaws in ourselves.
>
> **Problem 2: Not enough meaning.**
>
> *The world is very confusing, and we end up only seeing a tiny sliver of it, but we need to make some sense of it in order to survive. Once the reduced stream of information comes in, we connect the dots, fill in the gaps with stuff we already think we know, and update our mental models of the world.*
>
> - We find stories and patterns even in sparse data. 
> - We fill in characteristics from stereotypes, generalities, and prior histories whenever there are new specific instances or gaps in information.
> - We imagine things and people we’re familiar with or fond of as better than things and people we aren’t familiar with or fond of. 
> - We simplify probabilities and numbers to make them easier to think about. 
> - We think we know what others are thinking.
> - We project our current mindset and assumptions onto the past and future. 
> 
> **Problem 3: Need to act fast.**
> 
> *We’re constrained by time and information, and yet we can’t let that paralyze us. Without the ability to act fast in the face of uncertainty, we surely would have perished as a species long ago. With every piece of new information, we need to do our best to assess our ability to affect the situation, apply it to decisions, simulate the future to predict what might happen next, and otherwise act on our new insight.*
> 
> - In order to act, we need to be confident in our ability to make an impact and to feel like what we do is important. 
>- In order to stay focused, we favor the immediate, relatable thing in front of us over the delayed and distant. 
> - In order to get anything done, we’re motivated to complete things that we’ve already invested time and energy in. 
>- In order to avoid mistakes, we’re motivated to preserve our autonomy and status in a group, and to avoid irreversible decisions. 
> - We favor options that appear simple or that have more complete information over more complex, ambiguous options. 
>
> **Problem 4: What should we remember?**
>
> *There’s too much information in the universe. We can only afford to keep around the bits that are most likely to prove useful in the future. We need to make constant bets and trade-offs around what we try to remember and what we forget. For example, we prefer generalizations over specifics because they take up less space. When there are lots of irreducible details, we pick out a few standout items to save and discard the rest. What we save here is what is most likely to inform our filters related to problem 1’s information overload, as well as inform what comes to mind during the processes mentioned in problem 2 around filling in incomplete information. It’s all self-reinforcing.*
> 
> - We edit and reinforce some memories after the fact.
> - We discard specifics to form generalities.
> - We reduce events and lists to their key elements.
> - We store memories differently based on how they were experienced. 
> 
> ---------
> 
> 1. Information overload sucks, so we aggressively filter.
>   *Noise becomes signal.*
> 2. Lack of meaning is confusing, so we fill in the gaps.
>   *Signal becomes a story.*
> 3. Need to act fast lest we lose our chance, so we jump to conclusions.
>   *Stories become decisions.*
> 4. This isn’t getting easier, so we try to remember the important bits.
>   *Decisions inform our mental models of the world.*
> 
> [in depth explanation of each bias type](https://medium.com/better-humans/cognitive-bias-cheat-sheet-55a472476b18#.486tj1s6j)
> 
> [cognitive bias codex](https://upload.wikimedia.org/wikipedia/commons/a/a4/The_Cognitive_Bias_Codex_-_180%2B_biases%2C_designed_by_John_Manoogian_III_%28jm3%29.png)


## Teachers

- [Name](#link)
- James Bach

## Sources

- [Software Testing Heuristics: Mind The Gap!](https://www.ministryoftesting.com/dojo/lessons/software-testing-heuristics-mind-the-gap)