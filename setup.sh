cwd=$(pwd)

if [ ! -e ~/.vim/tmp ]
then
  mkdir ~/.vim/tmp
fi

if [ ! -e ~/.vim ]
then
  ln -s $cwd/vim ~/.vim
fi

if [ ! -e ~/.vimrc ]
then
  ln -s $cwd/vimrc ~/.vimrc
fi

if [ ! -e $cwd/vim/autoload/pathogen.vim ]
then
  ln -s $cwd/vim-pathogen/autoload/pathogen.vim $cwd/vim/autoload/pathogen.vim
fi
