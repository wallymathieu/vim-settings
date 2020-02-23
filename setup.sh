cwd=$(pwd)

if [ ! -e ~/.vim ]
then
  ln -s $cwd/vim ~/.vim
fi

if [ ! -e ~/.vim/tmp ]
then
  mkdir -p ~/.vim/tmp
fi

if [ ! -e ~/.vimrc ]
then
  ln -s $cwd/vimrc ~/.vimrc
fi

cd $cwd
