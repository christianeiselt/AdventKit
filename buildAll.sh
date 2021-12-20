#!/bin/bash

# We want this to output $PATH without expansion
# shellcheck disable=SC2016
find -s . -name "AdventKit" -type d \
	-exec echo Building {} \; \
	-exec sh -c 'pushd . > /dev/null; cd "$1"; swift build -c release; popd > /dev/null' sh {} \;
