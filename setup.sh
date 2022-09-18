#/usr/bin/sh

# home directory
homedir=$HOME

# dotfiles directory
dotdir=$homedir/.dotfiles

# symlink files
files="vimrc"

# changing to dotfiles directory
echo "Changing to $dotdir directory"
cd $dotdir
echo "...done"

# creating symlinks
for file in $files; do
    echo "Creating symlink to $file in home directory"
    ln -sf $dotdir/$file $homedir/.$file
done
