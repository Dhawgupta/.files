set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let mapleader='<space>'
" This vimrc is based on the tutorials : https://realpython.com/vim-and-python-a-match-made-in-heaven/

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright " set the split direction for sp and vs commands
" Enable code folding
set foldmethod=indent
set foldlevel=99

" Enable code folding with the spacebar key
nnoremap <space> za 

Plugin 'tmhedberg/SimpylFold'

let g:SimpylFold_docstring_preview=1


au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 | 
    \ set shiftwidth=4 | 
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 | 
    \ set softtabstop=2 | 
    \ set shiftwidth=2

Plugin 'vim-scripts/indentpython.vim'
highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8

Bundle 'Valloric/YouCompleteMe'

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR> " This is supposed to go to the function GoToDefinitionElseDeclaration 

"python with virtualenv support
if has('python')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
let python_highlight_all=1
syntax on

Plugin 'jnurmine/Zenburn' " Zenburn for terminal mode of color schemes
Plugin 'altercation/vim-colors-solarized' " Solarized for GUI mode of the vim

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif


call togglebg#map("<F5>") " To toggle between s=color schemes using F5

Plugin 'scrooloose/nerdtree' " To work with file system also shows file systems in the same

Plugin 'jistr/vim-nerdtree-tabs' " To work with tabs in the same

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree



Plugin 'kien/ctrlp.vim'

set nu

Plugin 'tpope/vim-fugitive'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

set clipboard=unnamed " To integrate the outside clipboard with the system clipbarod

Bundle 'gabrielelana/vim-markdown'

Plugin 'davidhalter/jedi-vim'

