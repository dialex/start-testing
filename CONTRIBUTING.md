# Contributing

Welcome! Here's what you need to know when contributing to this repo.

## Folders & Files

- `docs`: markdown files that will be converted into html pages by [docsify](https://docsify.js.org/#/)
- `.spelling`: used by [markdown-spellcheck](https://www.npmjs.com/package/markdown-spellcheck) to whitelist words

## Tasks

```shell
build       # install all dependencies required to run this project
site        # runs the website locally on your machine
lint        # performs lint validations on all relevant *.md files
pr:prepare  # checks if your branch is good enough for a Pull Request
pr:ready    # makes your branch ready for Pull Request (increments version)
test        # checks if the live website is ok
clean       # deletes unversioned generated files
```

To run a task use `npm run <task>`, e.g. `npm run pr:prepare`.

## Details

### How to use [Markdown linting](https://github.com/DavidAnson/markdownlint)

- Install: `npm i -g markdownlint-cli`
- Run validation: `markdownlint docs --config .markdownlint.json`

Configure which [rules](https://github.com/DavidAnson/markdownlint#rules--aliases) or [groups of rules](https://github.com/DavidAnson/markdownlint#tags) should be globally [used](https://github.com/DavidAnson/markdownlint#optionsconfig) with a `.markdownlint.json` file.
