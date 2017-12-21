🚧 *early access* 🚧 [![Linting Validation](https://travis-ci.org/dialex/start-testing.svg?branch=travis)](https://travis-ci.org/dialex/start-testing)

## About the project

This repo contains the source of our testing course.

- Written in Markdown, so that it's **cross-platform** 🌍
- Hosted in GitHub, so that **anyone can contribute** 🤝
- Rendered with Docsify, so that it **looks awesome** 😎

## Contributing

#### How to use [Docsify](https://github.com/QingWei-Li/docsify/)

Install

```shell
npm i -g docsify-cli
```

Setup a boilerplate folder

```shell
docsify init docs
```

Preview your docs locally

```shell
docsify serve docs
```

#### How to use [Markdown linting](https://github.com/DavidAnson/markdownlint)

Install

```shell
npm i -g markdownlint-cli
```

Execute validation

```shell
markdownlint docs --config .markdownlint.json
```

Configure which [rules](https://github.com/DavidAnson/markdownlint#rules--aliases) or [groups of rules](https://github.com/DavidAnson/markdownlint#tags) should be globally [used](https://github.com/DavidAnson/markdownlint#optionsconfig) with a `.markdownlint.json` file
