#!/usr/bin/env bash
if [ $(whoami) != 'root' ]; then
        echo "Must be root to run $0"
        exit 1;
fi
