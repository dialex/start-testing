# Tester's toolkit

> **tl;dr** SUMMARY_HERE

**Legend**:

- 💯 highly recomended
- ⭐️ better than the average
- 🤷‍♂️ still needs a proper revie
- A tool might not be listed if it is too expensive, closed-source, or not good enough

## UI - Accessibility

- 💯 Webhint ([IDE/CLI/extension](https://webhint.io/)): checks your web page for browser compatibility, acessibility, performance and security issues, plus common mistakes; neat report; proper issue justification and mitigation
- ⭐️ WAVE ([extension](https://wave.webaim.org/)): check your web page for compliance with WCAG; the issues are displayed contextually on the page itself; for each issue, an explanation in simple English is provided
- axe ([extension](https://chrome.google.com/webstore/detail/axe-web-accessibility-tes/lhdoppojpmngadmnindnejefpokejbdd)): the standard for online accessibility checking; test results are not as visually appealing as the other tools
- HTML validator ([extension](https://chrome.google.com/webstore/detail/html-validator/mpbelhhnfhfjnaehkcnnaknldmnocglk)): checks the [markup validity](https://validator.w3.org/docs/help.html#validation_basics) of your web page

## UI - Design?

- [PerfectPixel](https://chrome.google.com/webstore/detail/perfectpixel-by-welldonec/dkaagdgjmgdmbnecmcefdhjekcoceebi?hl=en) (extension): overlap UI mockup on top of your page and look for mismatches
- [ColorZilla](https://chrome.google.com/webstore/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp?hl=en) (extension): pick any color from your web page
- [CSS Selector Tester](https://chrome.google.com/webstore/detail/css-selector-tester/bbklnaodgoocmcdejoalmbjihhdkbfon) (extension): given a CSS selector, highlights the selection in the page itself 

## API

- 💯 [Postman](https://www.postman.com/) (app/cli): interact/mock APIs, automate checks, collaborate with your team
- 💯 Wiremock ([CLI](http://wiremock.org/)): simulates API responses according to your configuration (mock)

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

- 💯 [RestAssured](https://github.com/rest-assured/rest-assured): API testing in Java
- [Testing library](https://testing-library.com/): methods to query the DOM like how the user finds elements on the page
- 💯 [the-internet](https://the-internet.herokuapp.com/): examples of UI components, ready for your automation experiments
- 🤷‍♂️ [Stryker](https://stryker-mutator.io/): mutation testing for JavaScript/.NET

## Exploration in testing

- 🤷‍♂️ [ExploratoryTesting](https://chrome.google.com/webstore/detail/exploratory-testing-chrom/khigmghadjljgjpamimgjjmpmlbgmekj) (extension): report bugs, ideas, notes and questions as you explore; export as HTML
- 🤷‍♂️ [Test & Feedback](https://chrome.google.com/webstore/detail/test-feedback/gnldpbnocfnlkkicnaplmkaphfdnlplb) (extension): report bugs and tasks as you explore; export as HTML; VSTS integration

## Productivity

- 💯 VS Code
  - extensions here
- 💯 Fork
- [Form Filler](https://chrome.google.com/webstore/detail/form-filler/bnjjngeaknajbdcgpfkgnonkmififhfo) (extension): automates form filling with testing data
- Clippy
- 🤷‍♂️ [Vysor](https://www.vysor.io/): control your Android from your laptop

## Cross-browser testing

- BrowserStack ([SaaS](https://www.browserstack.com/)): run the same tests, in parallel, on multiple browsers
- 🤷‍♂️ SauceLabs ([SaaS](https://saucelabs.com/)): run the same tests, in parallel, on multiple browsers

## SEO

- 🤷‍♂️ Tag Assistant ([extension](https://chrome.google.com/webstore/detail/tag-assistant-by-google/kejbdjndbnbjgmefkgdddjlbokphdefk?hl=en)): troubleshoot installation of Google tags (analytics, tag manager, etc.)

## Network

- Wireshark (app): log requests between your computer and the Internet
- 🤷‍♂️ Fidder ([app](https://www.telerik.com/fiddler)): log requests between your computer and the Internet and fiddle with request/response
- 🤷‍♂️ Request Maker ([extension](https://chrome.google.com/webstore/detail/request-maker/kajfghlhfkcocafkcjlajldicbikpgnp)): log requests made by web pages, tamper with the URL, headers and POST data

## Security

- 💯 OWASP ZAP ([app](https://www.zaproxy.org/)): scans your website for the [OWASP Top 10](https://owasp.org/www-project-top-ten/) vulnerabilities     

## Monitoring & Dashboards

- 💯 Grafana ([SaaS](https://grafana.com/)): open-source monitoring, log analysis and dashboards
- ⭐️ Datadog ([SaaS](https://www.datadoghq.com/)): closed-source monitoring, log analysis and dashboards
- PowerBI ([SaaS](https://powerbi.microsoft.com/)): Microsoft's closed-source dashboards
- 🤷‍♂️ [TestRail](https://www.gurock.com/testrail/) (SaaS): stores test results and provides statistics and dashboards

## Documentation

- 💯 Typora ([app](https://typora.io/)): cross-platform Markdown editor with embedded live preview; pleasant UX; distraction free UI; exports to PDF, HTML and more
- 💯 Marp Next ([IDE/CLI/SaaS](https://marp.app/)): create slide decks using Markdown with live preview
- 💯 Mermaid.js ([SaaS](https://mermaid-js.github.io/mermaid/#/)): generates diagrams from markdown text
- 💯 Mindmup ([Saas](https://www.mindmup.com/)): draw mind maps directly in Google Drive, with real-time collaboration
- 💯 XMind (app): draw mind maps offline with a clean/professional look; pleasant UX

## Reporting

- 🤷‍♂️ Allure ([cli](https://github.com/allure-framework/allure2)): reads your test execution data and generates an HTML report
- Mochawesome ([cli](https://github.com/adamgruber/mochawesome#readme)): reads your JavaScript test execution data and generates an HTML report

## Emails

- 🤷‍♂️ Mailinator ([SaaS](https://www.mailinator.com/)): create a public test inbox, use their API to query emails received (no sign-up)
- 🤷‍♂️ Mapil ([Saas](https://mapil.co/)): create a private test inbox, use their API to query emails received (requires sign-up)
- ⭐️ Litmus ([SaaS](https://litmus.com/)): preview the same email on multiple email clients and devices

## Bug reporting

- 💯 Licecap ([app](https://www.cockos.com/licecap/)): cross-platform screen recorder to compressed GIF
- 💯 Full page screen capture ([extension](https://chrome.google.com/webstore/detail/full-page-screen-capture/fdpohaocaechififmbbbbbknoalclacl/related?hl=en)): create a screenshot of the entire web page
- Lightshot ([extension](https://chrome.google.com/webstore/detail/lightshot-screenshot-tool/mbniclmhobmnbdlbpiphghaielnnpgdp?hl=en)): take a screenshot and annotate it

## Visual (regression)

- 🤷‍♂️ Applitools ([SaaS](https://applitools.com/)): screenshots your pages and detects visual changes between executions
- 🤷‍♂️ Chromatic ([SaaS](www.chromatic.com)): screenshots your pages and detects visual changes between executions
- 🤷‍♂️ Wraith ([CLI](https://github.com/BBC-News/wraith)): screenshots your pages and detects visual changes locally; open-source
- 🤷‍♂️ Appraise ([CLI](https://github.com/AppraiseQA/appraise)): screenshots your pages and detects visual changes locally; open-source
- 🤷‍♂️ Galen Framework ([CLI](http://galenframework.com/)): tests location of UI components relative to each other using DSL; open-source

## Performance

- ⭐️ JMeter ([app](https://jmeter.apache.org/)): load tests your website and measures performance
- 🤷‍♂️ Gatling ([app/SaaS](https://gatling.io/)): load tests your website displays results in dashboards
- 🤷‍♂️ Sitespeed.io ([app](https://www.sitespeed.io/)): monitors and measures the performance of your web site
- 🤷‍♂️ [chaosmonkey](https://github.com/Netflix/chaosmonkey) (CLI): resilience test that randomly terminates production VMs and containers

## Privacy

- 💯 Ghostery ([extension](https://chrome.google.com/webstore/detail/ghostery-–-privacy-ad-blo/mlomiejdfkolichcflejclcbmpeaniij)): measures the number of ads and trackers in a specific page
- 💯 TunnelBear ([app](https://www.tunnelbear.com/)): pretends your machine is in a different country with a different IP
- ⭐️ [User Agent Switcher](https://chrome.google.com/webstore/detail/user-agent-switcher-for-c/djflhoibgkdhkhhcedjiklpkjnoahfmg) (extension): easily switch between user-agent strings

## Prototyping

- 🤷‍♂️ InVision ([SaaS](https://www.invisionapp.com/)): prototype mobile and web apps (can be functional or just designs)
- 🤷‍♂️ Marvel ([SaaS](https://marvelapp.com/)): prototype mobile and web apps (can be functional or just designs)

## Lists of resources

- ℹ️ [The "awesome" manifesto](https://github.com/sindresorhus/awesome/blob/master/awesome.md): enumerates the requirements for an awesomely curated list
- [Awesome falsehood](https://github.com/kdeldycke/awesome-falsehood): biases that influence developers' decisions
- [Awesome hacking](https://github.com/Hack-with-Github/Awesome-Hacking): repositories useful to hackers, pentesters and security researchers
- [Awesome pentest](https://github.com/enaqx/awesome-pentest): tools and resources useful for penetration testing
- [Awesome test automation](https://github.com/atinfo/awesome-test-automation/blob/master/README.md): list of frameworks, tools and libraries for different programming languages
- [Big list of naughty strings](https://github.com/minimaxir/big-list-of-naughty-strings): strings with a high probability of causing issues when used as input data
- [FreeLearningResourcesForSoftwareTesters](https://github.com/PaulWaltersDev/FreeLearningResourcesForSoftwareTesters): exactly what the name suggests

## Checklists

- 💯 [Front-End-Checklist](https://frontendchecklist.io/): interactive front-end checklist for modern websites and meticulous developers
- [Web page functionality checklist](https://www.ministryoftesting.com/dojo/lessons/checklist-for-testing-web-page-functionality): most common and basic issues that affect web pages
- [API security checklist](https://github.com/shieldfy/API-Security-Checklist): most important security concerns when developing your API

-----

## ⚠️ BUCKET

- [IE11 virtual machines](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/)
- 💯 Bookmarklet ([SaaS](https://mrcoles.com/bookmarklet/)): stores Javascript code as a browser bookmark button

⚠️ **TODO: CHECK MY EXTENSIONS** and installed tools

- Exploration >> TestBuddy
- 💯 [BugMagnet](https://chrome.google.com/webstore/detail/bug-magnet/efhedldbjahpgjcneebmbolkalbhckfi): quick access to test strings relevant for boundary testing

⚠️ **TODO: REVIEW ACTIVE VOICE (e.g. capture -> captures)**

⚠️ **TODO: MOVE LINKS TO NAMES instead of e.g. (SaaS)**

## Sources

- [title](#link)
