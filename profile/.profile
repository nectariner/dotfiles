# $HOME/.profile

#Set our umask
umask 022

# Set our default path
PATH="/usr/local/sbin:/usr/local/bin:/usr/bin/core_perl:/usr/bin:$HOME/.config/bspwm/panel:$HOME/.bin:$HOME/.scripts"

export PATH
export XDG_CONFIG_HOME="$HOME/.config"
export BROWSER=/usr/bin/firefox
export TERMINAL=/usr/bin/alacritty
export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/code
export READER=/usr/bin/zathura
export FILES=/usr/bin/vifm
export VIDEO=/usr/bin/vlc
export SHELL=/usr/bin/zsh

# Termcap is outdated, old, and crusty, kill it.
unset TERMCAP

# Man is much better than us at figuring this out
unset MANPATH


. "$HOME/.cargo/env"
