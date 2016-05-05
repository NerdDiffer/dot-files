# .files

My little repo of dot files.

I like the modularity of some of these github celebrity dot-file repos:

* [skwp/dotfiles](https://github.com/skwp/dotfiles) (YADR)
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [bjeanes/dot-files](https://github.com/bjeanes/dot-files)

## Deployment

I set up the remote repo to automatically deploy the master branch to the
working tree, `$HOME/.dot-files`, after a push. For reference, see the script
file in this repo at `git/post-receive`.

##### Helpful Links

* [automatic deployment with git](https://www.digitalocean.com/community/tutorials/how-to-set-up-automatic-deployment-with-git-with-a-vps)
* [git hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)

### Updating local config files

Before modifying files, consider making a backup. Or just comment out what's
there and then source the newly-deployed files.

###### Vim

Change your local `.vimrc` to reference the deployed file:

```bash
source $HOME/.dot-files/vimrc
```

###### Bash

Likewise for your `.bashrc` file:

```bash
source $HOME/.dot-files/bashrc
```

###### Neovim

The default user-local config file for Neovim is `$HOME/.config/nvim/init.vim`.
Source the deployed file:

```bash
source $HOME/.dot-files/nvim-init.vim
```
