#!/bin/sh
set -e

git_setup ( ) {
  cat <<- EOF > $HOME/.netrc
        machine github.com
        login $GITHUB_ACTOR
        password $GITHUB_TOKEN
        machine api.github.com
        login $GITHUB_ACTOR
        password $GITHUB_TOKEN
EOF
    chmod 600 $HOME/.netrc

    git config user.email "$GITHUB_ACTOR@users.noreply.github.com"
    git config user.name "$GITHUB_ACTOR"
}

if [ -z "$(git status --porcelain)" ]; then
    echo "Working tree clean. Nothing to commit."
else 
    git_setup

    git checkout "$(echo $GITHUB_REF | sed -E 's|refs/[a-zA-Z]+/||')"

    git add .

    git commit -m "Commit bundles"

    git push --set-upstream origin "$(echo $GITHUB_REF | sed -E 's|refs/[a-zA-Z]+/||')"
fi
