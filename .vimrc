

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'kshenoy/vim-signature'
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
set gfn=Consolas:h14:cANSI
let mapleader = ","
nmap <leader>ne :NERDTree<cr>
" Set colors in console
if !has("gui_running")
    set term=xterm
    set t_Co=256
"    let &t_AB="\e[48;5;%dm"
"    let &t_AF="\e[38;5;%dm"
    colorscheme molokai
endif
set laststatus=2
set clipboard=unnamed
set history=100
