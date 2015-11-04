# .files

My little repo of dot files.

I like the modularity of some of these github celebrity dot-file repos:

* [skwp/dotfiles](https://github.com/skwp/dotfiles) (YADR)
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [bjeanes/dot-files](https://github.com/bjeanes/dot-files)

## Automatic deployment

I set up the remote repo (`/home/rafael/Dropbox/git/dot-files`) to automatically
deploy the master branch to the working tree, (`/home/rafael/.dot-files`).

For reference, here's that script file, stored as `hooks/post-receive` of the
remote repo:

```bash
#!/bin/bash

DOT_FILES_WORK_TREE='/home/rafael/.dot-files/'
DOT_FILES_GIT_DIR='/home/rafael/Dropbox/git/dot-files'

git --work-tree=$DOT_FILES_WORK_TREE --git-dir=$DOT_FILES_GIT_DIR checkout -f
```

Permissions of that script file should be changed to executable:
`chmod +x post-receive`

More on [automatic deployment](https://www.digitalocean.com/community/tutorials/how-to-set-up-automatic-deployment-with-git-with-a-vps) with git.

### Updating local files in `~`

**Before modifying your local files, make a backup!**

Then, I changed my local `~/.vimrc` to reference the deployed file:

```vimscript
source $HOME/.dot-files/vimrc
```

Likewise for `~/.bashrc`:

```bash
source $HOME/.dot-files/bashrc
```
