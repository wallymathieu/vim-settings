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
  let g:fsharp_xbuild_path = "/Library/Frameworks/Mono.framework/Versions/Current/Commands/msbuild"

endif
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

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
