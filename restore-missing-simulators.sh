#!/usr/bin/env bash

# Reason:
# I have some bug on my system which makes all installed simulators on my Xcode missing.
# This will reset `Xcode` and `CoreSimulatorService` and make simulators re-appear in the Xcode list

osascript -e 'do shell script "pkill -9 -fi Xcode CoreSimulatorService" with administrator privileges with prompt "Unfortunately Administrator privileges are required to properly kill CoreSimulatorServices and Xcode."'