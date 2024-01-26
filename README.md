# dotfiles

The `install.sh` script in this repo is run when I create a codespace.

## install.sh

If this runs on a codespace, the script copies the `vscode/settings.json` file to the codespace, so that VS Code will look recognizably different for a codespace than it does when you're working locally. This is useful for instantly seeing which of your VS Code windows are codespaces and which are local.

It then copies various other files and directories into the home directory on the codespace:

```
cp -R .scripts ~/.scripts            # .scripts directory contains the branchlister scripts
cp run.sh ~/run.sh                   # add the script for installing extensions
```

It then clones repos for command-line suggestions, syntax highlighting, and the powerlevel10k theme for zsh. And finally it writes the `.zshrc` and `.p10k.zsh` files to the codespace (overwriting the existing `.zshrc` file). 

## To create your own dotfiles repo from this repo

1. Create a new public repository on GitHub, owned by your user account, called dotfiles.
1. In a terminal, navigate to the directory in which you keep your local copies of git repos.
1. Run the command:
   ```
   git clone --bare https://github.com/hubwriter/dotfiles.git
   ```
1. Change into the new directory that was created:
   ```
   cd dotfiles.git
   ```
1. Run:
   ```
   git push --mirror https://github.com/YOUR-NAME/dotfiles.git
   ```
1. Step back out of the new directory:
   ```
   cd ..
   ```
1. Delete directory:
   ```
   rm -rf dotfiles.git
   ```
1. To work on your dotfiles repo locally, clone it:
   ```
   git clone https://github.com/YOUR-NAME/dotfiles.git
   ```

