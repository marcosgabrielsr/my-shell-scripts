#!/bin/bash

# Get the PATH of repository
REPOPATH="$(cd $(dirname "$0") && pwd)"
FUNCTIONSPATH="$REPOPATH/functions"
SCRIPTSPATH="$REPOPATH/scripts"

echo "$REPOPATH"
echo "$FUNCTIONSPATH"
echo "$SCRIPTSPATH"

