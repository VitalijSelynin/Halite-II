#!/usr/bin/env bash

set -e # Exit immediately if a command exits with a non-zero status.

. ./include.sh

# ---------------------------------------------------------
# Defined constants

archiveBots='./submittedBots'
# ---------------------------------------------------------

cd ././../hlt_client/hlt_client/

./client.py bot -b ../../Halite2_Python3/"$zipFolder"/"$fileName"

cd "$archiveBots"

folderName=$(date +%Y-%m-%d_%H:%M:%S)
mkdir "$folderName"

cd "$folderName"

cp ../../../../Halite2_Python3/"$zipFolder"/"$fileName" ./