#!/usr/bin/env bash

# Ignore errors for shellcheck linter
export SHELLCHECK_OPTS="-e SC2059 -e SC2034 -e SC1090 -e SC2154"

# Run linter
shellcheck "$@"
