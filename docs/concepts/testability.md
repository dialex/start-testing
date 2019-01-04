# Testability

> **tl;dr** SUMMARY_HERE

## Theory

Testability measures our ability to test -- how skilled we are, how easy it is to test, and how deep we can go.

## Practice

### Testability assessment

This checklist adapted from [Ash Winter](https://testingisbelieving.blogspot.com/2017/08/the-team-test-for-testability.html) can be used for a quick **health check on your testability**. For each question answer Yes (+1) or No (+0). If your final score is below 8, you are working under unnecessary risk.

1. Do developers react positively when a bug is reported?
1. Can anyone access a prioritised list of the open bugs?
1. Is it possible to simulate a failure of a dependency (eg. 3rd party)?
1. Does your team measure critical metrics about the system?
1. Can any team member run automated checks?
1. Can any team member test an unfinished feature from their machines?
1. Can you set your system into a given state to repeat a test?
1. Can any team member create a test environment?
1. Can you test on production (eg. feature flags)?
1. Is it possible to see and query logs from production?
1. Does your team have regular contact with the users of the system?
1. Does your team maintain a knowledge base on how their system is built and tested?

If you were unsatisfied with score you got, there are methods to improve it. Of course you have ~~boring~~ ~~expensive~~ [maturity models](https://www.tmmi.org/tmmi-documents/#) in the market to formally evaluate your testability. However, if you prefer something simple and tailored for your team you can use the [**Test Improvement Assessment**](http://www.huibschoots.nl/wordpress/wp-content/uploads/2017/02/Test-Improvement-Huib-Schoots-Joep-Schuurkes.pdf). Essentially your team selects which testability criteria are relevant for your context, scores them and finally agrees on how to improve.

### Error messages

Every error is an obstacle that gets in the way of what users are trying to do. A reliable system detects unexpected or unwanted events, tries to gracefully recover from them, and finally warns the user about it.

Think carefully about the message, ie. what caused it and who will read it. A good error message helps the user solve the problem and move on. An unhelpful message can mean the difference between continuing or giving up.

- **Find the right tone**
  - 👎 Avoid being too technical or detailed
  - 👍 Be positive without sounding goofy
- **Explain what happened and why**
  - 👎 *You're ineligible for this offer*
  - 👍 *You've taken a trial before, so you're not eligible for this offer*
- **Suggest a next step**
  - 👎 *App is out of date*
  - 👍 *To keep using the app, download the latest version here*

Notice that the "user" can be a developer or someone from the customer support.

## Teachers

- [Huib Schoots](https://twitter.com/huibschoots)

## Sources

- [Test improvement in an agile/CD environment](http://www.huibschoots.nl/wordpress/?p=2543)
- [The team test for testability](https://testingisbelieving.blogspot.com/2017/08/the-team-test-for-testability.html)
- [The Art of the Error Message](https://medium.com/s/user-friendly/the-art-of-the-error-message-9f878d0bff80)
