#!/usr/bin/env bash

# Ignore errors for shellcheck linter
export SHELLCHECK_OPTS='-e SC2034 -e SC2181 -e SC2015 -e SC2154 -e SC1117'

# Run linter
if type shellcheck &>/dev/null ; then
    shellcheck "$@"
else
    echo
    echo "Shellcheck is not installed or cannot be found at \$PATH."
    echo
    echo "Follow the installation instructions on the official site to resolve this issue:"
    echo "<https://github.com/koalaman/shellcheck#installing>"
    exit 1
fi
