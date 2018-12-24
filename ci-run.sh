#!/bin/bash
#set -o xtrace #enables debug

set -e
source ./ci-helpers.sh

log_task 'Check for broken internal links (TODO: REPLACE IT, because it detects false positives)'
run_step "remark -u validate-links docs --ignore-path .remarkignore"

log_task 'Check for broken external links'
run_step "awesome_bot --allow-redirect --allow-dupe --skip-save-results docs/**/*.md"
