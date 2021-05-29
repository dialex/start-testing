# Mnemonics

> **tl;dr** Mnemonics are memory shortcuts to retrieve information.

## Theory

> A mnemonic is a pattern of letters, ideas, or associations which helps remember something else. It is a learning technique that aids information retention and retrieval. — [Wikipedia](https://en.wikipedia.org/wiki/Mnemonic)

Your brain can store a lot of information, but sometimes it's hard to recall a specific detail. Maybe you don't use that information too often or maybe it's not intuitive. Mnemonics are **[memory shortcuts](https://www.mindtools.com/memory.html)** that allow you to retrieve the same information with less effort.

> Example: You can memorise how many days each month has, or you can use the knuckles of your hand to instantly know the answer. In the latter case, you are using a shortcut to retrieve the same information — that's a mnemonic.
>
> Example: You are learning how to test an online form, and you are told that it's a good idea to try a value that is too small, too big and just right. You can memorise that information, but that will cost your brain some effort. Then you notice that pattern is similar to the [Story of Goldilocks and the Three Bears](https://en.wikipedia.org/wiki/Goldilocks_and_the_Three_Bears). So you just call it "the Goldilocks test" — that's a mnemonic.

Some mnemonics will give you the full information you are looking for, others will give you references to where you can get the full information. The first example gives you the exact information you want (number of days of a month). The second example doesn't give you the answer but uses knowledge you already have to make it easier to recall the exact information you want (aka. association of ideas).

> Example: You finished an exploratory session and now you want to summarise your findings. Usually you describe the Past (what you explored), the Results (what you discovered), the Obstacles (what prevented better testing), the Outlooks (what should be tested next), the your Feelings (how you felt while using the product under test).
> That's a lot of things to remember! But if you take the first letter of every word, you get `PROOF` — that's an acronym. "After I explore, I need to bring… `PROOF`" — that's a mnemonic.

Most of the testing mnemonics look like this last example. They are acronyms that condense vast amounts of information into a word (`PROOF`), a sentence (`FEW HICCUPPS`), or something in between (`SFDIPOT`).

These mnemonics don't give you the exact information you want, but they give you a clue about what you are trying to remember. And even if you forget the words that make the acronym, you can search for the acronym and quickly get the detailed information you need — almost like the glossary of a book.

Use the mnemonic technique to squeeze and shape any piece of information into a format that is "brain friendly". Below is a list of popular mnemonics used by the testing community. Feel free to [customise them to your needs](https://www.ministryoftesting.com/dojo/lessons/model-fatigue-and-how-to-break-it-john-stevenson) or develop your own.

## Practice

### 💡 Product

- **When using [Specification By Example](/notebook/specification-by-example.md) to write features and scenarios: `OOPSI`** by [Jenny Martin](https://jennyjmar.com/2016/04/16/bdd-discovery-and-oopsi/)
  - Outcomes: what you expect to achieve (e.g. _As a … I want to … So that …_)
  - Outputs: the outputs that deliver what you want to achieve
  - Processes: the activities performed to generate those outputs
  - Scenarios: step by step descriptions of those activities (aka. test cases)
  - Inputs: data used by scenarios to perform an activity (aka. test data)
- **When writing a user story: `INVEST`** by [Bill Wake](https://xp123.com/articles/invest-in-good-stories-and-smart-tasks/)
  - Independent: should be ready to start without waiting for another story
  - Negotiable: should capture the goal and leave the implementation for debate
  - Valuable: should deliver value to some stakeholder
  - Estimable: should have an effort amount, so than it can be prioritised
  - Small: should be achievable in one to three days
  - Testable: otherwise how do you know you're done?
- **When detailing _functional_ requirements: `W5H` or `WWWWWHEK`** by [Darren McMillan](http://www.bettertesting.co.uk/content/?p=857)
  - What is this for?
  - Who is this for?
  - When is it needed? When will it be done?
  - Where does it fit? Where is it being done?
  - Why is it being done?
  - How is it being done?
  - What additional questions do I have based on my knowledge? (of this or related products)
  - What additional questions do I have based on my experience? (of this or related products)
- **When detailing _non-functional_ requirements: `CRUCSPIC STMP`** adapted by [Henrik Emilsson](http://thetesteye.com/posters/TheTestEye_SoftwareQualityCharacteristics.pdf)
  - Capability: completeness, accuracy, efficiency, concurrency, extensibility
  - Reliability: stability, robustness, recoverability, safety, integrity, trustworthiness
  - Usability: learnability, operability, control, clarity, consistency, accessibility
  - Charisma: uniqueness, satisfaction, professionalism, curiosity, hype, attitude, story
  - Security: authentication, authorization, privacy, compliance, invulnerability, piracy
  - Performance: capacity, responsiveness, availability, endurance, scalability, consumption
  - IT-bility: requirements, upgrades, uninstallation, configuration, deployability
  - Compatibility: hardware, OS, backward, forward, standards, sustainability
  - Supportability: analytics, troubleshooting, debugging, versatility
  - Testability: traceability, controllability, observability, isolate-ability, automation, information
  - Maintainability: flexibility, extensibility, simplicity, readability, modularity, refactor-ability
  - Portability: localisation, internationalization, adaptability, reusability
- **When prioritising requirements for your product: `NoNeLaNe`** adapted by [Alister Scott](https://watirmelon.blog/2019/10/14/now-next-later-never-improving-moscow/)
  - Now (Must have)
  - Next (Should have)
  - Later (Could have)
  - Never (Won't have)

### 🐞 Bugs

- **When creating mechanisms to detect errors: `FAILURE`** by [Ben Simo](https://www.questioningsoftware.com/2007/08/failure-usability.html)
  - Functional: Do we detect errors automatically? Can users report errors?
  - Appropriate: Are errors reported instantly, to the right audience? Do we have false errors?
  - Impact: Does it fail as soon as possible? Is the user flow blocked? What do users lose?
  - Log: Are logs accessible, detailed, searchable?
  - UI: Is the error message understandable by users?
  - Recovery: Does the message help users recover from the error? Can they contact support?
  - Emotions: What does a user feel when an error occurs? Does the error message ease or worsen that pain?
- **When a bug is found: `REACT`** by [Brendan Connolly](http://www.brendanconnolly.net/react-to-bugs/) (adapted from [**`RIMGEA`**](https://www.kenst.com/2018/02/how-to-write-a-good-bug-report-use-rimgen/))
  - Reproduce
  - Explore
  - Analyse
  - Communicate
  - Triage

### 🤖 Automation

- **Anatomy of a test case: `SEARCH`**
  - Setup
  - Execute
  - Analyse
  - Report
  - Clean
  - Home
- **When writing unit tests: `SIPIFFI`** adapted by Diogo Nunes
  - Small: covers a small piece of behaviour
  - Isolated: doesn't affect other tests
  - Precise: when it fails, you know exactly what's wrong
  - Intense: covers all relevant execution flows
  - Fast: runs under 500 ms
  - Idempotent: can be run multiple times (no side effects)
  - Frequently run: the sooner it fails, the sooner we fix it
- **When writing automated tests: `SACRED`** by [Richard Bradshaw](https://youtu.be/z9m_yZMswOQ?t=56)
  - State: manage the environment where tests will run (e.g. configs, feature flags, data)
  - Actions: specify which steps to automate (e.g. click page element, call API, mock)
  - Codified [oracle](/toolbox/oracles.md): conditions that will decide whether the observed behaviour was expected (e.g. assertions)
  - Reporting: display and share the test results (e.g. logs, reports, notifications)
  - Execution: decide where and how the tests will run (e.g. local, CI, staging, production)
  - Deterministic: strive to have coherent and reliable test results (e.g. reduce flakyness)
- **When prioritising regression tests: `RCRCRC`** by [Karen Johnson](https://testandcode.com/38)
  - Recent: new feature or areas of code
  - Core: essential features
  - Risk: important features but used less frequently
  - Configuration: code dependent on environment settings
  - Repaired: tests that reproduce bugs or features recently fixed
  - Chronic: features that frequently break
- **When assessing the quality of an automated test: `PARMesan`** by [Matt Barbour](https://testguild.com/avoid-zombie-test-automation-essential-survival-guide/)
  - Performant: test runs as fast as possible (e.g. explicit waits, parallelism)
  - Accurate: test failure precisely identifies root cause (e.g. false positives)
  - Repeatable: test can be executed multiple times and produce the same result
  - Meaningful: test validates an important feature or capability

### ⛺️ Exploration

- **When thinking about which areas you can test: `SFDIPOT`** by [James Bach](https://www.satisfice.com/download/heuristic-test-strategy-model)
  - Structure: everything that makes up the product (software and hardware)
  - Function: everything that the product does
  - Data: everything that the product processes (in/out, quantity, quality, state, lifecycle)
  - Integrations: everything used to interact with the product (UI, API, bot, import)
  - Platform: everything external on which the product depends (libs, 3rd parties, tools, hardware)
  - Operations: how the product will be used (personas, environment, happy path, edge cases)
  - Time: any relationship between the product and time (speed, concurrency, frequency, delays)
- **When looking for test [oracles](/toolbox/oracles.md): `FEW HICCUPPS`** adapted by [Michael Bolton](https://www.developsense.com/blog/2012/07/few-hiccupps/)
  - Familiarity: should not suffer from common issues (or others)
  - Explainability: should be intuitive and easy to understand or explain
  - World: should be aligned with our knowledge of the world
  - History: should behave like it used to
  - Image: should match the company's brand (values, reputation, message)
  - Comparable: should behave like similar _external_ products
  - Claims: should behave like advertised by sales/marketing
  - User: should fulfil users' desires and expectations
  - Product: should behave like other _internal_ products
  - Purpose: should fulfil the company's expectations
  - Standards: should comply with applicable laws and regulations
- **When starting an exploratory testing session: `TORCH`** by [Simon Tomes](https://docs.google.com/document/d/1rKYmujVhUlNgfeYIBot12Z8E7S0Y_Z4pk5pefK7xO3g/edit)
  - Time: How much time will you put aside for this session?
  - Oracles: Who or what will help you act on the information you discover? (see [oracles](/toolbox/oracles.md))
  - Risks: What do you want to learn about? (see [charters](/toolbox/charters.md))
  - Consider: What questions do you want to answer? (see **`WWWWWHEK`** mnemonic)
  - Heuristics: What triggers will guide your session? (see [heuristics](/toolbox/heuristics.md))
- **When ending an exploratory testing session: `PROOF`** by [Jon Bach](https://jonbox.wordpress.com/)
  - Past: what was explored during the session (e.g. charter)
  - Results: what was discovered
  - Obstacles: what prevented better testing
  - Outlooks: which product areas should be explored next
  - Feelings: what emotions where felt during usage of the product
- **When exploring APIs: `ICE OVER MAD`** by [Ash Winter](https://testingisbelieving.blogspot.com/2013/11/johnny-mnemonic-iceovermad.html)
  - Integration: how will consumers use this service?
  - Consumers: who will use it — humans or machines?
  - Endpoints: how many endpoints and how are they accessed?
  - Operations: what is the purpose of the service?
  - Volume: what is the expected usage size and pattern?
  - Errors: does it handle and log failures?
  - RESTful: is it?
  - Modularity: how does each part of the service work together?
  - Authentication: sessions, privacy, encryption, permissions, etc.
  - Definitions: what is the contract of the service?
- **When exploring usability: `CAN I USE THIS`** by [David Greenlees](https://martialtester.files.wordpress.com/2013/11/bsm_can-i-use-this-nov-2013.pdf)
  - Comparable products
  - Accessibility
  - Navigation
  - Intuitive
  - Users
  - Standards
  - Emotional response
  - Training (drunk test)
  - Heuristics (e.g. top 10 Jakob Nielsen)
  - Instructions
  - Satisfaction

### 🔎 Testability

- **When assessing your product's [testability](/concepts/testability.md): `SOCKS`** by [Adam Knight](https://www.a-sisyphean-task.com/2012/07/putting-your-testability-socks-on.html)
  - Simplicity: you should reduce complexity, so that your product is easy to test and maintain
  - Observability: you should be able to monitor what the product did, when and how
  - Control: you should be able to influence the state of the product to reproduce scenarios at will
  - Knowledge: you should have access to information (and [oracles](/toolbox/oracles.md)) about the product under test
  - Stability: you should have a stable environment and product to perform your testing
- **When looking for ways to improve your product's [testability](/concepts/testability.md): `VIPS`** by [James Bach](https://www.satisfice.com/download/heuristics-of-software-testability)
  - Value: changing the quality standard or our knowledge of it
  - Intrinsic (aka. product): changing the system itself
  - Project: changing the conditions under which we test
  - Subjective (aka. tester): changing the tester or the test process
- **When expanding your knowledge on testing: `SACKED SCOWS`** by [James Bach](https://testsidestory.com/2010/03/16/a-lesson-learned-from-james-bach/)
  - Scouting obsessively: _I discover the sources and tools I will need_
  - Authentic problems: _engage my mind_
  - Cognitive savvy: _means working with the rhythms of my mind_
  - Knowledge attracts knowledge: _the more I know, the easier I learn_
  - Experimentation: _makes learning vivid and direct_
  - Disposable time: _lets me try new things without regrets_
  - Stories: _are how I make sense of things_
  - Contrasting ideas: _leads to better ideas_
  - Other minds: _exercise my thinking and identify my flaws_
  - Words and pictures: _make a home for my thoughts_
  - Systems thinking: _helps me tame complexity_

### 👥 Team

- **When starting a new project or joining a new team: `MIDTESTD`** by [James Bach](https://www.satisfice.com/download/heuristic-test-strategy-model)
  - Mission: what must you do to satisfy your client?
  - Information: what context about the product do you need for testing?
  - Developer relations: how can you get to know the developers?
  - Test team: who will perform or support testing?
  - Equipment: which hardware, software, docs or tools do you need for testing?
  - Schedule: when and how will team members align and share with each other?
  - Test items: which parts of the product should be tested?
  - Deliverables: which observable artefacts are expected to come out of testing?
- **When designing a test strategy for a new project: `SADDEST PPIRATEE`** by [Diogo Nunes](https://www.diogonunes.com/blog/test-strategy-saddest-ppiratee-mnemonic/) (adapted from **[`GRATEDD SCRIPTS`](http://www.software-testing.com.au/blog/2009/07/21/thinking-about-test-strategy-a-mnemonic-device/)**)
  - Scope
  - Approach
  - Dependencies
  - Data
  - Environments
  - Stakeholders
  - Time
  - Product
  - Prioritisation
  - Information
  - Risks
  - Architecture
  - Technologies
  - Experience
  - Emotions

## Sources

- [CAN I USE THIS](https://martialtester.files.wordpress.com/2013/11/bsm_can-i-use-this-nov-2013.pdf)
- [CRUSSPIC STMPL](http://thetesteye.com/posters/TheTestEye_SoftwareQualityCharacteristics.pdf)
- [FAILURE](https://www.questioningsoftware.com/2007/08/failure-usability.html)
- [FEW HICCUPPS](https://www.developsense.com/blog/2010/05/transpection-transpected/)
- [ICEOVERMAD](https://testingisbelieving.blogspot.com/2013/11/johnny-mnemonic-iceovermad.html)
- [INVEST](https://xp123.com/articles/invest-in-good-stories-and-smart-tasks/)
- [MIDTESTD](https://www.satisfice.com/download/heuristic-test-strategy-model)
- [NoNeLaNe](https://watirmelon.blog/2019/10/14/now-next-later-never-improving-moscow/)
- [OOPSI](https://jennyjmar.com/2016/04/16/bdd-discovery-and-oopsi/)
- [PARM](https://testguild.com/avoid-zombie-test-automation-essential-survival-guide/)
- [PROOF](https://jonbox.wordpress.com/)
- [RCRCRC](https://testandcode.com/38)
- [REACT](http://www.brendanconnolly.net/react-to-bugs/)
- [RIMGEA](https://www.kenst.com/2018/02/how-to-write-a-good-bug-report-use-rimgen/)
- [SACKED SCOWS](https://testsidestory.com/2010/03/16/a-lesson-learned-from-james-bach/)
- [SACRED](https://youtu.be/z9m_yZMswOQ?t=56)
- [SFDIPOT](https://www.satisfice.com/download/heuristic-test-strategy-model)
- [SOCKS](https://www.a-sisyphean-task.com/2012/07/putting-your-testability-socks-on.html)
- [TORCH](https://docs.google.com/document/d/1rKYmujVhUlNgfeYIBot12Z8E7S0Y_Z4pk5pefK7xO3g/edit)
- [VIPS](https://www.satisfice.com/download/heuristics-of-software-testability)
- [WWWWWHEK](http://www.bettertesting.co.uk/content/?p=857)
