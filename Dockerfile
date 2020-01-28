
FROM python:3

LABEL "com.github.actions.name"="flake8-Black linter"
LABEL "com.github.actions.description"="Check code format using flake8-black"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="https://github.com/bento007/flake8-black-action"
LABEL "homepage"="https://github.com/bento007/flake8-black-action"
LABEL "maintainer"="Trent Smith <trent.smith007@gmail.com>"

RUN pip install flake8-black

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
