#!/bin/bash

DOT_DIR="${HOME}/dotfiles"

cd $DOT_DIR
for f in .??*; do
  [[ $f = ".git" ]] && continue
  [[ $f = ".gitignore" ]] && continue
  [[ $f = ".config" ]] && continue
  ln -s ${DOT_DIR}/${f} ${HOME}/
done

cd dotConfig
for f in *; do
  ln -s ${DOT_DIR}/dotConfig/${f} ${HOME}/.config/
done
