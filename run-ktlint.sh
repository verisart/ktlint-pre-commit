#!/usr/bin/env sh
set -e
./ktlint -F $@ && git add $@

