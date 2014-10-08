
if [ ! -e ~/.vim ]
then
  ln -s ~/vim-settings/vim ~/.vim
fi

if [ ! -e ~/.vimrc ]
then
  ln -s ~/vim-settings/vimrc ~/.vimrc
fi

if [ ! -e ~/vim-settings/vim/autoload/pathogen.vim ]
then
  ln -s ~/vim-settings/vim-pathogen/autoload/pathogen.vim ~/vim-settings/vim/autoload/pathogen.vim
fi
