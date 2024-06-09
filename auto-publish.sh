#!/bin/bash

# Set the target directory to the provided argument, or use the current directory
script_dir="$(pwd)"
target_directory="${1:-.}"

# echo "run script > $script_dir/make-repo-ssh.sh from $target_directory"

cd "$target_directory"
sh "$script_dir/make-repo-ssh.sh"
npx @dobuki/autocommit
np --no-cleanup
