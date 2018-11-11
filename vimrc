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
if ! WINDOWS()
  colorscheme vibrantink 
endif
syntax on
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

filetype plugin indent on

set ffs=unix,dos
set ff=unix                       " Line endings!

set expandtab
set shiftwidth=2
set softtabstop=2
set ts=2                          " Tab size 2
if WINDOWS()
  " let g:ruby_path = ':C:\tools\ruby213\bin'
  let g:FindFileIgnore = ['*.o', '*.pyc', '*/tmp/*', '*.dll', '*.exe', '*.png']
endif 
set relativenumber 

" Line numbers
autocmd FocusLost * :set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd CursorMoved * :set relativenumber

" if WINDOWS() 
"  source $HOME/.vim/omnisharp.vim
"else
"  source ~/.vim/omnisharp.vim
"end
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'OmniSharp/omnisharp-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'fsharp/vim-fsharp', {
      \ 'for': 'fsharp',
      \ 'do':  'make fsautocomplete',
      \}
Plug 'vim-syntastic/syntastic'
call plug#end()

" Nerd tree:
map <F2> :NERDTreeToggle<CR>
" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

