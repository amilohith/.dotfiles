#/usr/bin/sh

#########################################
#                                       #
#    Creates symlinks from home         #
#    directory to dotfiles directory    #
#                                       #
#########################################

# home directory
homedir=$HOME


# dotfiles directory
dotdir=$homedir/.dotfiles


# symlink files
files="vimrc tmux.conf"


# creating symlinks
for file in $files; do
    echo "Creating symlink to $file in home directory"
    ln -sf $dotdir/$file $homedir/.$file
done
