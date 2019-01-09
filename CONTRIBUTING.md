# Contributing

Welcome! Here's what you need to know to improve this repo.

## Folders

WIP

## Tasks

```shell
install     # install all dependencies required to run this project
run         # runs the website locally on your machine
build       # performs Continuous Integration validations (used by Travis)
lint        # performs lint validations on all relevant *.md files
pr:prepare  # checks if your branch is good enough for a Pull Request
test        # checks if the live website is ok
clean       # deletes unversioned generated files
```

## Details

### How to use [Markdown linting](https://github.com/DavidAnson/markdownlint)

- Install: `npm i -g markdownlint-cli`
- Run validation: `markdownlint docs --config .markdownlint.json`

Configure which [rules](https://github.com/DavidAnson/markdownlint#rules--aliases) or [groups of rules](https://github.com/DavidAnson/markdownlint#tags) should be globally [used](https://github.com/DavidAnson/markdownlint#optionsconfig) with a `.markdownlint.json` file.
