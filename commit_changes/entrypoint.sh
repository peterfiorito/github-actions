#!/bin/sh
set -e

if [ -z "$(git status --porcelain)" ]; then
    echo "no changes"
else 
    sh -c "git config --global user.name 'FrontEnd Helper' \
      && git config --global user.email 'email@domain.co.uk' \
      && git add -A && git commit -m '$*' --allow-empty \
      && git push -u origin HEAD"
fi