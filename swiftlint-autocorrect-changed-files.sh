#!/usr/bin/env bash

LINT=Pods/SwiftLint/swiftlint
CONFIG_FLAG=""
CONFIG_FILE=".swiftlint.auto.yml"
CONFIG_FLAG="--config $CONFIG_FILE"

cd "$SRCROOT"

if [[ -e "${LINT}" ]]; then
    git ls-files -m -o | grep -e '\(.*\).swift$' | grep -v Pods | grep -v R.generated.swift | while read LINE; do
    $LINT autocorrect --path "${PWD}/${LINE}" --format --quiet $CONFIG_FLAG
    done
else
	exit 1
fi



