#!/bin/bash

if [[ -x /usr/bin/git  ]]; then
  GIT_FILES_DIR=$HOME/.dot-files/git

  if [[ ! ( -d $GIT_FILES_DIR ) ]]; then
    mkdir $GIT_FILES_DIR
  fi

  GIT_COMPLETION_FILE=$GIT_FILES_DIR/git-completion.bash

  if [[ ! ( -f $GIT_COMPLETION_FILE ) ]]; then
    REMOTE_GIT_COMPLETION_FILE_URL=https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
    curl $REMOTE_GIT_COMPLETION_FILE_URL -o $GIT_COMPLETION_FILE
  fi

  if [[ -f $GIT_COMPLETION_FILE ]]; then
    source $GIT_COMPLETION_FILE
  fi
fi
