#!/bin/bash

echo '############################################################'
echo '# Check Markdown files for linting issues'
echo '############################################################'

markdownlint docs --config docs/.markdownlint.json
