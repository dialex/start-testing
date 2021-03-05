# Playwright

> Playwright enables end-to-end testing. Test modern single page apps, across all modern browsers, using in your preferred language (JS, TS, Java, C#, Python).
>
> — [Official website](https://playwright.dev/)

## Code

Example of automation at [GitHub](https://github.com/dialex/start-testing/tree/main/code/framework/karate).

## Review

| Category          | Opinion |  Score   |
| ----------------- | ------- | :------: |
| _Use cases_       |         |    ❓    |
| _Learning curve_  |         |    ❓    |
| _Language_        |         |    ❓    |
| _Ecosystem_       |         |    ❓    |
| _Readability_     |         |    ❓    |
| _Extensibility_   |         |    ❓    |
| _Maintainability_ |         |    ❓    |
| _Documentation_   |         |    ❓    |
| **VERDICT**       |         | **\_/5** |

## TODO: convert these notes to a proper review

- what is the diff or headless?
  - Enabled by default, uses the atual browser but the window doesn't open, also has slow motion mode
- can I run the same test for multiple browsers?
  - Yes, just change the `testEnvironmentOptions` in `jest.config.js`
- Getting started guide
  - https://playwright.dev/docs/core-concepts
  - https://applitools.com/blog/playing-with-playwright/
  - https://www.eliostruyf.com/utilize-playwright-jest-cross-browser-e2e-test-solutions/
- -1 not as fast as expected
- -1 have to worry about async and await
- Apparently https://github.com/playwright-community/expect-playwright comes with playwright, makes assertions more readable
- The same test passes Firefox and fails on Chrome and Safari without any error log, issue: https://github.com/playwright-community/jest-playwright/issues/614
