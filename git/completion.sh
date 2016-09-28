#!/usr/bin/env bash

# Download & source a git autocompletion script

GIT_COMPLETION_FILE=$HOME/.git-completion.bash

if [[ ! ( -f $GIT_COMPLETION_FILE ) ]]; then
  REMOTE_GIT_COMPLETION_FILE_URL=https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
  curl $REMOTE_GIT_COMPLETION_FILE_URL -o $GIT_COMPLETION_FILE
fi

if [[ -f $GIT_COMPLETION_FILE ]]; then
  source $GIT_COMPLETION_FILE
fi
