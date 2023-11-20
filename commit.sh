#!/bin/bash

jekyll build
git checkout source

# Argument for the added files
added_files=$1
git add "$added_files"

# Argument for the commit message
commit_message="$2"
git commit -m "$commit_message"

git branch -D master
git checkout -b master
git filter-branch --subdirectory-filter _site/ -f
git checkout source
git push --all origin