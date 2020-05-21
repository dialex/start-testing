# Heuristics

> **tl;dr** Heuristics are shortcuts to make decisions or pick what to test next.

## Theory

If [mnemonics](/toolbox/mnemonics) act as "memory shortcuts", then heuristics are "decision shortcuts". These mechanisms allow people to function without spending too much to thinking about their next action.

> We use heuristics under conditions of uncertainty (…) to rapidly solve problems or make decisions. When you consider the number of decisions people make every day, it makes sense for our brains to use shortcuts to help us quickly assess the different options and decide.
>
> — [Richard Bradshaw and Sarah Deery](https://www.ministryoftesting.com/dojo/lessons/software-testing-heuristics-mind-the-gap)

Expressions like "rule of thumb", "educated guess", or "intuition" are all examples of humans using heuristics. So consider this rule of thumb, one that you might recall from your student years: _"I don't know the contents of the next exam, but the teacher already mentioned this specific subject three times, so it must be important."_

This example of heuristic is useful to demonstrate two key limitations:

- **All heuristics are fallible.** They simplify our context by assuming what is uncertain and ignoring what is contradictory or irrelevant. Given this incomplete context our decisions will be fallible, but there are situations where acting is more important than precision — and that's when heuristics are useful.
- **All heuristics can turn to biases.** Prolonged usage of the same heuristics have a negative impact on you and your testing. Without awareness for bias, you will eventually miss or misinterpret information, which create gaps in your testing.

> Despite their fallible nature and the potential biases they cause, heuristics are very useful (…) to find solutions that are "good enough" (…) in scenarios where it's impractical to find the optimal solution to a problem.
>
> — [Richard Bradshaw and Sarah Deery](https://www.ministryoftesting.com/dojo/lessons/software-testing-heuristics-mind-the-gap)
>
> Heuristics provide patterns that can be useful in _some_ situations, _some_ times. (…) It's useful to treat heuristics with a certain amount of distrust.
>
> — [Anne-Marie Charrett](https://mavericktester.com/2019/12/31/heuristics-sfdipot/)

As with any other tool, it's important that you understand the advantages and limitations of heuristics, so that you can wisely choose when and which heuristics to apply in your context.

> Reliance on an oracle can lead you to the wrong conclusion.
> A decision rule that is useful but not always correct is called a heuristic.
>
> — [Cem Kaner](http://kaner.com/?p=190)

Oracles are considered heuristics, however not all heuristics are oracles: [**`FEW HICCUPS`**](/toolbox/mnemonics.md) heuristic is an oracle because it tells you how to decide if something is right or wrong; the Goldilocks heuristic is not because it only gives you hints about what to test.

> When I test a software application there are a number of things that I know are worth trying. These are my test heuristics. Heuristics are simply experience-based techniques for problem solving and discovery.
>
> — [Katrina Clokie](https://katrinatester.blogspot.com/2014/09/heuristics-and-oracles.html)

When you have doubts about what to test next, there are a number of heuristics you can use to generate new test ideas. With time and experience you will developed your own set of test heuristics.

## Practice

You will frequently come across heuristics in the form of checklists, cheat sheets, mnemonics, oracles or models. If they serve as cognitive shortcuts to solve problems or make decisions, they're heuristics.

> Once you learn about heuristics, it's time to practice them in different contexts. (…) When using heuristics you should reflect what worked, what didn't and why. If a heuristic is not working for you, try another, modify it or make your own.
>
> — [Richard Bradshaw and Sarah Deery](https://www.ministryoftesting.com/dojo/lessons/software-testing-heuristics-mind-the-gap)

### 💡 Test ideas

There's a big number of heuristics you can use to generate test ideas. [Elisabeth Hendrickson](http://testobsessed.com/wp-content/uploads/2011/04/testheuristicscheatsheetv1.pdf) compiled a cheat sheet with the most common. One of the simplest is the Goldilocks heuristic (named after the [bedtime story](https://en.wikipedia.org/wiki/Goldilocks_and_the_Three_Bears)), which focuses on the concept of "too big", "too small", "just right". For more testing opportunities, check this list from [Erik Brickarp](http://erik.brickarp.se/2016/08/how-to-come-up-with-test-ideas.html).

> Let's say you want to test a new field that collects the age of a user. Inspired by the Goldilocks heuristic, you can observe the behaviour of that field when you type a value that is too big (`999`), too small (`-1`), and just right (`30`).

[James Bach](https://www.satisfice.com/download/heuristic-test-strategy-model)'s Heuristic Test Strategy Model (HTSM) contains more tips on how to explore your product ([**`SFDIPOT`**](/toolbox/mnemonics?id=⛺%ef%b8%8f-exploration)) and its non-functional properties ([**`CRUCSPIC STMP`**](/toolbox/mnemonics?id=%f0%9f%92%a1-product)).

This presentation from [Karen Johnson](http://karennicolejohnson.com/wp-content/uploads/2012/11/KNJohnson-2012-heuristics-mnemonics.pdf) demonstrates how you can use heuristics like [**`RCRCRC`**](/toolbox/mnemonics?id=🤖-automation) (ideas about what to check on regression testing) or [**`FEW HICCUPPS`**](/toolbox/mnemonics?id=⛺%ef%b8%8f-exploration) (oracles focused on consistency) in practice. To discover other mnemonics, check this [cheat sheet](/toolbox/mnemonics).

Given the time you have to test is limited, you might want to prioritise your testing by "finding important problems first" and "maximising diversity". These and [other heuristics](https://thelifeofoneman.com/the-main-test-heuristics-to-consider) allow you to focus on using different techniques to reveal different types of critical problems.

If you like learning while having fun, [Lena Pejgan](https://testing.pejgan.se/2020/04/30/would-heu-risk-it-part-32-wrap-up-time/) created a card games called "Would Heu-risk it?". It contains a total of 30 tools (things testers use to increase the value of their testing), traps (common mistakes and anti-patterns) and weapons (pieces of wisdom gained from experience).

### 🕶 Biases

> Bias is an irrational judgement or subconscious inference made from (historical) data available to us.
>
> In testing, biases cause you to miss or focus too much on a specific behaviour or data.
>
> — [99 second intro to biases in testing](https://www.ministryoftesting.com/dojo/lessons/99-second-introduction-to-biases-in-testing)

For example, when you miss something because you are too focused on another thing, that's a form of bias called "inattentional blindness". To see this in practice, put yourself to the test with ["The Monkey Business Illusion"](https://youtu.be/IGQmdoK_ZfY).

There are many more biases that limit or weaken your testing. When you are conscious of these biases you can minimise their negative impact in your testing. Otherwise biases create gaps in your testing which give bugs an opportunity to go unnoticed until it's too late.

In order to counter the bias effect of heuristics, [Anne-Marie Charrett](https://mavericktester.com/2018/03/20/2018-3-20-how-to-avoid-being-fooled-in-software-testing/) recommends that you:

- Diversify your actions — e.g. try a smaller resolution, use keyboard shortcuts
- Diversify your test data — e.g. pick a diff user, generate random data
- Diversify your oracles — e.g. show what you found to a diff stakeholder
- Diversify who is doing the testing — e.g. rotate perspectives and expectations
- Diversify your test environment — e.g. use a diff machine or OS, test in production

[Alan Richardson](https://www.eviltester.com/2017/05/quaere-heuristics-mnemonics-and-acronyms.html) challenges your amount of testing with the next three questions. He also suggests a few words to fill in the blanks: Questioning, Usage, Analysis, Exploration, Reasoning, Experimentation ([`QUAERE`](https://www.eviltester.com/2017/05/quaere-heuristics-mnemonics-and-acronyms.html))

- "Have I performed enough \_\_\_\_?"
- "Has my \_\_\_\_ been good enough?"
- "Did my \_\_\_\_ cover everything it could?"

[Tom Bartel](https://www.tombartel.me/blog/are-you-suffering-from-curse-of-knowledge/) describes a bias he calls the "curse of knowledge":

> The knowledge that you have gathered becomes natural to you. You become "unconsciously competent", so you have a harder time explaining it to somebody else. A warning sign is when you start your sentences with _"As we all know, …"_ or _"I probably don't need to explain that…"_
>
> This is how you create unsafe environments.

[Buster Benson](https://medium.com/better-humans/cognitive-bias-cheat-sheet-55a472476b18#.486tj1s6j) did an amazing job at collecting, explaining and summarising the most common biases that affect us. Here's a brief (or [visual](https://upload.wikimedia.org/wikipedia/commons/a/a4/The_Cognitive_Bias_Codex_-_180%2B_biases%2C_designed_by_John_Manoogian_III_%28jm3%29.png)) summary of the four groups of biases.

> - **Too much information** — Our brain uses a few tricks to pick out the bits of info that are most likely going to be useful in some way.
>   - We are drawn to details that confirm our own existing beliefs.
>   - We notice flaws in others more easily than flaws in ourselves.
>   - Repetition, changes in patterns, funny, or bizarre things grab our attention.
> - **Not enough meaning** — The world is very confusing. We connect the dots, fill in the gaps with stuff we already think we know.
>   - We find stories and patterns even in sparse data.
>   - We imagine things and people we're familiar with as better.
>   - We think we know what others are thinking.
> - **Need to act fast** — We're constrained by time and information, yet we can't let that paralyse us.
>   - We favour the immediate, relatable thing in front of us over the delayed and distant.
>   - We're motivated to complete things that we've already invested time and energy in.
>   - We prefer to preserve our status in a group, and to avoid irreversible decisions.
> - **Not enough memory** — We keep what is most likely to prove useful in the future.
>   - We discard specifics to form generalities.
>   - We store memories differently based on how they were experienced.

## Teachers

- [Alan Richardson](https://www.eviltester.com/)
- [Dan Ashby](https://danashby.co.uk/)
- [James Bach](https://www.satisfice.com/)
- [Lena Pejgan](https://testing.pejgan.se/)
- [Richard Bradshaw](https://thefriendlytester.co.uk/)

## Sources

- [Software Testing Heuristics: Mind The Gap!](https://www.ministryoftesting.com/dojo/lessons/software-testing-heuristics-mind-the-gap)
- [Heuristics and Oracles](https://katrinatester.blogspot.com/2014/09/heuristics-and-oracles.html)
- [Heuristic Test Strategy Model](https://www.satisfice.com/download/heuristic-test-strategy-model)
- [Software Testing Heuristics & Mnemonics](http://karennicolejohnson.com/wp-content/uploads/2012/11/KNJohnson-2012-heuristics-mnemonics.pdf)
- [99 Second Introduction to Biases in Testing](https://www.ministryoftesting.com/dojo/lessons/99-second-introduction-to-biases-in-testing)
- [How to avoid being fooled in software testing](https://mavericktester.com/2018/03/20/2018-3-20-how-to-avoid-being-fooled-in-software-testing/)
- [Quaere, Heuristics, Mnemonics, and Acronyms](https://www.eviltester.com/2017/05/quaere-heuristics-mnemonics-and-acronyms.html)
- [Are You Suffering From the Curse of Knowledge?](https://www.tombartel.me/blog/are-you-suffering-from-curse-of-knowledge/)
- [Cognitive bias cheat sheet](https://medium.com/better-humans/cognitive-bias-cheat-sheet-55a472476b18#.486tj1s6j)
- [How to come up with test ideas](http://erik.brickarp.se/2016/08/how-to-come-up-with-test-ideas.html)
