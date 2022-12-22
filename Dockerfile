FROM python:3.8

LABEL "com.github.actions.name"="pip-compile Diff Checker"
LABEL "com.github.actions.description"="Run pip-compile, check for diffs to compare against existing requirements.txt."
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="106a4e"
LABEL "repository"="https://github.com/theahura/pip-compile-diff-action"
LABEL "homepage"="https://github.com/theahura/pip-compile-diff-action"
LABEL "maintainer"="Amol Kapoor <amoljaykapoor@gmail.com>"

RUN pip install --upgrade pip
RUN pip install pip-tools==6.12.1

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
