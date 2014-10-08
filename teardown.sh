
if [ -e ~/.vim ]
then
  rm ~/.vim
fi

if [ -e ~/.vimrc ]
then
  rm ~/.vimrc
fi

if [ -e ~/vim-settings/vim/autoload/pathogen.vim ]
then
  rm ~/vim-settings/vim/autoload/pathogen.vim
fi
