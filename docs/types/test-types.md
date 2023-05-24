# Test types

> **tl;dr** SUMMARY_HERE

## Theory

The [testing pyramid]() hinted that there are different types of tests. So what tests can we have?

### Regression testing

Regression testing involves checking for the return of unwanted behavior in software . For example, if you fix a problem and later encounter the same issue, that's called a regression. Regression testing aims to find such regressions, but it only detects issues that were previously known -- it doesn't uncover new issues. This type of testing can tell you if the quality has worsened, but not if it was already bad.

A good practice is to add a test for every bug you fix. This has two advantages: it confirms that the issue is indeed fixed, and it helps catch future regressions of that same issue.

> Breaking stuff that *worked* before is *embarrassing*.
> Breaking stuff that was *broken and fixed* before is *really embarrassing*.
>
> -- [Michael Bolton](https://www.developsense.com/presentations/2013-05-STAREast-Regression.pdf)

Over time, you will discover more issues and create additional regression tests to address them. As a result, you will accumulate a significant number of regression tests. These tests can be executed either manually (by following a guide), or automatically (by running a script).

However, as the number of tests grows, running them all manually will become costly and time-consuming. Since regression tests are repetitive, it is better to automate them, eliminating the need for human involvement without sacrificing any benefits. To decide which regression tests to write or prioritise, check the [`RCRCRC`](https://dialex.github.io/start-testing/#/toolbox/mnemonics) mnemonic.

Your team also gets to decide which tests to run and how frequently. If you have sufficient resources, running all tests before pushing code changes is ideal. However, if your team is limited, optimization becomes necessary. You can select a subset of tests that are crucial and run them before each push to the code repository. The remaining tests can be scheduled to run at a specific time of the day. Another approach is to organize tests by modules, allowing you to prioritize regression tests related to the specific area of code that was modified. For example, if you made changes to the user account module, it would be a priority to run the regression tests associated with that module.

If you consistently experience failed regression checks (assuming they are genuine issues and not false positives), it is important to investigate the root cause. This indicates that there might be something in your development process that increases the likelihood of regressions. Take the necessary steps to fix the underlying problem and avoid unnecessary regressions.

## Practice

## Teachers

- [Michael Bolton](https://www.developsense.com/)

## Sources

- [XXX](YYY)
- [Things Could Get Worse: Ideas About Regression Testing](https://www.developsense.com/presentations/2013-05-STAREast-Regression.pdf)
