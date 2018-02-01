#!/bin/bash

#################
# Logging
#################

function log_task {
    echo_blue ""
    echo_blue "### ${1}"
    echo_blue ""
}

function run_step {
    echo_yellow "${1}"
    eval "${1}"
}

#################
# Colored output
#################

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 6`
reset=`tput sgr0`

function echo_red {
    echo "${red}${1}${reset}"
}

function echo_green {
    echo "${green}${1}${reset}"
}

function echo_yellow {
    echo "${yellow}${1}${reset}"
}

function echo_blue {
    echo "${blue}${1}${reset}"
}
