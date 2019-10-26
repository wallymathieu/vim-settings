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

cd ~/.vim/bundle/omnisharp/server
msbuild

cd ~/.vim/bundle/omnisharp/omnisharp-roslyn
./build.sh

cd $cwd/vim/bundle/vim-fsharp
make

cd $cwd
