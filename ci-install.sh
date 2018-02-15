#!/bin/bash
#set -o xtrace #enables debug

source ./ci-helpers.sh

log_task "Install tool dependencies"
run_step "npm i -g markdownlint-cli markdown-spellcheck remark-cli remark-validate-links"
run_step "npm i -g markdownlint-cli markdown-spellcheck"
run_step "gem install --no-ri --no-rdoc awesome_bot"
