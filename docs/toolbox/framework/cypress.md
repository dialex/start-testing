# Cypress

> Fast and reliable testing for anything that runs in a browser. It uses Javascript (and not Selenium) to make setting up, writing, running and debugging tests easy — for QAs and developers.
>
> — [Official website](https://www.cypress.io/how-it-works/)

## Code

Example of automation at [GitHub](https://github.com/dialex/start-testing/tree/main/code/framework/cypress).

## Review

| Category          | Opinion                                                      |   Score   |
| ----------------- | ------------------------------------------------------------ | :-------: |
| _Use cases_       | Automate end-to-end (E2E) tests using the UI or the client-side Javascript. It also supports API testing and mocks. |     🥇     |
| _Learning curve_  | Cypress has little setup and comes with intuitive methods and assertions, so you will be writing your first tests in no time. When you open Cypress, you can watch the test execution step-by-step in the browser, pause it, even go back in time! |     🥇     |
| _Language_        | Tests are written in Javascript, thus some basic knowledge is required to code and understand the tests. You will only take full advantage of this powerful framework if you are proficient with Javascript though. |     🥈     |
| _Ecosystem_       | Javascript. I used VS Code to write tests and (after a simple configuration) it's IntelliSense made me very productive. |     🥇     |
| _Readability_     | A non-tech person can only understand the title of each test. E2E tests easily become hard to read even for devs. There are unofficial libs to support Gherkin. By default there's no test report file, only an ASCII output, but you can add any [Mocha](https://docs.cypress.io/guides/tooling/reporters.html#Custom-Reporters) test reporter. |     🥈     |
| _Extensibility_   | You can create your own Cypress Commands (not picked up by IntelliSense) or regular Javascript functions. PageObjects is a nightmare (their [recommendation](https://docs.cypress.io/faq/questions/using-cypress-faq.html#Can-I-use-the-Page-Object-pattern) isn't better). There are several Cypress plugins (but they offer [functionality that should be built-in](https://github.com/cypress-io/cypress/issues/1865#issuecomment-484897559)). It's a pity that parallel test execution is a paid feature. |     🥉     |
| _Maintainability_ | Debugging is good (pause, go back in time, DOM inspection), I longed for step-by-step. IntelliSense usually guides your coding. Cypress commands run asynchronously and that leads to issues (e.g. run conditions) and limitations (e.g. can't mix sync and async code). |     🥈     |
| _Documentation_   | The online doc is abundant and comprehensive. It covers how to use Cypress, including some [recipes/examples](https://github.com/cypress-io/cypress-example-recipes#application-actions), but also explains some test concepts (e.g. when to use test mocks, anti-patterns, etc.). |     🥇     |
| **VERDICT**       | Perfect for a Javascript project with an experienced team.   | **4.5/5** |
