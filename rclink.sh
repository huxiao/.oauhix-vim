#!/usr/bin/env bash

ovroot="$HOME/.oauhix-vim"
vimcustom="$ovroot/oauhix-vim"
spf13inst="$HOME/.spf13-vim-3"

lnif() {
    if [ -e $1 ]; then
        ln -sf $1 $2
    fi
    ret=$?
}

rm -rf $spf13inst
ln -sf $ovroot/spf13-vim $spf13inst

lnif $spf13inst/.vimrc                    $HOME/.vimrc
lnif $spf13inst/.vimrc.before             $HOME/.vimrc.before
lnif $spf13inst/.vimrc.bundles            $HOME/.vimrc.bundles
lnif $spf13inst/.vim                      $HOME/.vim

lnif $vimcustom/.vimrc.fork               $HOME/.vimrc.fork
lnif $vimcustom/.vimrc.before.fork        $HOME/.vimrc.before.fork
lnif $vimcustom/.vimrc.bundles.fork       $HOME/.vimrc.bundles.fork
lnif $vimcustom/.gvimrc                   $HOME/.gvimrc

mkdir -p $HOME/.vifm/colors
cp   $ovroot/otherconf/vifm/colors/*      $HOME/.vifm/colors/
lnif $ovroot/otherconf/vifm/vifmrc        $HOME/.vifm/vifmrc
lnif $ovroot/otherconf/.zshrc             $HOME/.zshrc
lnif $ovroot/otherconf/.vimperatorrc      $HOME/.vimperatorrc
mkdir -p $HOME/.config/zathura
lnif $ovroot/otherconf/zathurarc          $HOME/.config/zathura/zathurarc

# Useful for fork maintainers
touch  $HOME/.vimrc.local
touch  $HOME/.gvimrc.local
touch  $HOME/.vimrc.before.local
touch  $HOME/.vimrc.bundles.local

