if has("win32") " Keep swap files in one location
  set directory=$HOME/_vim/tmp//    
else
  set directory=~/.vim/tmp//    
endif
set showmode                      " Display the mode you're in.
set expandtab                     " Use spaces instead of tabs
colorscheme vibrantink 
syntax on
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

call pathogen#infect()            " start pathogen

filetype plugin indent on

set expandtab
set shiftwidth=2
set softtabstop=2
set ts=2                          " Tab size 2
if has("win32")
  let g:ruby_path = ':C:\ruby193\bin'
  let g:FindFileIgnore = ['*.o', '*.pyc', '*/tmp/*', '*.dll', '*.exe', '*.png']
endif 
" Nerd tree:
map <F2> :NERDTreeToggle<CR>
set relativenumber 

" Line numbers
autocmd FocusLost * :set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd CursorMoved * :set relativenumber

if has("win32") 
  source ~/_vim/omnisharp.vim
else
  source ~/.vim/omnisharp.vim
end
