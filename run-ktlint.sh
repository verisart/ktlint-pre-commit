#!/bin/bash
DIR="$(dirname "$0")"
set -e
"$DIR/ktlint" -F $@ && git add $@

