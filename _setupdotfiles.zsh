#!/bin/zsh

export UNLINK=true
export DOTFILESDIRRELATIVETOHOME=.workstation


function symlinkifne {
    echo "WORKING ON: $2"
    if [[ -a $2 ]]; then
        echo "  WARNING: $2 already exists."
        if [ "$UNLINK" = "true" ]; then
            unlink $2
            echo "  Unlinking $2"
            echo "  Symlinking $DOTFILESDIRRELATIVETOHOME/$1 to $2"
            ln -s $DOTFILESDIRRELATIVETOHOME/$1 $2
        else
            echo "  SKIPPING $2."
        fi
    else
        echo "  Symlinking $DOTFILESDIRRELATIVETOHOME/$1 to $2"
        ln -s $DOTFILESDIRRELATIVETOHOME/$1 $2
    fi
}

echo "This script must be run from the dotfiles directory"
echo "Setting up..."

pushd ~

symlinkifne gitconfig .gitconfig
symlinkifne profile .profile
symlinkifne shellaliases .shellaliases
symlinkifne shellpaths .shellpaths
symlinkifne shellvars .shellvars
symlinkifne slate .slate
symlinkifne zlogout .zlogout
symlinkifne zprofile .zprofile
symlinkifne zshenv .zshenv
symlinkifne zshrc .zshrc
symlinkifne scripts scripts

popd

