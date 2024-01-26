# dotfiles

The `install.sh` script in this repo is run when I create a codespace.

## install.sh

If this runs on a codespace, the script copies the `vscode/settings.json` file to the codespace, so that VS Code will look recognizably different for a codespace than it does when you're working locally. This is useful for instantly seeing which of your VS Code windows are codespaces and which are local.

It then copies various other files and directories into the home directory on the codespace:

```
cp -R .scripts ~/.scripts            # .scripts directory contains the branchlister scripts
cp run.sh ~/run.sh                   # add the script for installing extensions
cp .git-prompt.sh ~/.git-prompt.sh   # this add the Git prompt
cp .bashrc ~/.bashrc                 # copy the .bashrc file
cp .bash_profile ~/.bash_profile     # copy the .bash_profile file
```

Finally it runs the `~/.bashrc` file to personalize the environment.

The branchlister scripts allow you to enter `bl` to list your branches, and `bb`, `bb2`, `bb3` etc. to switch branches.

The `~/run.sh` script just installs VS Code extensions that are not installed by the repo settings (i.e. extensions you want to have installed in all your codespaces, not just those for docs-iternal, and/or extensions that you want to use for docs-internal but not necessarily ones that everyone else using this repo will want).

The `~/.git-prompt.sh` script just configures the terminal prompt the way I like it.

The `~/.bashrc` file mainly contains aliases - including the ones needed for the branchlister script. It also runs the `~/run.sh` script

The `~/.bash_profile` file just runs `~/.bashrc` in situations where `~/.bash_profile` would run rather than `~/.bashrc`.

