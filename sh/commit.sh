#!/bin/bash

# Ask for files to add
read -p "Enter files to add (default: all): " files
files=${files:-"."}
git add $files

# Ask for commit message
read -p "Enter commit message (default: '-'): " message
message=${message:-"-"}
git commit -m "$message"

# Get current branch
branch=$(git symbolic-ref --short HEAD)

# Push to origin
git push origin $branch
