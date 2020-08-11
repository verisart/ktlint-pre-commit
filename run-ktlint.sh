#!/usr/bin/env sh
set -e
mkdir -p .cache
cd .cache
if [ ! -f ktlint ]
then
    curl -sSL -o ktlint$$.tmp https://github.com/shyiko/ktlint/releases/download/0.37.2/ktlint
    cp ktlint$$.tmp ktlint
    # Needed for https://github.com/moby/moby/issues/9547 ?
    sync
    chmod 755 ktlint
fi
cd ..

.cache/ktlint -F $@ && git add $@

