#!/usr/bin/env bash

set -e # Exit immediately if a command exits with a non-zero status.

# ---------------------------------------------------------
compileFolder='Compile'
gameFolder='Game'
# ---------------------------------------------------------


# function to create folder and change directory into it
createFolder()
{
  folder=$1
  if [ -d "$folder" ]; then
    rm -r "$folder" # TODO: What if rm does not work?
  fi

  mkdir "$folder" # TODO: What if mkdir does not work?
  cd "$folder" 
}

createFolder "$compileFolder"

cmake ../.
make MyBot

cd ..
createFolder "$gameFolder"

../halite -d "240 160" "../Compile/MyBot" "../Compile/MyBot"