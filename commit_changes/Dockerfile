
FROM alpine/git:1.0.7

LABEL "name"="auto-commit"

LABEL "com.github.actions.name"="Auto-commit for GitHub Actions"
LABEL "com.github.actions.description"="Auto-commits and changes back to the branch"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="orange"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]