#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

# Set value to the directory of this script file
DOTFILES_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

####################
# Set up sym links #
####################

# Shells
DOTFILES_SHELLS=$DOTFILES_ROOT/shells
ln -sfv "$DOTFILES_SHELLS/bash/bash_profile" $HOME/.bash_profile
ln -sfv "$DOTFILES_SHELLS/bash/bashrc" $HOME/.bashrc
ln -sfv "$HOME/.zsh/zshrc" $HOME/.zshrc

# Git
DOTFILES_GIT=$DOTFILES_ROOT/git
ln -sfv "$DOTFILES_GIT/gitconfig" $HOME/.gitconfig
ln -sfv "$DOTFILES_GIT/gitignore_global" $HOME/.gitignore_global

# Editors
DOTFILES_EDITORS=$DOTFILES_ROOT/editors
ln -sfv "$DOTFILES_EDITORS/vim/vimrc" $HOME/.vimrc
ln -sfv "$DOTFILES_EDITORS/neovim/nvim-init.vim" $HOME/.config/nvim/init.vim

# Language-specific configurations
DOTFILES_LANGUAGES=$DOTFILES_ROOT/languages
ln -sfv "$DOTFILES_LANGUAGES/js/eslintrc" $HOME/.eslintrc
ln -sfv "$DOTFILES_LANGUAGES/js/jshintrc" $HOME/.jshintrc

# Everything else (misc)
DOTFILES_MISC=$DOTFILES_ROOT/misc
ln -sfv "$DOTFILES_MISC/psqlrc" $HOME/.psqlrc
ln -sfv "$DOTFILES_MISC/sqliterc" $HOME/.sqliterc
ln -sfv "$DOTFILES_MISC/toprc" $HOME/.toprc
ln -sfv "$DOTFILES_MISC/screenrc" $HOME/.screenrc

################
# Other things #
################

# Download & source a git autocompletion script
source ./git/completion.sh
