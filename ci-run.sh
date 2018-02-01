#!/bin/bash
#set -o xtrace #enables debug

source ./ci-helpers.sh

log_task "Check for linting issues"
run_step "markdownlint docs --config docs/.markdownlint.json"

#log_task 'Check for spelling mistakes'
