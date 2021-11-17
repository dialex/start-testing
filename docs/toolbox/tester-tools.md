# Tools for testers

> **tl;dr** A list of tools, services and resources useful to software testers.

As [Mark Winteringham](https://www.ministryoftesting.com/dojo/lessons/what-tools-should-i-learn) says "problem first, tools second". Take the time to understand the problem and, only then, figure out what is the best tool for the job. Don't be afraid to try a new tool, it's better than blindly applying a tool you already know.

A tool might not be listed if it is too expensive, closed-source, or not good enough:

- 💯 highly recommended
- ⭐️ better than the average
- 🤷‍♂️ still needs a proper review

## 📋 CHECKLISTS

- 💯 [Front-End-Checklist](https://frontendchecklist.io/): interactive front-end checklist for modern websites and meticulous developers
- [Web page functionality checklist](https://www.ministryoftesting.com/dojo/lessons/checklist-for-testing-web-page-functionality): most common and basic issues that affect web pages
- [API security checklist](https://github.com/shieldfy/API-Security-Checklist): most important security concerns when developing your API

## 🏎 PRODUCTIVITY

- 💯 [VS Code](https://code.visualstudio.com/) (app): lightweight and extendable IDE for almost any language; cross-platform
  - [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens): tasks for Git (git blame, file history, compare view, etc.)
  - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one): tasks for Markdown (shortcuts, ToC, preview)
  - [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint): performs static analysis on your Markdown file
  - [open in browser](https://marketplace.visualstudio.com/items?itemName=techer.open-in-browser): task and right-click to open file on browser
  - [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode): format all other files; ensure your team uses the same rules
  - [Remark](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-remark): format Markdown files
  - [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync): task to save/load your settings and extensions on GitHub
  - [Spell Right](https://marketplace.visualstudio.com/items?itemName=ban.spellright): multilingual spellchecker for comments and Markdown
  - [Unique Lines](https://marketplace.visualstudio.com/items?itemName=bibhasdn.unique-lines): task to remove duplicated lines from current selection
  - [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons): meaningful and colourful icons on files and folders
- 💯 [Rectangle](https://rectangleapp.com/) (app): move/resize windows using shortcuts or snap areas
- 💯 [KeepingYouAwake](https://github.com/newmarcel/KeepingYouAwake/blob/master/README.md) (app): prevents your Mac to enter screensaver/sleep mode (useful when pairing)
- 💯 [BugMagnet](https://chrome.google.com/webstore/detail/bug-magnet/efhedldbjahpgjcneebmbolkalbhckfi) (extension): quick access to test strings relevant for boundary testing
- 💯 [Clipy](https://github.com/Clipy/Clipy) (app): clipboard manager with support for code snippets
- 💯 [Fork](https://git-fork.com/) (app): visual client for Git; cross-platform
- 💯 [F.lux](https://justgetflux.com/) (app): automatically reduces the blue light of your screen as night comes
- ⭐️ [Bookmarklet](https://mrcoles.com/bookmarklet/) (SaaS): stores Javascript code as a browser bookmark button
- ⭐️ [Form Filler](https://chrome.google.com/webstore/detail/form-filler/bnjjngeaknajbdcgpfkgnonkmififhfo) (extension): automates form filling with testing data
- ⭐️ [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa) (extension): formats JSONs to be human readable on a browser tab
- ⭐️ [Meld](https://meldmerge.org/) (app): visual diff and merge tool for individual files or entire folder
- 💯 [scrcpy](https://github.com/Genymobile/scrcpy) (app): control your Android from your laptop; cross-platform
- [IE11 virtual machines](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/): test your app on IE11 and Edge Legacy using Win10 VMs

## 🎨 FRONT-END

### Prototyping

- ⭐️ [Marvel](https://marvelapp.com/) (SaaS): prototype mobile and web apps (can be functional or just designs)
- [InVision](https://www.invisionapp.com/) (SaaS): prototype mobile and web apps (can be functional or just designs)

### Design

- ⭐️ [Tape](https://chrome.google.com/webstore/detail/tape/jmfleijdbicilompnnombcbkcgidbefb) (extension): draw guidelines on top of your page and measure pixel distances
- [PerfectPixel](https://chrome.google.com/webstore/detail/perfectpixel-by-welldonec/dkaagdgjmgdmbnecmcefdhjekcoceebi?hl=en) (extension): overlap UI mockups on top of your page and look for mismatches
- [ColorZilla](https://chrome.google.com/webstore/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp?hl=en) (extension): pick any colour from a web page
- [CSS Selector Tester](https://chrome.google.com/webstore/detail/css-selector-tester/bbklnaodgoocmcdejoalmbjihhdkbfon) (extension): takes a CSS selector and highlights the selection in the page itself

### Accessibility

- 💯 [Webhint](https://webhint.io/) (IDE/cli/extension): checks your web page for browser compatibility, accessibility, performance and security issues, plus common mistakes; neat report; proper issue justification and mitigation
- ⭐️ [WAVE](https://wave.webaim.org/) (extension): check your web page for compliance with WCAG; the issues are displayed contextually on the page itself; an explanation in simple English is provided for each issue
- [axe](https://chrome.google.com/webstore/detail/axe-web-accessibility-tes/lhdoppojpmngadmnindnejefpokejbdd) (extension): the standard for online accessibility checking; UI/UX is not as pleasant
- 🤷‍♂️ [Tota11y](https://khan.github.io/tota11y/) (extension): check your web page for accessibility issues; an explanation in simple English is provided for each issue, together with a proposed fix

## 💻 BACK-END

### API

- 💯 [Postman](https://www.postman.com/) (app/cli): interact/mock APIs, automate checks, collaborate with your team
- [Hoppscotch](https://hoppscotch.io/) (SaaS/app): interact with APIs, share API request encoded as a URL
- 💯 [Wiremock](http://wiremock.org/) (cli): simulates API responses according to your configuration
- [httpstat.us](https://httpstat.us/): simulates HTTP response codes

### Network

- [Wireshark](https://www.wireshark.org/) (app): logs requests between your computer and the Internet
- 🤷‍♂️ [Fiddler](https://www.telerik.com/fiddler) (app): same as Wireshark and let's you fiddle with the request/response
- 🤷‍♂️ [Request Maker](https://chrome.google.com/webstore/detail/request-maker/kajfghlhfkcocafkcjlajldicbikpgnp) (extension): same as Fiddler

## ⛺️ EXPLORATION

- 💯 [TestBuddy](https://testbuddy.co/) (SaaS): report bugs/ideas/notes/questions as you explore; export as PDF
- [RapidReporter](http://testing.gershon.info/reporter/) (app): distraction free note taking during exploratory sessions
- 🤷‍♂️ [ExploratoryTesting](https://chrome.google.com/webstore/detail/exploratory-testing-chrom/khigmghadjljgjpamimgjjmpmlbgmekj) (extension): report bugs/ideas/notes/questions as you explore; export as HTML
- 🤷‍♂️ [Test & Feedback](https://chrome.google.com/webstore/detail/test-feedback/gnldpbnocfnlkkicnaplmkaphfdnlplb) (extension): report bugs/tasks as you explore; export as HTML; VSTS integration

## 🤖 AUTOMATION

### Acceptance tests

- 💯 [Cypress](https://www.cypress.io/): acceptance tests in JavaScript ([review](/toolbox/framework/cypress))
- [Playwright](https://playwright.dev/): acceptance tests in JavaScript ([review](/toolbox/framework/playwright))
- 🤷‍♂️ [CodeceptJS](https://codecept.io/): acceptance tests in JavaScript
- 🤷‍♂️ [Nightwatch](https://nightwatchjs.org/): acceptance tests in JavaScript
- 🤷‍♂️ [Testcafe](https://devexpress.github.io/testcafe/): acceptance tests in JavaScript
- [SpecFlow](https://specflow.org/): acceptance tests in .NET/C#
- [Serenity](https://github.com/serenity-bdd/serenity-core): acceptance tests in Java
- 🤷‍♂️ [Selenide](https://selenide.org/): acceptance tests in Java
- [Robot Framework](https://robotframework.org/): acceptance tests in Python ([review](/toolbox/framework/robot))
- 🤷‍♂️ [Capybara](https://github.com/teamcapybara/capybara): acceptance tests in Ruby (DSL)
- 🤷‍♂️ [Watir](http://watir.com/): acceptance tests in Ruby (OO)
- 🤷‍♂️ [Mabl](https://www.mabl.com/) (SaaS): code-less UI/acceptance tests for web; allows record & play
- [karate](https://github.com/intuit/karate): API testing in Gherkin ([review](/toolbox/framework/karate))
- 🤷‍♂️ [spearmint](https://github.com/open-source-labs/spearmint): GUI for generating clean, semantic Javascript tests

### Visual regression

- 🤷‍♂️ [Applitools](https://applitools.com/) (SaaS): screenshots your pages and detects visual changes between executions
- 🤷‍♂️ [Chromatic](https://www.chromatic.com/) (SaaS): screenshots your pages and detects visual changes between executions
- 🤷‍♂️ [Wraith](https://github.com/BBC-News/wraith) (cli): screenshots your pages and detects visual changes locally; open-source
- 🤷‍♂️ [BackstopJS](https://github.com/garris/BackstopJS) (cli): screenshots your pages and detects visual changes locally; open-source
- 🤷‍♂️ [Appraise](https://github.com/AppraiseQA/appraise) (cli): screenshots your pages and detects visual changes locally; open-source
- 🤷‍♂️ [Galen Framework](http://galenframework.com/) (cli): tests location of UI components relative to each other using DSL; open-source

### Unit tests

- 💯 [Jest](https://jestjs.io/): unit tests in JavaScript
- ⭐️ [Mocha](https://mochajs.org/) + [Chai](https://www.chaijs.com/) + [Sinon](https://sinonjs.org/): unit tests in JavaScript
- 🤷‍♂️ [Tape](https://github.com/substack/tape): unit tests in JavaScript
- 🤷‍♂️ [Intern](https://theintern.io/): unit/acceptance tests in JavaScript
- [RSpec](https://rspec.info/): unit tests in Ruby
- 🤷‍♂️ [Codeception](https://codeception.com/): unit/API/acceptance tests in PHP

### Mobile

- 🤷‍♂️ [Appium](http://appium.io/): cross-platform test framework for web, mobile and desktop apps
- 🤷‍♂️ [Katalon Studio](https://www.katalon.com/katalon-studio/): code-less tests for web, mobile and desktop

### Libraries

- 💯 [RestAssured](https://github.com/rest-assured/rest-assured): API testing in Java (best for big/complex projects)
- 💯 [the-internet](https://the-internet.herokuapp.com/): examples of UI components, ready for your automation experiments
- [Testing library](https://testing-library.com/): query the DOM like the user finds elements on the page
- 🤷‍♂️ [Stryker](https://stryker-mutator.io/): mutation testing for JavaScript/.NET
- 🤷‍♂️ [JSVerify](https://jsverify.github.io/): property-based testing for JavaScript
- 🤷‍♂️ [junit-quickcheck](https://github.com/pholser/junit-quickcheck/): property-based testing for Java
- 🤷‍♂️ [bazel](https://bazel.build/): speeds up compiling and testing, using parallelization and caching

## 📥 EMAIL

- [Maildev](https://github.com/maildev/maildev) (cli): create a local test inbox, use their API or UI to query emails received
- 🤷‍♂️ [Mapil](https://mapil.co/) (SaaS): create a private test inbox, use their API to query emails received (requires sign-up)
- 🤷‍♂️ [Mailinator](https://www.mailinator.com/) (SaaS): create a public test inbox, use their API to query emails received (no sign-up)
- ⭐️ [Litmus](https://litmus.com/) (SaaS): preview the same email on multiple email clients and devices

## 🔒 NON-FUNCTIONAL REQUIREMENTS

### Cross-browser testing

- [BrowserStack](https://www.browserstack.com/) (SaaS): runs the same tests, in parallel, on multiple browsers
- 🤷‍♂️ [SauceLabs](https://saucelabs.com/) (SaaS): runs the same tests, in parallel, on multiple browsers
- 🤷‍♂️ [Zalenium](https://opensource.zalando.com/zalenium/) (SaaS): host your own scalable container based Selenium Grid

### Performance

- [Lighthouse](https://developers.google.com/web/tools/lighthouse/#devtools) (extension): audits your web page for performance, a11y, PWA, SEO
- ⭐️ [JMeter](https://jmeter.apache.org/) (app): load tests your website and measures performance; not the easiest UI
- 🤷‍♂️ [k6](https://k6.io/) (cli/SaaS): load tests your website and measures performance
- 🤷‍♂️ [Artillery](https://artillery.io/) (cli): load tests your website and measures performance
- 🤷‍♂️ [Gatling](https://gatling.io/) (app/SaaS): load tests your website displays results in dashboards
- 🤷‍♂️ [Sitespeed.io](https://www.sitespeed.io/) (app): monitors and measures the performance of your web site
- 🤷‍♂️ [chaosmonkey](https://github.com/Netflix/chaosmonkey) (cli): resilience test that randomly terminates production VMs and containers

### Privacy

- 💯 [Ghostery](https://chrome.google.com/webstore/detail/ghostery-%E2%80%93-privacy-ad-blo/mlomiejdfkolichcflejclcbmpeaniij) (extension): measures the number of ads and trackers in a web page
- 💯 [TunnelBear](https://www.tunnelbear.com/) (app): pretends your machine is in a different country with a different IP
- ⭐️ [User Agent Switcher](https://chrome.google.com/webstore/detail/user-agent-switcher-for-c/djflhoibgkdhkhhcedjiklpkjnoahfmg) (extension): easily switch between user-agent strings

### Security

- 💯 [OWASP ZAP](https://www.zaproxy.org/) (app): scans your website for the [OWASP Top 10](https://owasp.org/www-project-top-ten/) vulnerabilities
- 💯 [Trivy](https://github.com/aquasecurity/trivy) (cli): simple vulnerability scanner for containers
- 🤷‍♂️ [Frida](https://frida.re/) (cli): lets you inject snippets of JavaScript into native apps
- [Magisk](https://magisk.me/) (app): root your Android device without touching system/boot partition

### SEO

- ⭐️ [Check My Links](https://chrome.google.com/webstore/detail/check-my-links/ojkcdipcgfaekbeaelaapakgnjflfglf) (extension): checks your web page for broken links
- 🤷‍♂️ [Tag Assistant](https://chrome.google.com/webstore/detail/tag-assistant-by-google/kejbdjndbnbjgmefkgdddjlbokphdefk?hl=en) (extension): troubleshoots Google tags (analytics, tag manager, etc.)

## 📊 MONITORING & DASHBOARDS

### App

- 💯 [Grafana](https://grafana.com/) (SaaS): open-source monitoring, log analysis and dashboards
- ⭐️ [Datadog](https://www.datadoghq.com/) (SaaS): closed-source monitoring, log analysis and dashboards
- ⭐️ [New Relic](https://newrelic.com/) (SaaS): closed-source monitoring, log analysis and dashboards
- [Splunk](https://www.splunk.com/) (SaaS): closed-source monitoring, log analysis and dashboards
- [PowerBI](https://powerbi.microsoft.com/) (SaaS): closed-source dashboards by Microsoft

### Tests

- 🤷‍♂️ [TestRail](https://www.gurock.com/testrail/) (SaaS): stores test results and provides statistics and dashboards

## 📄 REPORTING

### Test results

- [Mochawesome](https://github.com/adamgruber/mochawesome#readme) (cli): reads your JavaScript test execution data and generates an HTML report
- 🤷‍♂️ [Allure](https://github.com/allure-framework/allure2) (cli): reads your test execution data and generates an HTML report
- [Pickles](https://www.picklesdoc.com/) (cli): reads your Gherkin scenarios (`.feature` files) and generates an HTML report

### Bugs

- 💯 [Licecap](https://www.cockos.com/licecap/) (app): record your screen to lightweight GIFs; cross-platform
- 💯 [Full page screen capture](https://chrome.google.com/webstore/detail/full-page-screen-capture/fdpohaocaechififmbbbbbknoalclacl/related?hl=en) (extension): take single a screenshot of an entire web page
- [Lightshot](https://chrome.google.com/webstore/detail/lightshot-screenshot-tool/mbniclmhobmnbdlbpiphghaielnnpgdp?hl=en) (extension): take a screenshot and annotate it

## ✍ DOCUMENTATION

- 💯 [docsify](https://docsify.js.org/) (cli): dynamically generates an HTML site from MD files
- 🤷‍♂️ [Docusaurus](https://docusaurus.io/) (cli): generates a static HTML from MD files
- 💯 [Typora](https://typora.io/) (app]): cross-platform Markdown editor with embedded live preview; pleasant and distraction free UX; exports to PDF, HTML and more
- 💯 [Marp Next](https://marp.app/) (IDE/cli/SaaS): create slide decks using Markdown with live preview
- 💯 [Mermaid.js](https://mermaid-js.github.io/mermaid/#/) (SaaS): create diagrams using Markdown with live preview
- 💯 [Mindmup](https://www.mindmup.com/) (SaaS): draw mind maps directly in Google Drive, with real-time collaboration
- 💯 [XMind](https://www.xmind.net/) (app): draw mind maps offline with a clean/professional look; pleasant UX
- ⭐️ [Diagrams.net](http://diagrams.net/) (SaaS/app): share a canvas with a colleague and draw anything collaboratively

## 💬 COMMUNITY

- 💯 [Testers.io](http://www.testers.io/) - Ministry of Testing's Slack community; ask for advice or join the discussion
- 💯 [Testing Conferences](https://testingconferences.org/) - live list (and alerts) about worldwide testing conferences

## 🌍 LISTS OF RESOURCES

- _[The "awesome" manifesto](https://github.com/sindresorhus/awesome/blob/main/readme.md): enumerates the requirements for an awesomely curated list_
- ⭐️ [Awesome falsehood](https://github.com/kdeldycke/awesome-falsehood): biases that influence developers' decisions
- [Awesome hacking](https://github.com/Hack-with-Github/Awesome-Hacking): repositories useful to hackers, pentesters and security researchers
- 💯 [Awesome security](https://github.com/sbilly/awesome-security): tools and resources about security
- [Awesome pentest](https://github.com/enaqx/awesome-pentest): tools and resources about penetration testing
- 💯 [Awesome test automation](https://github.com/atinfo/awesome-test-automation/blob/master/README.md): frameworks, tools and libraries for different programming languages
- [Awesome visual regression](https://github.com/mojoaxel/awesome-regression-testing): tools to perform visual regression testing
- [How they test](https://github.com/abhivaikar/howtheytest): how software companies test their products and build their quality culture
- ⭐️ [Big list of naughty strings](https://github.com/minimaxir/big-list-of-naughty-strings): strings with a high probability of causing issues when used as input data
- 💯 [FreeLearningResourcesForSoftwareTesters](https://github.com/PaulWaltersDev/FreeLearningResourcesForSoftwareTesters): exactly what the name suggests
