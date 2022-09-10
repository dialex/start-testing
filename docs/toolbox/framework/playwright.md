# Playwright

> Playwright enables end-to-end testing. Test modern single page apps, across all modern browsers, using in your preferred language (JS, TS, Java, C#, Python).
>
> — [Official website](https://playwright.dev/)

## Code

Example of automation at [GitHub](https://github.com/dialex/start-testing/tree/main/code/framework/playwright).

## Review

| Category          | Opinion |  Score   |
| ----------------- | ------- | :------: |
| _Use cases_       | Automate end-to-end (E2E) tests using the UI. It also supports mocks. |    🥈    |
| _Learning curve_  | Most test frameworks behave similarly, so for me it's just a matter of learning their syntax. The official doc was not sufficient to get started, so while I was coding I had the reference API by my side. When I was not sure how to do something, I simply enabled the "record mode" and let Playwright generate the test code of my actions. |    🥈    |
| _Language_        | Lots of flexibility, as you can choose from five languages to write your tests (personally, I picked JavaScript and VS Code). Since the API is very low level, more than basic knowledge is required to code and understand the tests. |    🥇    |
| _Ecosystem_      | My IDE autocomplete was limited. You can debug your test code using [breakpoints in VS Code](https://code.visualstudio.com/docs/nodejs/nodejs-debugging#_javascript-debug-terminal)… but you need multiple watches, as you can't evaluate expressions. Part of Playwright's pitch is cross-browser testing. Indeed it's super easy to enable it but super flaky to use. [In my case](https://github.com/playwright-community/jest-playwright/issues/614), Firefox was (mostly) fine, Chrome returned page errors (which I had to ignore) and Safari was 3x slower (when it didn't fail straight away) – both issues were false positives. |    😭    |
| _Readability_    | Verbose and an eyesore. A simple assertion takes [three lines](https://github.com/playwright-community/expect-playwright#why-do-i-need-it) — thankfully [expect-playwright](https://github.com/playwright-community/expect-playwright#api-documentation) reduces it to one. Something concise and intuitive in Cypress (`page.get.first`) is obscure in Playwright (`page.$$`). The test code reads like back-end code, with `async` and `await` keywords on every line. Sometimes you need to explicitly [wait for page loads](https://playwright.dev/docs/api/class-page#page-wait-for-navigation) (are we back to the Selenium days?). |    😭    |
| _Extensibility_  | You can run tests with its own runner, [Playwright Test](https://playwright.dev/docs/intro#installation), or you can use [Jest](https://github.com/playwright-community/jest-playwright) — developers will be familiar with its syntax and the test results report in the CLI is a lot better. It supports the [PageObject Model](https://playwright.dev/docs/pom). |    🥉    |
| _Maintainability_ | Hard to debug. When the `toHaveText()` assertion fails, it outputs the whole page HTML in the error log, which is a nightmare to review. [Slower than expected](https://blog.checklyhq.com/cypress-vs-selenium-vs-playwright-vs-puppeteer-speed-comparison/), if the tests ran in parallel I didn't even notice it. |    🥉    |
| _Documentation_ | I started with the [official doc](https://playwright.dev/docs/intro) and an [online course](https://testautomationu.applitools.com/js-playwright-tutorial). It's the typical, "it works and looks fine" until you try a real world scenario. I had to follow [community](https://applitools.com/blog/playing-with-playwright/) [guides](https://www.eliostruyf.com/utilize-playwright-jest-cross-browser-e2e-test-solutions/) to unblock myself. There's also some [official tutorials](https://try.playwright.tech/). On the bright side, the doc is complete and easy to search. |    🥈    |
| **VERDICT**       | I had a bad time and, given the effort, I was not proud of what I achieved. Unproductive. Unreliable. | **1/5** |
