#!/bin/bash

# Get the PATH of repository
REPO_PATH="$(cd $(dirname "$0") && pwd)"
FUNCS_PATH="$REPO_PATH/functions"
SCRIPTS_PATH="$REPO_PATH/scripts"

# Load the varibles paths on .bashrc
if grep -q "export FUNCS_PATH=\"$FUNCS_PATH\"" ~/.bashrc; then
    echo "This Variable are already included on .bashrc"
else
    echo "export FUNCS_PATH=\"$FUNCS_PATH\"">> ~/.bashrc
fi

if grep -q "export SCRIPTS_PATH=\"$SCRIPTS_PATH\"" ~/.bashrc; then
    echo "This Variable are already included on .bashrc"
else
    echo "export SCRIPTS_PATH=\"$SCRIPTS_PATH\"" >> ~/.bashrc
fi

# Command that load the functions and scripts files on .bashrc
COMMAND_LOAD_FUNCTIONS='for script in $FUNCS_PATH/*.sh; do [ -r "$script" ] && source "$script"; done'
COMMAND_LOAD_SCRIPTS='for script in $SCRIPTS_PATH/*.sh; do [ -r "$script" ] && source "$script"; done'

# Add commands to .bashrc if not already present
if ! grep -q "$COMMAND_LOAD_FUNCTIONS" ~/.bashrc; then
    echo "$COMMAND_LOAD_FUNCTIONS" >> ~/.bashrc
fi

if ! grep -q "$COMMAND_LOAD_SCRIPTS" ~/.bashrc; then
    echo "$COMMAND_LOAD_SCRIPTS" >> ~/.bashrc
fi

# Final message
echo "Setup completed. Run 'source ~/.bashrc' or restart your terminal to apply changes."