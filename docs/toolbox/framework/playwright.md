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
| _Learning curve_  | By now, I know my way around a test framework, it's just a matter of learning the syntax. The official doc was not sufficient to get started and while I was coding I needed the reference API by my side. When I was not sure how to do something, I simply enabled the "record mode" and let Playwright generate the test code of my interactions. |    🥈    |
| _Language_        | Tests are written in JavaScript or TypeScript. Since the API is very low level, more than basic knowledge is required to code and understand the tests. |    🥈    |
| _Ecosystem_       | JavaScript. I used VS Code to write tests. Autocomplete is limited. You can debug your test code using [breakpoints in VS Code](https://code.visualstudio.com/docs/nodejs/nodejs-debugging#_javascript-debug-terminal)… but you need multiple watches, as you can't evaluate expressions. Part of Playwright's pitch is cross-browser testing. It's super easy to enable it but super flaky to use. [In my case](https://github.com/playwright-community/jest-playwright/issues/614), Firefox was (mostly) fine, Chrome returned page errors (which I had to ignore) and Safari was 3x slower (when it didn't fail straight away) – both issues were false positives. |    😭    |
| _Readability_     | Verbose and rough. A simple assertion takes [three lines](https://github.com/playwright-community/expect-playwright#why-do-i-need-it), thankfully [expect-playwright](https://github.com/playwright-community/expect-playwright#api-documentation) reduces it to one. Something concise and intuitive in Cypress (`page.get.first`) is obscure in Playwright (`page.$$`). The test code reads like back-end code, with `async` and `await` keywords sprinkled every other line. Also you need to explicitly wait for page loads (`async page.waitForNavigation()`) or selectors to be available. Yet, sometimes you get timeouts. |    😭    |
| _Extensibility_   | I expected to be able to run the tests right away, but I needed a test runner like [Jest](https://github.com/playwright-community/jest-playwright). Doesn't come with a built-in way to take a screenshot on test failures, nor does it have a vast collection of plugins like Cypress. It has a [few tutorials](https://playwright.tech/) though and it supports the [PageObject Model](https://playwright.dev/docs/pom). |    🥉    |
| _Maintainability_ | Hard to debug. When the `toHaveText()` assertion fails, it outputs the whole page HTML in the error log, which is a nightmare to review. [Slower than expected](https://blog.checklyhq.com/cypress-vs-selenium-vs-playwright-vs-puppeteer-speed-comparison/), if the tests ran in parallel I didn't even notice it. |    🥉    |
| _Documentation_   | I started with the [official doc](https://playwright.dev/docs/intro) and quickly found out it doesn't work, because it's missing the test runner (Jest) which led to a quite different code. I had to follow [community](https://applitools.com/blog/playing-with-playwright/) [guides](https://www.eliostruyf.com/utilize-playwright-jest-cross-browser-e2e-test-solutions/). On the bright side, the doc is complete and easy to search. |    🥈    |
| **VERDICT**       | Unproductive and unreliable, so I can't recommend it. There are better alternatives. | **1/5** |
