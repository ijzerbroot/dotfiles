

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'kshenoy/vim-signature'
Plug 'benmills/vimux'
Plug 'kana/vim-arpeggio'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'vim-scripts/sqlplus.vim'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/syntastic'

Plug 'tpope/vim-surround'
" Plug 'valloric/youcompleteme'
Plug 'godlygeek/tabular'
Plug 'fatih/vim-go'

" On-demand loading:
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go'

" Plugin options
Plug 'nsf/gocode'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Add plugins to &runtimepath
call plug#end()

" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme molokai
" set background=dark    " Setting dark mode
let g:airline_theme='powerlineish'
"set gfn=Hack:h14:cANSI

let mapleader = ","
nmap <leader>ne :NERDTree<cr>
" Set colors in console
"if !has("gui_running")
"    set term=xterm
"    set t_Co=256
"    let &t_AB="\e[48;5;%dm"
"    let &t_AF="\e[38;5;%dm"
"    colorscheme molokai
"endif
set laststatus=2
set clipboard=unnamed
set history=100
" Ignore case when searching
set ignorecase
"
" " When searching try to be smart about cases
set smartcase
"
" " Highlight search results
set hlsearch
" Show matching brackets when text indicator is over them
set showmatch
" Enable syntax highlighting
syntax enable
" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
    set gfn=Hack\ 14
endif
if has("gui_macvim")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
    set gfn=Hack\ Regular:h14:cANSI
endif
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


" vv to generate new vertical split
nnoremap <silent> vv <C-w>v
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane
map <Leader>vz :VimuxZoomRunner<CR>
