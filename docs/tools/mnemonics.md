# Mnemonics

> **tl;dr** SUMMARY_HERE

## Theory

> A mnemonic is a pattern of letters, ideas, or associations which helps remember something else. It is a learning technique that aids information retention and retrieval. -- [Wikipedia](https://en.wikipedia.org/wiki/Mnemonic)

## Practice

### Product

- When using [Specification By Example](/notebook/specification-by-example.md) to write features and scenarios: **`OOPSI`** by [Jenny Martin](https://jennyjmar.com/2016/04/16/bdd-discovery-and-oopsi/)
  - Outcomes: what you expect to achieve (e.g. _As a ... I want to ... So that ..._)
  - Outputs: the outputs that deliver what you want to achieve
  - Processes: the activities performed to generate those outputs
  - Scenarios: step by step descriptions of those activities (aka. test cases)
  - Inputs: data used by scenarios to perform an activity (aka. test conditions)

### Automation

- When writing automated checks: **`SACRED`** by [Richard Bradshaw](https://youtu.be/z9m_yZMswOQ?t=56)
  - State: manage the environment where tests will run (e.g. configs, feature flags, data)
  - Actions: specify which steps to automate (e.g. click page element, call API, mock)
  - Codified [oracle](/tools/oracles.md): conditions that will decide whether the observed behaviour was expected (e.g. assertions)
  - Reporting: display and share the test results (e.g. logs, reports, notifications)
  - Execution: decide where and how the tests will run (e.g. local, CI, staging, production)
  - Deterministic: strive to have coherent and reliable test results (e.g. reduce flakyness)
- When assessing the quality of an automated checks: **`PARMesan`** by [Matt Barbour](https://testguild.com/avoid-zombie-test-automation-essential-survival-guide/)
  - Performant: test runs as fast as possible (e.g. explicit waits, parallelism)
  - Accurate: test failure precisely identifies root cause (e.g. false positives)
  - Repeatable: test can be executed multiple times and produce the same result
  - Meaningful: test validates an important feature or capability
- Anatomy of a test case: **`SEARCH`**
  - Setup
  - Execute
  - Analyze
  - Report
  - Clean
  - Home

### Exploration

- When preparing an exploratory testing session: **`TORCH`** by [Simon Tomes](https://docs.google.com/document/d/1rKYmujVhUlNgfeYIBot12Z8E7S0Y_Z4pk5pefK7xO3g/edit)
  - Time: How much time will you put aside for this session?
  - Oracles: Who or what will help you act on the information you discover? (see [oracles](/tools/oracles.md))
  - Risks: What do you want to learn about? (see [charters](/tools/charters.md))
  - Consider: What questions do you want to answer? (see **`5W1H`** mnemonic)
  - Heuristics: What triggers will guide your session? (see [heuristics](/tools/heuristics.md))

### Testability

- When assessing your product's [testability](/concepts/testability.md): **`SOCKS`** by [Adam Knight](https://www.a-sisyphean-task.com/2012/07/putting-your-testability-socks-on.html)
  - Simplicity: you should reduce complexity, so that your product is easy to test and maintain
  - Observability: you should be able to monitor what the product did, when and how
  - Control: you should be able to influence the state of the product to reproduce scenarios at will
  - Knowledge: you should have access to information (and [oracles](/tools/oracles.md)) about the product under test
  - Stability: you should have a stable environment and product to perform your testing 
- When looking for ways to improve your product's [testability](/concepts/testability.md): **`VIPS`** (by [James Back](https://www.satisfice.com/download/heuristics-of-software-testability))
  - Value: changing the quality standard or our knowledge of it
  - Intrinsic (aka. product): changing the system itself
  - Project: changing the conditions under which we test
  - Subjective (aka. tester): changing the tester or the test process

### Team

- When starting a new project or joining a new team: **`MIDTESTD`** by [James Bach](https://www.satisfice.com/download/heuristic-test-strategy-model)
  - Mission: what must you do to satisfy your client?
  - Information: what context about the product do you need for testing?
  - Developer relations: how can you get to know the developers?
  - Test team: who will perform or support testing?
  - Equipment: which hardware, software, docs or tools do you need for testing?
  - Schedule: when and how will team members align and share with each other?
  - Test items: which parts of the product should be tested?
  - Deliverables: which observable artifacts are expected to come out of testing?

## Teachers

- [XXX](YYY)

## Sources

- [OOPSI](https://jennyjmar.com/2016/04/16/bdd-discovery-and-oopsi/)
- [MIDTESTD](https://www.satisfice.com/download/heuristic-test-strategy-model)
- [SACRED](https://youtu.be/z9m_yZMswOQ?t=56)
- [SOCKS](https://www.a-sisyphean-task.com/2012/07/putting-your-testability-socks-on.html)
- [VIPS](https://www.satisfice.com/download/heuristics-of-software-testability)
- [TORCH](https://docs.google.com/document/d/1rKYmujVhUlNgfeYIBot12Z8E7S0Y_Z4pk5pefK7xO3g/edit)
- [PARM](https://testguild.com/avoid-zombie-test-automation-essential-survival-guide/)
