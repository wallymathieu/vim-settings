silent function! WINDOWS()
    return  (has('win16') || has('win32') || has('win64'))
endfunction

" On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
" across (heterogeneous) systems easier.
if WINDOWS()
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME
endif

if WINDOWS() " Keep swap files in one location
  set directory=$HOME/.vim/tmp//    
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
if WINDOWS()
  let g:ruby_path = ':C:\tools\ruby213\bin'
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

if WINDOWS() 
  source $HOME/.vim/omnisharp.vim
else
  source ~/.vim/omnisharp.vim
end

