FROM node:10-slim

LABEL "com.github.actions.name"="Jest tests"
LABEL "com.github.actions.description"="Runs Jest units tests"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/reponame/repo"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]