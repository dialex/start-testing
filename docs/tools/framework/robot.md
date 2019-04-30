# Robot Framework

> Robot Framework is a test automation framework for acceptance testing (…) it utilises the keyword-driven testing approach. Its testing capabilities can be extended by Python test libraries.
>
> — [Official website](http://robotframework.org/)

## Code

Example of automation at [GitHub](https://github.com/dialex/tree/master/start-testing/code/framework/robot).

## Review

| Category | Opinion | Score |
| -------- | ------- | :---: |
| _Use cases_        | Automate end-to-end tests using the UI. You can also use it quite well for contract or API tests (though not as explicit as [RestAssured](http://rest-assured.io/)). | 🥈 |
| _Learning curve_   | You will quickly master the Robot syntax, as it's close to plain English. The framework "just works" and you don't need to know much about it. | 🥇 |
| _Language_         | Tests are written in Robot, and supports Gherkin. Even though it's easy, it's yet another syntax your team needs to learn. | 🥈 |
| _Ecosystem_        | Python. [Enough libraries](https://github.com/fkromer/awesome-robotframework/blob/master/README.md) for most use cases. PyCharm as not helpful an IDE, so I used a regular Python text editor like VS Code. | 🥈 |
| _Readability_      | The keyword-driven approach makes your tests easy to understand. The test report file gives you an overview of the results, yet allows you to drill down to details. | 🥇 |
| _Extensibility_    | You can create your own keywords to increase the abstraction, or compose them with existing keywords. Not easy to add custom code. | 🥈 |
| _Maintainability_  | Refactoring keeps the code base understandable, although without a proper IDE it gets cumbersome. Limited debug. | 🥈 |
| _Documentation_    | The online doc is enough and clear. There are enough examples online. There are also tutorials and courses. | 🥈 |
| **VERDICT**        | Good for small or simple projects, otherwise has limitations. | **4/5** |
