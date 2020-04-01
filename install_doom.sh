#!/bin/sh

git clone https://github.com/hlissner/doom-emacs ~/.emacs.d 
rm -rf ~/.emacs.d/.git

~/.emacs.d/bin/doom install

rm -rf ~/.doom.d
stow doom

~/.emacs.d/bin/doom refresh
