# Tester's toolkit

> **tl;dr** SUMMARY_HERE

As [Mark Winteringham](https://www.ministryoftesting.com/dojo/lessons/what-tools-should-i-learn) says "problem first, tools second". Take the time to understand the problem and only then figure out what is the best tool for the job. Don't be afraid to try a new tool, it's better than blindly applying a tool you already know.

Legend:

- 💯 highly recomended
- ⭐️ better than the average
- ❔🤷‍♂️ still needs a proper review
- A tool might not be listed if it is too expensive, closed-source, or not good enough

## UI - Accessibility

- 💯 [Webhint](https://webhint.io/) (IDE/cli/extension): checks your web page for browser compatibility, acessibility, performance and security issues, plus common mistakes; neat report; proper issue justification and mitigation
- ⭐️ [WAVE](https://wave.webaim.org/) (extension): check your web page for compliance with WCAG; the issues are displayed contextually on the page itself; an explanation in simple English is provided for each issue
- [axe](https://chrome.google.com/webstore/detail/axe-web-accessibility-tes/lhdoppojpmngadmnindnejefpokejbdd) (extension): the standard for online accessibility checking; UI/UX is not as pleasant

## UI - Design

- [PerfectPixel](https://chrome.google.com/webstore/detail/perfectpixel-by-welldonec/dkaagdgjmgdmbnecmcefdhjekcoceebi?hl=en) (extension): overlap UI mockup on top of your page and look for mismatches
- ⭐️ [Tape](https://chrome.google.com/webstore/detail/tape/jmfleijdbicilompnnombcbkcgidbefb) (extension): draw guidelines on top of your page and measure pixel distances
- [ColorZilla](https://chrome.google.com/webstore/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp?hl=en) (extension): color pick any color from a web page
- [CSS Selector Tester](https://chrome.google.com/webstore/detail/css-selector-tester/bbklnaodgoocmcdejoalmbjihhdkbfon) (extension): takes a CSS selector and highlights the selection in the page itself

## API

- 💯 [Postman](https://www.postman.com/) (app/cli): interact/mock APIs, automate checks, collaborate with your team
- 💯 [Wiremock](http://wiremock.org/) (cli): simulates API responses according to your configuration

## Automation in testing

### Web (acceptance tests)

- 💯 [Cypress](https://www.cypress.io/): acceptance tests in JavaScript ([review]())
- 🤷‍♂️ [Nightwatch](https://nightwatchjs.org/): acceptance tests in JavaScript
- 🤷‍♂️ [Testcafe](https://devexpress.github.io/testcafe/): acceptance tests in JavaScript
- [SpecFlow](https://specflow.org/): acceptance tests in .NET/C#
- [Serenity](https://github.com/serenity-bdd/serenity-core): acceptance tests in Java
- 🤷‍♂️ [Selenide](https://selenide.org/): acceptance tests in Java
- [Robot Framework](https://robotframework.org/): acceptance tests in Python ([review]())
- 🤷‍♂️ [Capybara](https://github.com/teamcapybara/capybara): acceptance tests in Ruby (DSL)
- 🤷‍♂️ [Watir](http://watir.com/): acceptance tests in Ruby (OO)
- 🤷‍♂️ [Mabl](https://www.mabl.com/) (SaaS): code-less UI/acceptance tests for web; allows record & play

### Web (unit)

- 💯 [Jest](https://jestjs.io/): unit tests in Javascript
- ⭐️ [Mocha](https://mochajs.org/) + [Chai](https://www.chaijs.com/) + [Sinon](https://sinonjs.org/): unit tests in JavaScript
- 🤷‍♂️ [Intern](https://theintern.io/): unit/acceptance tests in JavaScript
- [RSpec](https://rspec.info/): unit tests in Ruby
- 🤷‍♂️ [Codeception](https://codeception.com/): unit/api/acceptance tests in PHP

### Mobile

- 🤷‍♂️ [Appium](http://appium.io/): cross-platform test framework for web, mobile and desktop apps
- 🤷‍♂️ [Katalon Studio](https://www.katalon.com/katalon-studio/): code-less tests for web, mobile and desktop

### Libraries

- [Testing library](https://testing-library.com/): query the DOM like the user finds elements on the page
- 💯 [RestAssured](https://github.com/rest-assured/rest-assured): API testing in Java
- 💯 [the-internet](https://the-internet.herokuapp.com/): examples of UI components, ready for your automation experiments
- 🤷‍♂️ [Stryker](https://stryker-mutator.io/): mutation testing for JavaScript/.NET

## Exploration in testing

- [RapidReporter](http://testing.gershon.info/reporter/) (app): distraction free note taking during exploratory sessions
- 💯 [TestBuddy](https://testbuddy.co/) (SaaS): report bugs/ideas/notes/questions as you explore; export as PDF
- 🤷‍♂️ [ExploratoryTesting](https://chrome.google.com/webstore/detail/exploratory-testing-chrom/khigmghadjljgjpamimgjjmpmlbgmekj) (extension): report bugs/ideas/notes/questions as you explore; export as HTML
- 🤷‍♂️ [Test & Feedback](https://chrome.google.com/webstore/detail/test-feedback/gnldpbnocfnlkkicnaplmkaphfdnlplb) (extension): report bugs/tasks as you explore; export as HTML; VSTS integration

## Productivity

- 💯 [VS Code](https://code.visualstudio.com/): lightweight and extensible IDE for almost any language; cross-platform
  - [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens): tasks for Git (git blame, file history, compare view, etc.)
  - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one): tasks for Markdown (shortcuts, ToC, preview)
  - [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint): performs static analysis on your Markdown file
  - [open in browser](https://marketplace.visualstudio.com/items?itemName=techer.open-in-browser): task and right-click to open file on browser
  - [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode): format all other files; ensure your team uses the same rules
  - [Remark](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-remark): format Markdown files
  - [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync): task to save/load your settings and extensions on GitHub
  - [Spell Right](https://marketplace.visualstudio.com/items?itemName=ban.spellright): multilingual spellchecker for comments and Markdown
  - [Unique Lines](https://marketplace.visualstudio.com/items?itemName=bibhasdn.unique-lines): task to remove duplicated lines from current selection
  - [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons): meaningful and colorful icons on files and folders
- 💯 [Fork](https://git-fork.com/): visual client for Git; cross-platform
- ⭐️ [Form Filler](https://chrome.google.com/webstore/detail/form-filler/bnjjngeaknajbdcgpfkgnonkmififhfo) (extension): automates form filling with testing data
- 💯 [Clipy](https://github.com/Clipy/Clipy): clipboard manager with support for code snippets
- 💯 [F.lux](https://justgetflux.com/): automatically reduces the blue light of your screen as night comes
- 🤷‍♂️ [Vysor](https://www.vysor.io/): control your Android from your laptop
- [IE11 virtual machines](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/): test your app on IE11 and Edge Legacy using Win10 VMs
- 💯 [KeepingYouAwake](https://github.com/newmarcel/KeepingYouAwake/blob/master/README.md): prevents your Mac to enter screensaver/sleep mode (useful when pairing)
- ⭐️ [Bookmarklet](https://mrcoles.com/bookmarklet/) (SaaS): stores Javascript code as a browser bookmark button
- 💯 [BugMagnet](https://chrome.google.com/webstore/detail/bug-magnet/efhedldbjahpgjcneebmbolkalbhckfi) (extension): quick access to test strings relevant for boundary testing
- ⭐️ [Meld](https://meldmerge.org/): visual diff and merge tool for individual files or entire folders
- 💯 [Rectangle](https://rectangleapp.com/): move/resize windows using shortcuts or snap areas
- ⭐️ [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa) (extension): formats JSONs to be human readable on a browser tab 

## Cross-browser testing

- [BrowserStack](https://www.browserstack.com/) (SaaS): runs the same tests, in parallel, on multiple browsers
- 🤷‍♂️ [SauceLabs](https://saucelabs.com/) (SaaS): runs the same tests, in parallel, on multiple browsers

## SEO

- 🤷‍♂️ [Tag Assistant](https://chrome.google.com/webstore/detail/tag-assistant-by-google/kejbdjndbnbjgmefkgdddjlbokphdefk?hl=en) (extension): troubleshoots Google tags (analytics, tag manager, etc.)
- ⭐️ [Check My Links](https://chrome.google.com/webstore/detail/check-my-links/ojkcdipcgfaekbeaelaapakgnjflfglf) (extension): checks your web page for broken links

## Network

- [Wireshark](https://www.wireshark.org/) (app): logs requests between your computer and the Internet
- 🤷‍♂️ [Fidder](https://www.telerik.com/fiddler) (app): same as Wireshark and let's you fiddle with the request/response
- 🤷‍♂️ [Request Maker](https://chrome.google.com/webstore/detail/request-maker/kajfghlhfkcocafkcjlajldicbikpgnp) (extension): same as Fiddler

## Security

- 💯 [OWASP ZAP](https://www.zaproxy.org/) (app): scans your website for the [OWASP Top 10](https://owasp.org/www-project-top-ten/) vulnerabilities

## App monitoring & Dashboards

- 💯 [Grafana](https://grafana.com/) (SaaS): open-source monitoring, log analysis and dashboards
- ⭐️ [Datadog](https://www.datadoghq.com/) (SaaS): closed-source monitoring, log analysis and dashboards
- ⭐️ [New Relic](https://newrelic.com/) (SaaS): closed-source monitoring, log analysis and dashboards
- [Splunk](https://www.splunk.com/) (SaaS): closed-source monitoring, log analysis and dashboards
- [PowerBI](https://powerbi.microsoft.com/) (SaaS): closed-source dashboards by Microsoft

## Test monitoring

- 🤷‍♂️ [TestRail](https://www.gurock.com/testrail/) (SaaS): stores test results and provides statistics and dashboards

## Documentation

- 💯 [Typora](https://typora.io/) (app]): cross-platform Markdown editor with embedded live preview; pleasant and distraction free UX; exports to PDF, HTML and more
- 💯 [Marp Next](https://marp.app/) (IDE/cli/SaaS): create slide decks using Markdown with live preview
- 💯 [Mermaid.js](https://mermaid-js.github.io/mermaid/#/) (SaaS): create diagrams using Markdown with live preview
- 💯 [Mindmup](https://www.mindmup.com/) (Saas): draw mind maps directly in Google Drive, with real-time collaboration
- 💯 [XMind](https://www.xmind.net/) (app): draw mind maps offline with a clean/professional look; pleasant UX
- ⭐️ [Diagrams.net](http://diagrams.net/) (SaaS/app): share a canvas with a colleague and draw anything collaboratively

## Reporting

- [Mochawesome](https://github.com/adamgruber/mochawesome#readme) (cli): reads your JavaScript test execution data and generates an HTML report
- 🤷‍♂️ [Allure](https://github.com/allure-framework/allure2) (cli): reads your test execution data and generates an HTML report
- [Pickles](https://www.picklesdoc.com/) (cli): reads your Gherkin scenarios (`.feature` files) and generates an HTML report

## Emails

- 🤷‍♂️ [Mailinator](https://www.mailinator.com/) (SaaS): create a public test inbox, use their API to query emails received (no sign-up)
- 🤷‍♂️ [Mapil](https://mapil.co/) (Saas): create a private test inbox, use their API to query emails received (requires sign-up)
- ⭐️ [Litmus](https://litmus.com/) (SaaS): preview the same email on multiple email clients and devices

## Bug reporting

- 💯 [Licecap](https://www.cockos.com/licecap/) (app): record your screen to lightweight GIFs; cross-platform
- 💯 [Full page screen capture](https://chrome.google.com/webstore/detail/full-page-screen-capture/fdpohaocaechififmbbbbbknoalclacl/related?hl=en) (extension): take single a screenshot of an entire web page
- [Lightshot](https://chrome.google.com/webstore/detail/lightshot-screenshot-tool/mbniclmhobmnbdlbpiphghaielnnpgdp?hl=en) (extension): take a screenshot and annotate it

## Visual (regression)

- 🤷‍♂️ [Applitools](https://applitools.com/) (SaaS): screenshots your pages and detects visual changes between executions
- 🤷‍♂️ [Chromatic](https://www.chromatic.com/) (SaaS): screenshots your pages and detects visual changes between executions
- 🤷‍♂️ [Wraith](https://github.com/BBC-News/wraith) (cli): screenshots your pages and detects visual changes locally; open-source
- 🤷‍♂️ [Appraise](https://github.com/AppraiseQA/appraise) (cli): screenshots your pages and detects visual changes locally; open-source
- 🤷‍♂️ [Galen Framework](http://galenframework.com/) (cli): tests location of UI components relative to each other using DSL; open-source

## Performance

- [Lighthouse](https://developers.google.com/web/tools/lighthouse/#devtools) (extension): audits your web page for performance, a11y, PWA, SEO
- ⭐️ [JMeter](https://jmeter.apache.org/) (app): load tests your website and measures performance; not the easiest UI
- 🤷‍♂️ [Gatling](https://gatling.io/) (app/SaaS): load tests your website displays results in dashboards
- 🤷‍♂️ [Sitespeed.io](https://www.sitespeed.io/) (app): monitors and measures the performance of your web site
- 🤷‍♂️ [chaosmonkey](https://github.com/Netflix/chaosmonkey) (cli): resilience test that randomly terminates production VMs and containers

## Privacy

- 💯 [Ghostery](https://chrome.google.com/webstore/detail/ghostery-–-privacy-ad-blo/mlomiejdfkolichcflejclcbmpeaniij) (extension): measures the number of ads and trackers in a web page
- 💯 [TunnelBear](https://www.tunnelbear.com/) (app): pretends your machine is in a different country with a different IP
- ⭐️ [User Agent Switcher](https://chrome.google.com/webstore/detail/user-agent-switcher-for-c/djflhoibgkdhkhhcedjiklpkjnoahfmg) (extension): easily switch between user-agent strings

## Prototyping

- 🤷‍♂️ [InVision](https://www.invisionapp.com/) (SaaS): prototype mobile and web apps (can be functional or just designs)
- 🤷‍♂️ [Marvel](https://marvelapp.com/) (SaaS): prototype mobile and web apps (can be functional or just designs)

## Community

- 💯 [Testers.io](http://www.testers.io/) - Ministry of Testing's Slack community; ask for advice or join the discussion
- 💯 [Testing Conferences](https://testingconferences.org/) - live list (and alerts) about worldwide testing conferences

## Lists of resources

- _[The "awesome" manifesto](https://github.com/sindresorhus/awesome/blob/master/awesome.md): enumerates the requirements for an awesomely curated list_
- ⭐️ [Awesome falsehood](https://github.com/kdeldycke/awesome-falsehood): biases that influence developers' decisions
- [Awesome hacking](https://github.com/Hack-with-Github/Awesome-Hacking): repositories useful to hackers, pentesters and security researchers
- 💯 [Awesome security](https://github.com/sbilly/awesome-security): tools and resources about security
- [Awesome pentest](https://github.com/enaqx/awesome-pentest): tools and resources about penetration testing
- 💯 [Awesome test automation](https://github.com/atinfo/awesome-test-automation/blob/master/README.md): frameworks, tools and libraries for different programming languages
- [Awesome visual regression](https://github.com/mojoaxel/awesome-regression-testing): tools to perform visual regression testing
- [How they test](https://github.com/abhivaikar/howtheytest): how software companies test their products and build their quality culture
- ⭐️ [Big list of naughty strings](https://github.com/minimaxir/big-list-of-naughty-strings): strings with a high probability of causing issues when used as input data
- 💯 [FreeLearningResourcesForSoftwareTesters](https://github.com/PaulWaltersDev/FreeLearningResourcesForSoftwareTesters): exactly what the name suggests

## Checklists

- 💯 [Front-End-Checklist](https://frontendchecklist.io/): interactive front-end checklist for modern websites and meticulous developers
- [Web page functionality checklist](https://www.ministryoftesting.com/dojo/lessons/checklist-for-testing-web-page-functionality): most common and basic issues that affect web pages
- [API security checklist](https://github.com/shieldfy/API-Security-Checklist): most important security concerns when developing your API

---

⚠️ **TODO: CHECK MY EXTENSIONS**

- Exploration >> TestBuddy
