
if not exist %HOME%/_vim (
  mklink %HOME%/vim-settings/vim %HOME%/_vim
)

if not exist %HOME%/_vimrc (
  mklink %HOME%/vim-settings/_vimrc %HOME%/_vimrc
)

if not exist %HOME%/vim-settings/vim/autoload/pathogen.vim ( 
  mklink %HOME%/vim-settings/vim-pathogen/autoload/pathogen.vim %HOME%/vim-settings/vim/autoload/pathogen.vim
)
