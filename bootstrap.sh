#!/usr/bin/env bash

#mkdir -p ~/.vim/bundle

# Copy
! [ -d ~/.dotfile_backup ] && mkdir ~/.dotfile_backup
# For each of the files in the current directory that start with a '.'
for i in .*; do
  if ! [ "$i" == "." ] && ! [ "$i" == ".." ] && ! [ "$i" == ".git" ]; then
    # Back up: If it `exists` in the user's home (~) directory
    if [ -e ~/$i ]; then
      if ! ( cp -r ~/$i ~/.dotfile_backup/$i ) || ! ( rm -fr ~/$i || unlink ~/$i ); then
        echo "Failed on $i" > /dev/stderr
        exit 1
      fi
    fi
    # Link it
    #echo "Linked: $i" > /dev/stderr
    if ! (ln -sfv $(pwd)/$i ~/$i); then
     echo "Failed on $i" > /dev/stderr
     exit 1
    fi
  fi
done

#
exit 0
