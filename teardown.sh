
if [ -h ~/.vim ]
then
  rm ~/.vim
fi

if [ -h ~/.vimrc ]
then
  rm ~/.vimrc
fi

if [ -h ~/vim-settings ]
then
  rm ~/vim-settings
fi

if [ -h ~/vim-settings/vim/autoload/pathogen.vim ]
then
  rm ~/vim-settings/vim/autoload/pathogen.vim
fi
