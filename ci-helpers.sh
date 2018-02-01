#!/bin/bash

function log_task {
    echo ""
    echo "### " "${1}"
    echo ""
}

function run_step {
    echo "${1}"
    eval "${1}"
}
