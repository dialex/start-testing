# Guide to review test frameworks

## Review criteria

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

## Automation scope: [Amazon](https://amazon.com/)

- [x] **Smoke Tests**
  - [x] Access homepage on browser
- [ ] **Functional Tests**
  - [ ] Search for book
  - [ ] Add book to cart

## TODO: doubts

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
-
