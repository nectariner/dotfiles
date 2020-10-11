# My dotfiles

## How to use
I use GNU Stow, and so the directories are set up for that, however, you can manually move them to where the respective files need to be

To use Stow use
``` Bash
git clone https://github.com/nectariner/dotfiles.git ~/
cd dotfiles
stow nvim           #or whatever configuration files you want to use
```

NOTE: this may give some errors if you already have configuration files for a given application, to fix you can just delete the configuration files you already have and just use stow again
