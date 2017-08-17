#!/usr/bin/env bash

# This checks to see if a command is available on a linux system
function is_command() {
    if [ -x "$(command -v ${1})" ]; then
        return 0
    else
        return 1
    fi
}

## Examples
#if is_command "yum" ; then
#  echo "This is probably a Centos or Redhat box, because yum is it's package manager"
#fi
#
#if is_command "pip" ; then
#  echo "Python package installer exists pip"
#fi
