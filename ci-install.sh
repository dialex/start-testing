#!/bin/bash
#set -o xtrace #enables debug

source ./ci-helpers.sh

log_task "Install JavaScript tool dependencies"
run_step "npm i -g markdownlint-cli markdown-spellcheck remark-cli remark-validate-links"

log_task "Install Ruby tool dependencies"
run_step "gem install --no-ri --no-rdoc awesome_bot"
