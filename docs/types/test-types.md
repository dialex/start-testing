# Test types

> **tl;dr** SUMMARY_HERE

## Theory

The [testing pyramid]() hinted that there are different types of tests. So what tests can we have?

### Regression testing

We call "regression" to a returning unwanted behaviour. For example, if you find an issue, fix it, and days later you encounter the issue again, you have found a "regression". In that sense, regression testing is searching for regressions and, because of that, it will only ever detect previously seen issues. It won't find new issues, thus it will tell you if the quality got worse, but it won't tell you if the quality is bad.

Ideally, whenever you find a bug, you should add one test to cover it. This has two benefits, first it confirms the bug was fixed, and second, it allows you to detect future regressions, in case the bug is reintroduced in your codebase. These tests might be performed manually (following a guide) ou automatically (running a script).

As time passes, you will find more bugs, and you will write more regression tests for them. Eventually you will have a substantial collection of regression tests. Running all of them might not be as inexpensive as it used to be. Your team might decide to run them periodically, or frequently but just a subset.

> `Regression testing` simply confirms that modified software hasn't unintentionally changed and it is typically performed using any combination of the following techniques:
>
> - `Retest All`: A `retest all` practice, as the name implies, aims to re-test the entire software suite. In most cases, the majority of testing is actually automated using assorted tools and [test-driven development practices](https://airbrake.io/blog/sdlc/test-driven-development), since it's neither feasible nor economical for humans to perform such a massive quantity of testing. However, this lack of human intervention can also be problematic, so it's critical to have a backup plan like an error monitoring tool, which will ensure anything that slips through the cracks is caught and dealt with.
> - `Regression Test Selection`: As a slightly toned-down alternative to `retest all`, `regression test selection` encourages the team to extract a `representative selection` of tests from the full test suite that will *approximate* the average test case of the entire testing suite as a whole. The primary advantage to this practice is that it requires far less time and effort to perform. This kind of `regression testing` is ideally handled by human testers -- such as those from the QA or development teams -- who will typically have better insight into the nuances of test edge-cases and unexpected behaviors.
> - `Test Case Prioritization`: The goal here is to prioritize a limited set of test cases such that the more potentially impactful tests are executed ahead of all less critical tests. The act of *how* your team prioritizes test cases is outside the scope of this article, but many of the techniques used during [`defect triage`](https://airbrake.io/blog/devops/easing-the-pain-of-defect-triage) are applicable during `test case prioritization`.





## Practice

## Teachers

- [XXX](YYY)

## Sources

- [XXX](YYY)
