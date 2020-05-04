# Tester's toolkit

> **tl;dr** SUMMARY_HERE

**Legend**:

- 💯 highly recomended
- ⭐️ better than the average
- 🤷‍♂️ still needs a proper review

## UI - Accessibility

- 💯 Webhint ([IDE/CLI/extension](https://webhint.io/)): checks your web page for browser compatibility, acessibility, performance and security issues, plus common mistakes; neat report; proper issue justification and mitigation
- ⭐️ wave ([extension](https://wave.webaim.org/)): check your web page for compliance with WCAG; the issues are displayed contextually on the page itself; for each issue, an explanation in simple English is provided
- axe ([extension](https://chrome.google.com/webstore/detail/axe-web-accessibility-tes/lhdoppojpmngadmnindnejefpokejbdd)): the standard for online accessibility checking; test results are not as visually appealing as the other tools
- HTML validator ([extension](https://chrome.google.com/webstore/detail/html-validator/mpbelhhnfhfjnaehkcnnaknldmnocglk)): checks the [markup validity](https://validator.w3.org/docs/help.html#validation_basics) of your web page

## UI - Design?

- [Google Design](https://design.google/resources/)

## API

- 💯 Postman ([app](https://www.postman.com/)):
- 💯 Wiremock ([CLI](http://wiremock.org/)): simulates API responses according to your configuration (mock)

## Web testing frameworks

- 💯 [Cypress](https://www.cypress.io/): acceptance tests in JavaScript ([review]())
- [SpecFlow](https://specflow.org/): acceptance tests in .NET/C#
- [Serenity](https://github.com/serenity-bdd/serenity-core): acceptance tests in Java
- 🤷‍♂️ [Selenide](https://selenide.org/): acceptance tests in Java
- [Robot Framework](https://robotframework.org/): acceptance tests in Python ([review]())
- [Capybara](https://github.com/teamcapybara/capybara): acceptance tests in Ruby

## Web testing libraries

- 💯 [RestAssured](https://github.com/rest-assured/rest-assured): API testing in Java
- [Testing library](https://testing-library.com/): methods to query the DOM in a way that's similar to how the user finds elements on the page

## Mobile testing

- 🤷‍♂️ Appium ([CLI](http://appium.io/)): cross-platform test automation tool for mobile, web and desktop apps; open-source

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

## Documentation

- 💯 Typora ([app](https://typora.io/)): cross-platform Markdown editor with embedded live preview; pleasant UX; distraction free UI; exports to PDF, HTML and more
- 💯 Marp Next ([IDE/CLI/SaaS](https://marp.app/)): create slide decks using Markdown with live preview
- 💯 Mermaid.js ([SaaS](https://mermaid-js.github.io/mermaid/#/)): generates diagrams from markdown text
- 💯 Mindmup ([Saas](https://www.mindmup.com/)): draw mind maps directly in Google Drive, with real-time collaboration

## Test reporting

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

## Privacy

- 💯 Ghostery ([extension](https://chrome.google.com/webstore/detail/ghostery-–-privacy-ad-blo/mlomiejdfkolichcflejclcbmpeaniij)): measures the number of ads and trackers in a specific page
- 💯 TunnelBear ([app](https://www.tunnelbear.com/)): pretends your machine is in a different country with a different IP

## Prototyping

- 🤷‍♂️ InVision ([SaaS](https://www.invisionapp.com/)): prototype mobile and web apps (can be functional or just designs)
- 🤷‍♂️ Marvel ([SaaS](https://marvelapp.com/)): prototype mobile and web apps (can be functional or just designs)

## ⚠️ BUCKET

- [IE11 virtual machines](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/)
- 💯 Bookmarklet ([SaaS](https://mrcoles.com/bookmarklet/)): stores Javascript code as a browser bookmark button
- 🤷‍♂️ Nightwatch
- 🤷‍♂️ Testcafe
- 🤷‍♂️ Puppeteer

⚠️ **TODO: CHECK MY EXTENSIONS** and installed tools

- Exploration >> TestBuddy

⚠️ **TODO: REVIEW ACTIVE VOICE (e.g. capture -> captures)**

## Sources

- [title](#link)
