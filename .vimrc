
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Plug 'morhetz/gruvbox'
" Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'kshenoy/vim-signature'
Plug 'benmills/vimux'
Plug 'kana/vim-arpeggio'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'edkolev/promptline.vim'
Plug 'tpope/vim-fugitive'
" Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-commentary'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'wincent/command-t'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-janah'

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
Plug 'kien/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'shougo/denite.nvim'
Plug 'mhinz/vim-startify'

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

let base16colorspace=256  " Access colors present in 256 colorspace
let g:airline_powerline_fonts=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
" colorscheme molokai
colorscheme base16-atelier-savanna
" set background=dark    " Setting dark mode
let g:airline_theme='powerlineish'
"set gfn=Hack:h14:cANSI

let mapleader = ","
let g:airline#extensions#tabline#enabled = 1
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

set t_Co=256
" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
    set gfn=Knack\ Nerd\ Font\ 14
endif
if has("gui_macvim")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
    set gfn=Knack\ Regular:h14:cANSI
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

"Tmuxline - :TmuxlineSnapshot! ~/.dotfiles/.tmuxline.tmux.conf
"Far bottom right shows DHCP WiFi IP, with an H appended at home
"let g:tmuxline_preset = {
"     \'a'    : '#S',
"      \'c'    : ['#(whoami)', '#(uptime | cut -d " " -f 1,2,3)'],
"      \'win'  : ['#I', '#W'],
"      \'cwin' : ['#I', '#W', '#F'],
"      \'x'    : '#(date)',
"      \'y'    : ['%R', '%a', '%Y'],
"      \'z'    : '#H'}
" sections (a, b, c, x, y, z, warn) are optional

let g:tmuxline_preset = {
     \'a'    : '#S',
      \'c'    : ['#(whoami)', '#(uptime | cut -d " " -f 3,4,5 |sed "s/,$//")'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['%R', '%a'],
      \'z'    : '#H'}

let g:promptline_preset = {
      \'a'    : [ '$(hostname)' ],
      \'b'    : [ '$(whoami)' ],
      \'c'    : [ '$(pwd)' ],
      \'options': {
          \'left_sections' : [ 'b', 'a' ],
          \'right_sections' : [ 'c' ],
          \'left_only_sections' : [ 'b', 'a', 'c' ]}}

let g:promptline_preset = 'clear'
let g:promptline_powerline_symbols = 1
let g:promptline_symbols = {
    \ 'left'       : '',
    \ 'left_alt'   : '>',
    \ 'dir_sep'    : ' / ',
    \ 'truncation' : '...',
    \ 'vcs_branch' : '',
    \ 'space'      : ' '}

" available slices:
"
"promptline#slices#cwd() - current dir, truncated to 3 dirs. To configure: promptline#slices#cwd({ 'dir_limit': 4 })
"promptline#slices#vcs_branch() - branch name only. By default, only git branch is enabled. Use promptline#slices#vcs_branch({ 'hg': 1, 'svn': 1, 'fossil': 1}) to enable check for svn, mercurial and fossil branches. Note that always checking if inside a branch slows down the prompt
" promptline#slices#last_exit_code() - display exit code of last command if not zero
" promptline#slices#jobs() - display number of shell jobs if more than zero
" promptline#slices#battery() - display battery percentage (on OSX and linux) only if below 10%. Configure the threshold with promptline#slices#battery({ 'threshold': 25 })
" promptline#slices#host() - current hostname.  To hide the hostname unless connected via SSH, use promptline#slices#host({ 'only_if_ssh': 1 })
" promptline#slices#user()
" promptline#slices#python_virtualenv() - display which virtual env is active (empty is none)
" promptline#slices#git_status() - count of commits ahead/behind upstream, count of modified/added/unmerged files, symbol for clean branch and symbol for existing untraced files
" promptline#slices#conda_env() - display which conda env is active (empty is none)
"
" any command can be used in a slice, for example to print the output of whoami in section 'b':
"       \'b' : [ '$(whoami)'],
"
" more than one slice can be placed in a section, e.g. print both host and user in section 'a':
"       \'a': [ promptline#slices#host(), promptline#slices#user() ],
"
" to disable powerline symbols
" `let g:promptline_powerline_symbols = 0`


let g:promptline_theme = 'airline'

let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#tmuxline#snapshot_file = "~/.tmux-statusline-colors.conf"
let g:airline#extensions#promtline#enabled = 1
let g:airline#extensions#promptline#snapshot_file = "~/.shell_prompt.sh"
