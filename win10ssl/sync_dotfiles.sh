#!/bin/bash

# Synchronize dotfiles in home directory with repository files

echo -n "DO YOU WISH TO SYNCHRONIZE DOTFILES? Y/N: "
read PROCEED

if [ ${PROCEED} == "N" ]; then
    echo "EXITING..."
    exit 1
elif [ ${PROCEED} == "Y" ]; then
    for file in .{bashrc,bash_profile,path,bash_prompt,exports,aliases,functions,extra}; do
        [ -r "$file" ] && [ -f "$file" ] && cp -v "./$file" "$HOME/$file";
        #[ -r "$file" ] && [ -f "$file" ] && echo "$file is here";
    done;
fi

echo "FILES SYNCHRONIZED.  UPDATED:"

for file in .{bashrc,bash_profile,path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && echo "$file";
done;
