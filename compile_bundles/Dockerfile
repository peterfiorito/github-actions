FROM node:10-slim

LABEL "com.github.actions.name"="Compile bundles"
LABEL "com.github.actions.description"="Compiles javascript bundles"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/reponame/repo"

ADD entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]