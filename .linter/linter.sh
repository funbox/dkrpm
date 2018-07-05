#!/usr/bin/env bash

# Path for custom shellcheck utility
if [[ -z "$SHELLCHECK_PATH" ]] ; then
    SHELLCHECK_PATH=$(command -v shellcheck)
fi

# Ignore errors for shellcheck linter
if [[ -z "$SHELLCHECK_OPTS" ]] ; then
    export SHELLCHECK_OPTS='-e SC2034 -e SC2181 -e SC2015 -e SC2154 -e SC1117'
fi

# Run linter
if [[ -x "$SHELLCHECK_PATH" ]] ; then
    "$SHELLCHECK_PATH" "$@"
else
    echo
    echo "Shellcheck is not installed or cannot be found at \$PATH."
    echo
    echo "Follow the installation instructions on the official site to resolve this issue:"
    echo "<https://github.com/koalaman/shellcheck#installing>"
    exit 1
fi

