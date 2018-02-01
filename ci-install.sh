#!/bin/bash
#set -o xtrace #enables debug

source ./ci-helpers.sh

log_task "Install tool dependencies"
run_step "npm i -g markdownlint-cli"
