"normally this if-block is not needed, because `:set nocp` is done
" automatically when .vimrc is found. However, this might be useful
" when you execute `vim -u .vimrc` from the command line.
"if &compatible
"  " `:set nocp` has many side effects. Therefore this should be done
"  " only when 'compatible' is set.
"  set nocompatible
"endif
" For vim we use vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ghifarit53/tokyonight-vim'
Plug 'ayu-theme/ayu-vimv'
Plug 'rakr/vim-togglebg'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'dkprice/vim-easygrep'
Plug 'easymotion/vim-easymotion'
Plug 'lambdalisue/fern.vim'
Plug 'embark-theme/vim'
Plug 'liuchengxu/vista.vim'
Plug 'ctrlpvim/ctrlp.vim'

" Initialize plugin system
call plug#end()

set timeoutlen=1500
"let g:initial_go_path = "/Users/frank/go"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
" Avoid showing message extra message when using completion
set shortmess+=c

let mapleader = " "
"let mapleader = "\\"
"nnoremap <SPACE> <Nop>
"let mapleader = " "
" Function key mapping
" set timeoutlen=1000
set completeopt=menuone,noinsert,noselect
" Avoid showing message extra message when using completion
vmap y y`]
nnoremap <leader>gg <cmd>:Ggrep<cr>
nnoremap <leader>gr :call Mdfind(input('Find in files:'))<CR>
nnoremap <Leader>bb :ls<CR>:b<Space>
nnoremap <leader>wq <cmd>:q<cr>
nnoremap <leader>wo <C-w>o
nnoremap <leader>ws <cmd>:split<cr>
nnoremap <leader>wv <cmd>:vsplit<cr>
nnoremap <leader>bd <cmd>:bdelete<cr>
nnoremap ge G
vnoremap ge G
nnoremap gh 0
vnoremap gh 0
nnoremap gl $
vnoremap gl $
nnoremap gs ^
vnoremap gs ^
nnoremap gt H
vnoremap gt H
nnoremap gc M
vnoremap gc M
nnoremap gb L
vnoremap gb L
nnoremap gn <cmd>:bnext<cr>
nnoremap gp <cmd>:bprev<cr>
nnoremap mm %
vnoremap mm %
" Make vim non-modal ;-)
imap jj <C-o>
"imap <BS> <C-o>"_X
imap <C-d> <C-o><C-d>
imap <C-a> <C-o>^
imap <C-e> <C-o>$
imap <C-u> <C-o><C-u>
imap <C-Right> <C-o>w
imap <C-Left> <C-o>b
imap <C-s> <C-o>s
imap <S-Left> <C-o><S-Left>
imap <S-Right> <C-o><S-Right>
imap <C-\> <C-o>:bdelete<cr>
imap <C-z> <C-o>u
imap <C-l> <C-o>yy<C-o>p
imap <C-k>g <esc>:Git<cr>
imap <C-k><C-p> <esc>:CtrlP<cr>
imap <C-k>r <C-o>:%s/<c-r><c-w>/<c-r><c-w>/gc
imap <C-k><BS> <C-o>b<C-o>dw
imap <C-k>b <esc>:CtrlPBuffer<cr>
imap <C-v>b <C-o>vib
imap <C-v>l <C-o>V
imap <C-v>p <C-o>vi{
imap <C-v>w <C-o>viw
imap <C-v>d <C-o>vi"
imap <C-v>q <C-o>vi'

" Global search and replace
nnoremap gr :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i

" s{char}{char} to move to {char}{char}
imap <C-g> <C-o>:execute " grep -srnw --binary-files=without-match --exclude-dir=.git . -e " . expand("<cword>") . " " <bar> cwindow<CR>
nmap s <Plug>(easymotion-overwin-f2)
"imap <C-k>/ <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" copy to clipboard
map <C-c> "+y
nnoremap <S-Left> :bprevious<cr>
nnoremap <S-Right> :bnext<cr>
nnoremap <A-Left> :tabprev<cr>
nnoremap <A-Right> :tabnext<cr>
" <Leader>f{char} to move to {char}
map <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motionmap / <Plug>(easymotion-sn)
"map / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
"nnoremap w eviw
"nnoremap b bviw
"xnoremap w <Esc>eviw
"xnoremap b <Esc>bviw
" Find buffer with ctrlp
nnoremap <leader>pb :CtrlPBuffer<cr>
" Find buffer with list
nnoremap <leader>bl :call BufferList()<cr>
" F5 is remove trailing whitespace in buffer
nnoremap <leader>ws :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
"nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
" F6 is foldclose
nnoremap <leader>fc :foldclose<CR>
" F7 is foldopen
nnoremap <leader>fo :foldopen<CR>
" leader fs means format PostgreSQL
nnoremap <leader>fp :%!pg_format<CR>
" leader du means duplicate line
nnoremap <leader>du yyp
" leader gs is Git status
nnoremap <leader>gs :Git<CR>
" F2 is toggle light or dark background
"call togglebg#map("<F2>")
" ctrl-S is v split
"map <C-s> :vsplit<CR>
nnoremap <leader>ee :Fern . -reveal=% -drawer<CR>
" F10 is terminal
"nmap <F10> :terminal<CR>
" ctrl-space is omnicomplete
"inoremap <C-Space> <C-x><C-o>
"inoremap <C-@> <C-Space>
let ayucolor="mirage"
let catppuccincolor="dark"
"let ayucolor="light"
let base16colorspace=256  " Access colors present in 256 colorspace
set termguicolors
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1"
let g:tokyonight_transparent_background = 0

let g:airline#extensions#tabline#enabled = 1
set history=100
" Ignore case when searching
set ignorecase
"
" " When searching try to be smart about cases
set smartcase
"
" Show matching brackets when text indicator is over them
set showmatch
" Enable syntax highlighting
syntax enable

set t_Co=256

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set undodir=~/.local/share/vim/undodir
set undofile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" Linebreak on 500 characters
set lbr
set tw=500

" Window split settings
highlight TermCursor ctermfg=red guifg=red
set splitbelow
set splitright

" Terminal settings
tnoremap <Leader><ESC> <C-\><C-n>

let g:netrw_cygwin = 0
let g:netrw_ssh_cmd  = "ssh"
let g:netrw_scp_cmd  = "scp"
:imap <S-CR> <Esc>
"set background=light
let g:two_firewatch_italics=1
"let g:airline_theme='papercolor'
"set autochdir
autocmd BufEnter * silent! lcd %:p:h
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set diffopt=horizontal
"map <Leader>vf :VimFiler<CR>
" buffers open in new tab
":au BufAdd,BufNewFile * nested tab sball
"

"----------------------------------------------
" General settings
"----------------------------------------------
set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
set autowriteall                  " write on :quit
set clipboard=unnamed
"set colorcolumn=81                " highlight the 80th column as an indicator
"set completeopt-=preview          " remove the horrendous preview window
set cursorline                    " highlight the current line for the cursor
"set encoding=utf-8
set encoding=utf8
set expandtab                     " expands tabs to spaces
"set list                          " show trailing whitespace
set listchars=tab:\|\ ,trail:▫
set nospell                       " disable spelling
set noswapfile                    " disable swapfile usage
set wrap
set noerrorbells                  " No bells!
set novisualbell                  " I said, no bells!
set number                        " show number ruler
set relativenumber                " show relative numbers in the ruler
set ruler
set formatoptions=tcqronj         " set vims text formatting options
set softtabstop=4
set tabstop=4
set shiftwidth=4
set title                         " let vim set the terminal title
set updatetime=100                " redraw the status bar often

" Enable mouse if possible
if has('mouse')
    set mouse=a
endif

" Override the search highlight color with a combination that is easier to
" read. The default PaperColor is dark green backgroun with black foreground.
"
" Reference:
" - http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
"highlight Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White

" Toggle background with <leader>bg
map <leader>bg :let &background = (&background == "dark"? "light" : "dark")<cr>

"----------------------------------------------
" Searching
"----------------------------------------------
set incsearch                     " move to match as you type the search query
set nohlsearch                      " disable search result highlighting

if has('nvim')
    set inccommand=split          " enables interactive search and replace
endif


" These mappings will make it so that going to the next one in a search will
" center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv




" Fix some common typos
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"----------------------------------------------
" Splits
"----------------------------------------------
" Create horizontal splits below the current window
set splitbelow
set splitright

"----------------------------------------------
" Plugin: bling/vim-airline
"----------------------------------------------
" Show status bar by default.
set laststatus=2

" Enable top tabline.
let g:airline#extensions#tabline#enabled = 1

" show path. does not work with fugitive extension
"let g:airline_stl_path_style = 'full'

" Disable showing tabs in the tabline. This will ensure that the buffers are
" what is shown in the tabline at all times.
let g:airline#extensions#tabline#show_tabs = 0

" Enable powerline fonts.
let g:airline_powerline_fonts = 1
"let g:airline_symbols_ascii = 0

" Explicitly define some symbols that did not work well for me in Linux.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"----------------------------------------------
" Plugin: 'ctrlpvim/ctrlp.vim'
"----------------------------------------------
" Note: We are not using CtrlP much in this configuration. But vim-go depend on
" it to run GoDecls(Dir).
let g:ctrlp_user_command = 'find %s -type f -size -10M -not -name "*.png" -not -name "*.svg" -not -name "*.java"'        " MacOSX/Linux
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:50'
let g:ctrlp_by_filename = 1

"----------------------------------------------
" Plugin: easymotion/vim-easymotion
"----------------------------------------------
" Enable support for bidirectional motions
"map  <leader><leader>w <Plug>(easymotion-bd-w)
"nmap <leader><leader>w <Plug>(easymotion-overwin-w)

"----------------------------------------------
" Plugin: plasticboy/vim-markdown
"----------------------------------------------
" Disable folding
let g:vim_markdown_folding_disabled = 1

" Auto shrink the TOC, so that it won't take up 50% of the screen
let g:vim_markdown_toc_autofit = 1


"----------------------------------------------
" Language: apiblueprint
"----------------------------------------------
au FileType apiblueprint set expandtab
au FileType apiblueprint set shiftwidth=4
au FileType apiblueprint set softtabstop=4
au FileType apiblueprint set tabstop=4

"----------------------------------------------
" Language: Bash
"----------------------------------------------
au FileType sh set noexpandtab
au FileType sh set shiftwidth=2
au FileType sh set softtabstop=2
au FileType sh set tabstop=2

"----------------------------------------------
" Language: bindzone
"----------------------------------------------
au FileType bindzone set noexpandtab
au FileType bindzone set shiftwidth=8
au FileType bindzone set softtabstop=8
au FileType bindzone set tabstop=8

"
" Language: CSS
"----------------------------------------------
au FileType css set expandtab
au FileType css set shiftwidth=2
au FileType css set softtabstop=2
au FileType css set tabstop=2

"----------------------------------------------
" Language: gitcommit
"----------------------------------------------
au FileType gitcommit setlocal spell
au FileType gitcommit setlocal textwidth=80

"----------------------------------------------
" Language: fish
"----------------------------------------------
au FileType fish set expandtab
au FileType fish set shiftwidth=2
au FileType fish set softtabstop=2
au FileType fish set tabstop=2

"----------------------------------------------
" Language: elixir
"----------------------------------------------
au BufRead,BufNewFile *.ex,*.exs set filetype=elixir
au BufRead,BufNewFile *.eex set filetype=eelixir

"----------------------------------------------
" Language: gitconfig
"----------------------------------------------
au FileType gitconfig set noexpandtab
au FileType gitconfig set shiftwidth=2
au FileType gitconfig set softtabstop=2
au FileType gitconfig set tabstop=2

"----------------------------------------------
" Language: go
"----------------------------------------------
au FileType gitconfig set expandtab
au FileType gitconfig set shiftwidth=2
au FileType gitconfig set softtabstop=2
au FileType gitconfig set tabstop=2

"----------------------------------------------
" Language: HTML
"----------------------------------------------
au FileType html set expandtab
au FileType html set shiftwidth=2
au FileType html set softtabstop=2
au FileType html set tabstop=2

"----------------------------------------------
" Language: JavaScript
"----------------------------------------------
au FileType javascript set expandtab
au FileType javascript set shiftwidth=2
au FileType javascript set softtabstop=2
au FileType javascript set tabstop=2

"----------------------------------------------
" Language: JSON
"----------------------------------------------
au FileType json set expandtab
au FileType json set shiftwidth=2
au FileType json set softtabstop=2
au FileType json set tabstop=2

"----------------------------------------------
" Language: LESS
"----------------------------------------------
au FileType less set expandtab
au FileType less set shiftwidth=2
au FileType less set softtabstop=2
au FileType less set tabstop=2

"----------------------------------------------
" Language: Make
"----------------------------------------------
au FileType make set noexpandtab
au FileType make set shiftwidth=2
au FileType make set softtabstop=2
au FileType make set tabstop=2

"----------------------------------------------
" Language: Markdown
"----------------------------------------------
"au FileType markdown setlocal spell
au FileType markdown set expandtab
au FileType markdown set shiftwidth=4
au FileType markdown set softtabstop=4
au FileType markdown set tabstop=4
au FileType markdown set syntax=markdown

"----------------------------------------------
" Language: PlantUML
"----------------------------------------------
au FileType plantuml set expandtab
au FileType plantuml set shiftwidth=2
au FileType plantuml set softtabstop=2
au FileType plantuml set tabstop=2

"----------------------------------------------
" Language: Protobuf
"----------------------------------------------
au FileType proto set expandtab
au FileType proto set shiftwidth=2
au FileType proto set softtabstop=2
au FileType proto set tabstop=2

"----------------------------------------------
" Language: Python
"----------------------------------------------
au FileType python set expandtab
au FileType python set shiftwidth=4
au FileType python set softtabstop=4
au FileType python set tabstop=4

"----------------------------------------------
" Language: Ruby
"----------------------------------------------
au FileType ruby set expandtab
au FileType ruby set shiftwidth=2
au FileType ruby set softtabstop=2
au FileType ruby set tabstop=2

" Enable neomake for linting.
"au FileType ruby autocmd BufWritePost * Neomake

"----------------------------------------------
" Language: SQL
"----------------------------------------------
au FileType sql set expandtab
au FileType sql set shiftwidth=2
au FileType sql set softtabstop=2
au FileType sql set tabstop=2

"----------------------------------------------
" Language: Thrift
"----------------------------------------------
au FileType thrift set expandtab
au FileType thrift set shiftwidth=2
au FileType thrift set softtabstop=2
au FileType thrift set tabstop=2

"----------------------------------------------
" Language: TOML
"----------------------------------------------
au FileType toml set expandtab
au FileType toml set shiftwidth=2
au FileType toml set softtabstop=2
au FileType toml set tabstop=2

"----------------------------------------------
" Language: TypeScript
"----------------------------------------------
au FileType typescript set expandtab
au FileType typescript set shiftwidth=4
au FileType typescript set softtabstop=4
au FileType typescript set tabstop=4

"----------------------------------------------
" Language: Vader
"----------------------------------------------
au FileType vader set expandtab
au FileType vader set shiftwidth=2
au FileType vader set softtabstop=2
au FileType vader set tabstop=2

"----------------------------------------------
" Language: vimscript
"----------------------------------------------
au FileType vim set expandtab
au FileType vim set shiftwidth=4
au FileType vim set softtabstop=4
au FileType vim set tabstop=4

"----------------------------------------------
" Language: YAML
"----------------------------------------------
au FileType yaml set expandtab
au FileType yaml set shiftwidth=2
au FileType yaml set softtabstop=2
au FileType yaml set tabstop=2

" Language Puppet
autocmd BufNewFile,BufRead *.pp set filetype=puppet

" remap ; to : and vv
nmap ; :
nnoremap ;; ;

"custom diffrev function
" ----------------------------------------------------------------------------
" DiffRev
" ----------------------------------------------------------------------------
let s:git_status_dictionary = {
            \ "A": "Added",
            \ "B": "Broken",
            \ "C": "Copied",
            \ "D": "Deleted",
            \ "M": "Modified",
            \ "R": "Renamed",
            \ "T": "Changed",
            \ "U": "Unmerged",
            \ "X": "Unknown"
            \ }
function! s:get_diff_files(rev)
    let list = map(split(system(
                \ 'git diff --name-status '.a:rev), '\n'),
                \ '{"filename":matchstr(v:val, "\\S\\+$"),"text":s:git_status_dictionary[matchstr(v:val, "^\\w")]}'
                \ )
    call setqflist(list)
    copen
endfunction

command! -nargs=1 DiffRev call s:get_diff_files(<q-args>)
"let g:neoformat_try_formatprg = 1
let g:neoformat_enabled_sql = ['pg_format']
"augroup NeoformatAutoFormat
"    autocmd!
"    autocmd FileType javascript,javascript.jsx setlocal formatprg=prettier\
"                                                            \--stdin\
"                                                            \--single-quote\
"                                                            \--no-semi\
"                                                            \--print-width\ 100\
"    autocmd BufWritePre *.js,*.jsx Neoformat
"augroup END
let g:prettier#config#print_width = 100
let g:prettier#config#semi = 'false'
let g:prettier#config#single_quote = 'true'

"Folding
set foldmethod=syntax
set foldlevelstart=20

" Copy to mac clipboard
map <C-c> "+y
" Move between buffers with Shift + arrow key...
nnoremap <S-Left> :bprevious<cr>
nnoremap <S-Right> :bnext<cr>
" move between tabs with Alt + arrow key
nnoremap <A-Left> :tabprev<cr>
nnoremap <A-Right> :tabnext<cr>
" ... but skip the quickfix when navigating
augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END
"nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
"nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
"nnoremap <silent> <Leader>] :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
"nnoremap <silent> <Leader>[ :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
"----------------------------------------------
" Plugin: rbgrouleff/bclose.vim
"----------------------------------------------

"----------------------------------------------
" Plugin: mileszs/ack.vim
"----------------------------------------------
" ack.vim --- {{{
"
" " Use ripgrep for searching ⚡️
" " Options include:
" " --vimgrep -> Needed to parse the rg response properly for ack.vim
" " --type-not sql -> Avoid huge sql file dumps as it slows down the search
" " --smart-case -> Search case insensitive if all lowercase pattern, Search case sensitively otherwise
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'
"
" " Auto close the Quickfix list after pressing '<enter>' on a list item
let g:ack_autoclose = 1
"
" " Any empty ack search will search for the work the cursor is on
let g:ack_use_cword_for_empty_search = 1
"
" " Don't jump to first match
cnoreabbrev Ack Ack!
"
" " Maps F3
nnoremap <F3> :Ack!<Space>
nnoremap <leader>ax :Ack!<Space>
" " }}}
"
" " Navigate quickfix list with ease
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>



nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
nmap <C-\> :bd<CR>
nmap <leader>x :bd<CR>


" Provide commands and descriptions for existing mappings
nmap <silent> <leader>fd :e $MYVIMRC<CR>

nmap <silent> <leader>fs :so %<CR>
" let g:lmap.f.s = ['so %', 'Source file']

nmap <silent> <leader>oo  :copen<CR>
" let g:lmap.o.o = ['copen', 'Open quickfix']

nmap <silent> <leader>ol  :lopen<CR>
" let g:lmap.o.l = ['lopen', 'Open locationlist']


let g:goyo_width = 100
let g:goyo_height = 90
let g:go_def_mode = "gopls"
"augroup LspGo
"  au!
"  autocmd User lsp_setup call lsp#register_server({
"      \ 'name': 'go-lang',
"      \ 'cmd': {server_info->['gopls']},
"      \ 'whitelist': ['go'],
"      \ })
"  autocmd FileType go setlocal omnifunc=lsp#complete
  "autocmd FileType go nmap <buffer> gd <plug>(lsp-definition)
  "autocmd FileType go nmap <buffer> ,n <plug>(lsp-next-error)
  "autocmd FileType go nmap <buffer> ,p <plug>(lsp-previous-error)
"augroup END


"  let g:airline_left_sep = '⮀'
"  let g:airline_left_alt_sep = '⮁'
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = '⮃'
  let g:airline_symbols.branch = '⭠'
  let g:airline_symbols.readonly = '⭤'
  let g:airline_symbols.linenr = '⭡'
" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_left_sep = '⎶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.maxlinenr = '㏑'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
"let g:airline#extensions#tabline#left_sep = "\UE0BC"
"let g:airline#extensions#tabline#left_alt_sep = "\UE0BA"
"let g:airline#extensions#tabline#left_sep = "\UE0B0"
"let g:airline#extensions#tabline#left_alt_sep = "\UE0B1"
"let g:airline#extensions#tabline#right_sep = "\UE0B2"
"let g:airline#extensions#tabline#right_alt_sep = "\UE0B3"
let g:airline_left_sep = ''
"  let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
"  let g:airline_right_alt_sep = ''
"  let g:airline_symbols.branch = ''
"  let g:airline_symbols.colnr = ' :'
"  let g:airline_symbols.readonly = ''
"  let g:airline_symbols.linenr = ' :'
  let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.dirty='⚡'
"set fillchars+=stl:\ ,stlnc:\

function! Clearbg() abort
    " highlight Visual     cterm=NONE ctermbg=NONE              gui=NONE guibg=NONE
    highlight StatusLine cterm=NONE ctermbg=NONE              gui=NONE guibg=NONE
    highlight Normal     cterm=NONE ctermbg=NONE              gui=NONE guibg=NONE
    highlight NonText    cterm=NONE ctermbg=NONE              gui=NONE guibg=NONE
    set nocursorline
endfunction

function Mdfind(parameter)
  let @a=a:parameter
  execute 'enew | r!mdfind' a:parameter
endfunction

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


"Ultisnips settings
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


let pumblend=5
"let g:airline_theme = 'challenger_deep'
""call Clearbg()
"AirlineTheme challenger_deep

set hidden

let g:airline_theme='tokyonight'
" Set default local PG database
let g:db = 'postgresql:///frank'
"set background=light
"colorscheme ayu
colorscheme embark
"colorscheme dracula
let g:srcery_inverse=0
let g:srcery_inverse_match_paren=1
let g:srcery_bg_passthrough=1
"colorscheme ayu
" colorscheme catppuccin
" Do not set background color
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi LineNr guibg=NONE ctermbg=NONE
autocmd vimenter * hi SignColumn guibg=NONE ctermbg=NONE
autocmd vimenter * hi CursorLine guibg=NONE ctermbg=NONE
autocmd vimenter * hi CursorLineNR guibg=NONE ctermbg=NONE
autocmd vimenter * hi CursorColumn guibg=NONE ctermbg=NONE
set foldmethod=indent

function! BufSel(pattern)
  let bufcount = bufnr("$")
  let currbufnr = 1
  let nummatches = 0
  let firstmatchingbufnr = 0
  while currbufnr <= bufcount
    if(bufexists(currbufnr))
      let currbufname = bufname(currbufnr)
      if(match(currbufname, a:pattern) > -1)
        echo currbufnr . ": ". bufname(currbufnr)
        let nummatches += 1
        let firstmatchingbufnr = currbufnr
      endif
    endif
    let currbufnr = currbufnr + 1
  endwhile
  f(nummatches == 1)
    execute ":buffer ". firstmatchingbufnr
  elseif(nummatches > 1)
    let desiredbufnr = input("Enter buffer number: ")
    if(strlen(desiredbufnr) != 0)
      execute ":buffer ". desiredbufnr
    endif
  else
    echo "No matching buffers"
  endif
endfunction

"Bind the BufSel() function to a user-command
"nnoremap <leader>bl <cmd>:call BufSel()<cr>
command! -nargs=1 Bs :call BufSel("<args>")

autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
set wildmenu
set wildmode=longest:full,full

nnoremap <Leader>gb :<C-u>call gitblame#echo()<CR>

" Reload all buffers from files
nnoremap <leader>rl :bufdo e<cr>

" find files and populate the quickfix list
let g:find_files_findprg = 'find $d ! -type d -name $*'

let g:EasyGrepRecursive = "1"
let g:EasyGrepFilesToExclude="*.svn,*.git,*.swp,*.java,*.js,*.css,*.map,*.gradle,*.html"
let g:EasyGrepCommand="1"
