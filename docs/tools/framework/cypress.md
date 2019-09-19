# Cypress

> Fast and reliable testing for anything that runs in a browser. It uses Javascript (and not Selenium) to make setting up, writing, running and debugging tests easy — for QAs and developers.
>
> — [Official website](https://www.cypress.io/how-it-works/)

## Code

Example of automation at [GitHub](https://github.com/dialex/start-testing/tree/master/code/framework/cypress).

## Review

| Category | Opinion | Score |
| -------- | ------- | :---: |
| _Use cases_        | Automate end-to-end tests using the UI or the client-side Javascript. It also supports API testing and mocks. | 🥇 |
| _Learning curve_   | Cypress has little setup and comes with intuitive methods and assertions, so you will be writing your first tests in no time. When you open Cypress, you can watch the test execution step-by-step in the browser, pause it, even go back in time! | 🥇 |
| _Language_         | Tests are written in Javascript, thus some basic knowledge is required to code and understand the tests. You will only take full advantage of this powerful framework if you are proficient with Javascript. | 🥈 |
| _Ecosystem_        | Javascript. There's libraries for everything. I used VS Code to write tests and (after a simple configuration) it's IntelliSense made me very productive. | 🥇 |
| _Readability_      | A non-tech person can only read the title of each test, which is a single sentence. There are unofficial libs to support Gherkin though. By default there's no test report file, only an ASCII output, but you can add any [Mocha](https://docs.cypress.io/guides/tooling/reporters.html#Custom-Reporters) test reporter. | 🥈 |
| _Extensibility_    | You can create your own Cypress Custom Commands, or regular Javascript functions (which will be picked up by IntelliSense). It supports the PageObject pattern, even though they [don't recommend it](https://docs.cypress.io/faq/questions/using-cypress-faq.html#Can-I-use-the-Page-Object-pattern). | 🥇 |
| _Maintainability_  | It's Javascript, for better or for worse. Debugging is a bliss (step-by-step, pause, go back in time, DOM inspection). IntelliSense guides your coding. | 🥇 |
| _Documentation_    | The online doc is abundant and comprehensive. It covers how to use Cypress, including some [recipes/examples](https://github.com/cypress-io/cypress-example-recipes#application-actions), but also explains some test concepts (e.g. when to use test mocks, anti-patterns, etc.). | 🥇 |
| **VERDICT**        | Perfect for a Javascript project or team. | **5/5** |
