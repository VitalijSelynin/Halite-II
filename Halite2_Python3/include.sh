#!/usr/bin/env bash

# ---------------------------------------------------------
# Defined constants

gameFolder='Game'
zipFolder='archive'
fileName='submission.zip'

# ---------------------------------------------------------


# function to create folder and change directory into it
createFolder()
{
  folder=$1
  if [ -d "$folder" ]; then
    rm -r "$folder" # TODO: What if rm does not work?
  fi

  mkdir "$folder" # TODO: What if mkdir does not work?
}