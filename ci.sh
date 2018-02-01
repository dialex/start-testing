#!/bin/bash
#set -o xtrace #enables debug

# ============================================================
# Helpers
# ============================================================

function log_task {
    echo ""
    echo "### " "${1}"
    echo ""
}

function run_step {
    echo "${1}"
    eval "${1}"
}

# ============================================================
# Run Continuous Integration
# ============================================================

log_task "Check for linting issues"
run_step "markdownlint docs --config docs/.markdownlint.json"

#log_task 'Check for spelling mistakes'
