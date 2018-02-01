#!/bin/bash
set -o xtrace

# set +o xtrace
echo '############################################################'
echo '# Check Markdown files for linting issues'
echo '############################################################'
# set -o xtrace

markdownlint docs --config docs/.markdownlint.json

# set +o xtrace
echo '############################################################'
echo '# Check Markdown files for spelling mistakes'
echo '############################################################'
# set -o xtrace
