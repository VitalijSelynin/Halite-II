#!/usr/bin/env bash

set -e # Exit immediately if a command exits with a non-zero status.

. ./include.sh

createFolder "$gameFolder"

cd "$gameFolder"
../halite -d "240 160" "python3 ../MyBot.py" "python3 ../MyBot.py"
cd ..

# ---------------------------------------------------------
# Create zip file for bot deployment
# TODO: Change the bot name to a unique id (git hash?)
createFolder "$zipFolder"

zip "$zipFolder"/"$fileName" MyBot.py
zip -r "$zipFolder"/"$fileName" hlt

# ---------------------------------------------------------
