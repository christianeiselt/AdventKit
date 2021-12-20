#!/bin/bash

# We want this to output $PATH without expansion
# shellcheck disable=SC2016
find -s . -name "AdventKit" -type d \
	-exec echo Running {} \; \
	-exec sh -c 'pushd .  > /dev/null; cd "$1"; swift test  --enable-code-coverage --verbose; popd > /dev/null' sh {} \;
