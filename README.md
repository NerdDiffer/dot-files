# .files

My little repo of dot files.

I like the modularity of some of these github celebrity dot-file repos:

* [skwp/dotfiles](https://github.com/skwp/dotfiles) (YADR)
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [bjeanes/dot-files](https://github.com/bjeanes/dot-files)

## Automatic deployment

I set up the remote repo to automatically deploy the master branch to the
working tree, `$HOME/.dot-files`, after a push. For reference, see the script
file in this repo named `post-receive`.

##### Helpful Links

* [automatic deployment with git](https://www.digitalocean.com/community/tutorials/how-to-set-up-automatic-deployment-with-git-with-a-vps)
* [git hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)

### Updating local files in `~`

Before modifying files, consider making a backup. Or just comment out what's
there and then source the newly-deployed files.

I changed my local `~/.vimrc` to reference the deployed file:

```vimscript
source $HOME/.dot-files/vimrc
```

Likewise for `~/.bashrc`:

```bash
source $HOME/.dot-files/bashrc
```
