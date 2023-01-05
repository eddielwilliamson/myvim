# myvim
vim config files

My vim configuration for tracking, backup, and sharing across systems.

## Setting up new installation
- Clone this repo to ~/myvim
```sh
cd ~
git clone https://github.com/eddielwilliamson/myvim
ln -s ~/myvim/vimrc ~/.vimrc
# make .vim folder if it doesn't already exist
# also .vim/colors
if [ -d ~/.vim ]
then
  echo "~/.vim already exists"
  echo "manually update files if needed"
else
  echo "Making folders and linking files"
  mkdir -p ~/.vim/colors
  ln -s ~/myvim/mycolorscheme.vim ~/.vim/mycolorscheme.vim
  ln -s ~/myvim/mappings.vim ~/.vim/mappings.vim
  for f in `ls myvim/colors`
  do
    ln -s ~/myvim/colors/$f ~/.vim/colors
  done
fi
```


