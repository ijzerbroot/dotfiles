"normally this if-block is not needed, because `:set nocp` is done
" automatically when .vimrc is found. However, this might be useful
" when you execute `vim -u .vimrc` from the command line.
"if &compatible
"  " `:set nocp` has many side effects. Therefore this should be done
"  " only when 'compatible' is set.
"  set nocompatible
"endif

packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Add other plugins here.
call minpac#add('vim-jp/syntax-vim-ex')

function! PackInit() abort
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " Additional plugins here.
  " theme
  call minpac#add('justinmk/vim-sneak')
  call minpac#add('wadackel/vim-dogrun')
  call minpac#add('windwp/windline.nvim')
  call minpac#add('yashguptaz/calvera-dark.nvim')
  call minpac#add('Shadorain/shadotheme')
  call minpac#add('nvim-lua/popup.nvim')
  call minpac#add('nvim-lua/plenary.nvim')
  call minpac#add('nvim-telescope/telescope.nvim')
  call minpac#add('vim-jp/syntax-vim-ex')
  call minpac#add('pechorin/any-jump.vim')
  "call minpac#add('KeitaNakamura/neodark.vim')
  call minpac#add('arcticicestudio/nord-vim')
  call minpac#add('rakr/vim-one')
  call minpac#add('Rigellute/rigel')
  call minpac#add('haishanh/night-owl.vim')
  call minpac#add('ghifarit53/tokyonight-vim')
  call minpac#add('ntk148v/vim-horizon')
  call minpac#add('ryanoasis/vim-devicons')
  call minpac#add('pineapplegiant/spaceduck')
  call minpac#add('neovim/nvim-lsp')
  call minpac#add('neovim/nvim-lspconfig')
  call minpac#add('nvim-lua/lsp-status.nvim')
  call minpac#add('nvim-lua/completion-nvim')
  call minpac#add('liuchengxu/vista.vim')
  call minpac#add('ijzerbroot/vimhappy')
  "call minpac#add('udalov/kotlin-vim')
  call minpac#add('junegunn/goyo.vim')
  call minpac#add('flrnprz/candid.vim')
  call minpac#add('ayu-theme/ayu-vim')
  call minpac#add('rakr/vim-two-firewatch')
  "call minpac#add('hecal3/vim-leader-guide')
  call minpac#add('rakr/vim-togglebg')
  "call minpac#add('drewtempelmeyer/palenight.vim')
  call minpac#add('vim-jp/syntax-vim-ex')
  call minpac#add('markonm/traces.vim')
  call minpac#add('fenetikm/falcon')
  call minpac#add('godlygeek/tabular'  )
  call minpac#add('Shougo/neosnippet')
  call minpac#add('Shougo/neosnippet-snippets' )
  call minpac#add('editorconfig/editorconfig-vim')
  call minpac#add('junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' })
  call minpac#add('junegunn/fzf.vim')
  "call minpac#add('mhinz/vim-signify')
  call minpac#add('mileszs/ack.vim')
  call minpac#add('prettier/vim-prettier')
  call minpac#add('rbgrouleff/bclose.vim')
  call minpac#add('sbdchd/neoformat')
  call minpac#add('scrooloose/nerdcommenter')
  call minpac#add('sebdah/vim-delve')
  call minpac#add('terryma/vim-multiple-cursors')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('SirVer/ultisnips')
  call minpac#add('cespare/vim-toml')
  call minpac#add('kshenoy/vim-signature')
  call minpac#add('kana/vim-arpeggio')
  call minpac#add('junegunn/vim-easy-align')
  call minpac#add('tpope/vim-commentary')
  call minpac#add('tpope/vim-vinegar')
  call minpac#add('mhinz/vim-janah')
  call minpac#add('challenger-deep-theme/vim', { 'as': 'challenger-deep' })
  call minpac#add('NLKNguyen/papercolor-theme')
  call minpac#add('puppetlabs/puppet-syntax-vim')
  call minpac#add('tpope/vim-unimpaired')
  "call minpac#add('majutsushi/tagbar')
  call minpac#add('tpope/vim-dispatch')
  call minpac#add('maksimr/vim-jsbeautify')
  call minpac#add('reedes/vim-pencil')
  call minpac#add('tpope/vim-markdown')
  call minpac#add('jtratner/vim-flavored-markdown')
  call minpac#add('kablamo/vim-git-log')
  call minpac#add('gregsexton/gitv')
  call minpac#add('junegunn/gv.vim')
  call minpac#add('airblade/vim-gitgutter')
  "call minpac#add('vim-airline/vim-airline')
  "call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('sjl/badwolf')
  call minpac#add('tomasr/molokai')
  call minpac#add('morhetz/gruvbox')
  call minpac#add('zenorocha/dracula-theme', {'rtp': 'vim/'})
  call minpac#add('junegunn/limelight.vim')
  call minpac#add('mkarmona/colorsbox')
  call minpac#add('romainl/Apprentice')
  call minpac#add('Lokaltog/vim-distinguished')
  call minpac#add('w0ng/vim-hybrid')
  "call minpac#add('AlessandroYorba/Sierra')
  "call minpac#add('effkay/argonaut.vim')
  call minpac#add('atelierbram/Base2Tone-vim')
  "call minpac#add('colepeters/spacemacs-theme.vim')
  call minpac#add('tpope/vim-surround')
  call minpac#add('godlygeek/tabular')
  "call minpac#add('scrooloose/nerdtree', { 'on':  'NERDTreeToggle' })
  call minpac#add('ryanoasis/vim-devicons')
  "call minpac#add('shougo/unite.vim')
  call minpac#add('mhinz/vim-startify')
  "call minpac#add('aserebryakov/vim-todo-lists')
  call minpac#add('freitass/todo.txt-vim')
  "call minpac#add('Matsuuu/pinkmare')
  "call minpac#add('PProvost/vim-ps1')
  call minpac#add('embark-theme/vim', { 'name': 'embark' })
  call minpac#add('lambdalisue/fern.vim')
  call minpac#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'})
  call minpac#add('cocopon/iceberg.vim') 
  "prereq: pip install sqlparse
  call minpac#add('mpyatishev/vim-sqlformat')

endfunction

packloadall
call PackInit()
command! PackUpdate source $MYVIMRC | call PackInit() | call minpac#update()
command! PackClean  source $MYVIMRC | call PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()

set timeoutlen=1500
let g:initial_go_path = "/Users/frank/go"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
" Avoid showing message extra message when using completion
set shortmess+=c


let mapleader = "\\"
" Function key mapping
" F1 is FZF Commands
"nnoremap <silent> <F1> :Commands<CR>
"nnoremap <leader>cc :Commands<CR>
nnoremap <leader>cc <cmd>Telescope commands<cr>
nnoremap <leader>cs <cmd>Telescope colorscheme<cr>
" F2 is FZF Buffers
"nnoremap <silent> <F2> :Buffers<CR>
"nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bb <cmd>Telescope buffers<cr>
nnoremap <leader>bf <cmd>Telescope current_buffer_fuzzy_find<cr>
" F4 is FZF Files
"nnoremap <leader>ff :Files<space>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>gf <cmd>Telescope git_files<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>
nnoremap <leader>lr <cmd>Telescope lsp_references<cr>
nnoremap <leader>ls <cmd>Telescope lsp_document_symbols<cr>
nnoremap <leader>ld <cmd>Telescope lsp_definitions<cr>
nnoremap <leader>lw <cmd>Telescope lsp_workspace_symbols<cr>
nnoremap <leader>lc <cmd>Telescope lsp_code_actions<cr>
nnoremap <leader>sh <cmd>Telescope search_history<cr>
" Vista window
nnoremap <leader>vv :Vista nvim_lsp<CR>
" F5 is remove trailing whitespace in buffer
nnoremap <leader>ws :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
"nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
" F6 is foldclose
nnoremap <leader>fc :foldclose<CR>
" F7 is foldopen
nnoremap <leader>fo :foldopen<CR>
" F2 is toggle light or dark background
"call togglebg#map("<F2>")
" ctrl-S is v split
"map <C-s> :vsplit<CR>
" F8 is NERDTreeToggle
" nmap <F8> :NERDTreeToggle<CR>
" F8 is Fern
"nmap <F8> :Fern . -reveal=% -drawer<CR>
nnoremap <leader>ee :Fern . -reveal=% -drawer<CR>
" F10 is terminal
"nmap <F10> :terminal<CR>
" ctrl-space is omnicomplete
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>
let ayucolor="mirage"
let base16colorspace=256  " Access colors present in 256 colorspace
let g:airline_powerline_fonts=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1"
let g:tokyonight_transparent_background = 1

let g:airline#extensions#tabline#enabled = 1
" Set colors in console
"if !has("gui_running")
"    set term=xterm
"    set t_Co=256
"    let &t_AB="\e[48;5;%dm"
"    let &t_AF="\e[38;5;%dm"
"    colorscheme molokai
"endif
"set laststatus=2
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

" NeoVim
if exists('g:GtkGuiLoaded')
    call rpcnotify(1, 'Gui', 'Font','Hack NF 18')
endif

" Set extra options when running in GUI mode
"set gfn=CaskaydiaCove\ Nerd\ Font\ Mono:h13
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
    set gfn=CaskaydiaCove\ Nerd\ Font:h14
    GuiPopupmenu 0
endif
if has("gui_macvim")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
    set gfn=MesloLGSDZ\ NF:h15:cANSI
endif
if exists('g:fvim_loaded')
    " good old 'set guifont' compatibility
    set guifont=Hack\ NF:h18
    " Ctrl-ScrollWheel for zooming in/out
    nnoremap <silent> <C-ScrollWheelUp> :set guifont=+<CR>
    nnoremap <silent> <C-ScrollWheelDown> :set guifont=-<CR>
    nnoremap <A-CR> :call rpcnotify(1, 'ToggleFullScreen', 1)<CR>
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

" Linebreak on 500 characters
set lbr
set tw=500

" Window split settings
highlight TermCursor ctermfg=red guifg=red
set splitbelow
set splitright

" Terminal settings
tnoremap <Leader><ESC> <C-\><C-n>

"if has("win32")
"    set shell=cmd.exe
    "set shellcmdflag=/c\ powershell.exe\ -NoLogo\ -NonInteractive\ -ExecutionPolicy\ Bypass
"    set shellcmdflag=/c\ \"C:\\Progra~1\\Git\\bin\\bash.exe\ --login\ -c\"
    "set shellpipe=|
    "set shellredir=>
"endif
let g:netrw_cygwin = 0
" let g:netrw_ssh_cmd  = "plink -T -ssh"
" let g:netrw_scp_cmd  = "pscp"
"let g:netrw_ssh_cmd  = "ssh -o ServerAliveInterval=60"
let g:netrw_ssh_cmd  = "ssh"
let g:netrw_scp_cmd  = "scp"
:imap <S-CR> <Esc>
set background=light
let g:two_firewatch_italics=1
"let g:airline_theme='papercolor'
"set autochdir
autocmd BufEnter * silent! lcd %:p:h
filetype plugin on
"set omnifunc=syntaxcomplete#Complete
"set diffopt=horizontal
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
set encoding=utf-8
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
set softtabstop=2
set tabstop=2
set shiftwidth=2
set title                         " let vim set the terminal title
set updatetime=100                " redraw the status bar often

" neovim specific settings
"if has('nvim')
" Set the Python binaries neovim is using. Please note that you will need to
" install the neovim package for these binaries separately like this for
" example:
" pip3.6 install -U neovim
"    let g:python_host_prog = '/usr/bin/python2'
"    let g:python3_host_prog = '/usr/bin/python3'
"endif

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
"map <leader>bg :let &background = (&background == "dark"? "light" : "dark")<cr>

"----------------------------------------------
" Searching
"----------------------------------------------
set incsearch                     " move to match as you type the search query
set hlsearch                      " disable search result highlighting

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

" Disable showing tabs in the tabline. This will ensure that the buffers are
" what is shown in the tabline at all times.
let g:airline#extensions#tabline#show_tabs = 0

" Enable powerline fonts.
let g:airline_powerline_fonts = 1

" Explicitly define some symbols that did not work well for me in Linux.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.maxlinenr = ''

let g:airline_section_c = '%F'
"----------------------------------------------
" Plugin: 'ctrlpvim/ctrlp.vim'
"----------------------------------------------
" Note: We are not using CtrlP much in this configuration. But vim-go depend on
" it to run GoDecls(Dir).

" Disable the CtrlP mapping, since we want to use FZF instead for <c-p>.
let g:ctrlp_map = ''

"----------------------------------------------
" Plugin: easymotion/vim-easymotion
"----------------------------------------------
" Enable support for bidirectional motions
"map  <leader><leader>w <Plug>(easymotion-bd-w)
"nmap <leader><leader>w <Plug>(easymotion-overwin-w)


"----------------------------------------------
" Plugin: 'junegunn/fzf.vim'
"----------------------------------------------
nnoremap <c-p> :FZF<cr>

"----------------------------------------------
" Plugin: plasticboy/vim-markdown
"----------------------------------------------
" Disable folding
let g:vim_markdown_folding_disabled = 1

" Auto shrink the TOC, so that it won't take up 50% of the screen
let g:vim_markdown_toc_autofit = 1


"----------------------------------------------
" Plugin: neomake/neomake
"----------------------------------------------
" Configure signs.
let g:neomake_error_sign   = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '∆', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign    = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}

" Files to ignore
let NERDTreeIgnore = [
            \ '\~$',
            \ '\.pyc$',
            \ '^\.DS_Store$',
            \ '^node_modules$',
            \ '^.ropeproject$',
            \ '^__pycache__$'
            \]

" Close vim if NERDTree is the only opened window.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"----------------------------------------------
" Plugin: sebdah/vim-delve
"----------------------------------------------
" Set the Delve backend.
let g:delve_backend = "native"

"----------------------------------------------
" Plugin: Shougo/neosnippet
"----------------------------------------------
" Disable the default snippets (needed since we do not install
" Shougo/neosnippet-snippets).
"
" Below you can disable default snippets for specific languages. If you set the
" language to _ it sets the default for all languages.
let g:neosnippet#disable_runtime_snippets = {
            \ 'go': 1
            \}

" Keybindings
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" Set the path to our snippets
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'


"----------------------------------------------
" Plugin: 'terryma/vim-multiple-cursors'
"----------------------------------------------
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_skip_key='<C-b>'


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
au FileType markdown setlocal spell
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

"let g:EclimCompletionMethod = 'omnifunc'
"let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
"let g:syntastic_swift_checkers = ['swiftpm']
" remap ; to : and vv
" nmap ; :
" nnoremap ;; ;

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
let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }

"Folding
set foldmethod=syntax
set foldlevelstart=20

" Shortcuts!
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
map <C-a> ggVG
map <C-v> <esc>p
map <C-c> "+y
" Move between buffers with Shift + arrow key...
"nnoremap <S-Left> :bprevious<cr>
"nnoremap <S-Right> :bnext<cr>
" move between tabs with Alt + arrow key
"nnoremap <A-Left> :tabprev<cr>
"nnoremap <A-Right> :tabnext<cr>
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
if exists("g:gui_oni")
    autocmd VimEnter * AirlineToggle
    autocmd VimEnter * AirlineToggle
    "let g:gruvbox_italic=1
    "let g:airline_theme='gruvbox'
endif
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
augroup END

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
"let g:airline_left_sep = "\UE0B8"
"let g:airline_left_alt_sep = "\UE0BE"
let g:airline_left_alt_sep = ''
"let g:airline_right_sep = "\UE0BA"
"let g:airline_right_alt_sep = "\UE0BC"
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline#extensions#tabline#left_sep = "\UE0BC"
"let g:airline#extensions#tabline#left_alt_sep = "\UE0BA"
let g:airline#extensions#tabline#left_sep = "\UE0B0"
let g:airline#extensions#tabline#left_alt_sep = "\UE0B1"
let g:airline#extensions#tabline#right_sep = "\UE0B2"
let g:airline#extensions#tabline#right_alt_sep = "\UE0B3"
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


function! Clearbg() abort
    " highlight Visual     cterm=NONE ctermbg=NONE              gui=NONE guibg=NONE
    highlight StatusLine cterm=NONE ctermbg=NONE              gui=NONE guibg=NONE
    highlight Normal     cterm=NONE ctermbg=NONE              gui=NONE guibg=NONE
    highlight NonText    cterm=NONE ctermbg=NONE              gui=NONE guibg=NONE
    set nocursorline
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


"neovide settings
let g:neovide_refresh_rate=60
let g:neovide_transparency=0.995
let g:neovide_cursor_vfx_mode = "railgun"

" Color scheme
colo ayu
let g:airline_theme = 'challenger_deep'
""call Clearbg()
"AirlineTheme challenger_deep

let g:VimTodoListsMoveItems = 1
let g:VimTodoListsDatesEnabled = 1
let g:VimTodoListsDatesFormat = "%a %b %d, %Y"


autocmd FileType go set omnifunc=v:lua.vim.lsp.omnifunc

nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
lua require 'lsp'
lua require('wlsample.bubble')
"lua require('wlsample.airline')
"lua require('wlsample.airline_anim')
lua << EOF
local windline = require('windline')
windline.setup({
  statuslines = {
      default,
      airline,
      markdown
  }
})
EOF
lua require('wlsample.bubble')
