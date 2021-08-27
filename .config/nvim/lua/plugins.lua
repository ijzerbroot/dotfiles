-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use '9mm/vim-closer'

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}

  use 'tpope/vim-dadbod'
  use {
    "AckslD/nvim-neoclip.lua",
    config = function()
        require('neoclip').setup()
    end,
  }

  use 'akinsho/nvim-toggleterm.lua'
  use 'nikvdp/neomux'
  use { 'ms-jpq/coq_nvim', branch = 'coq'} -- main one
  use { 'ms-jpq/coq.artifacts', branch= 'artifacts'} -- 9000+ Snippets
  use 'kyazdani42/nvim-web-devicons'
  use 'justinmk/vim-sneak'
  use 'lewis6991/gitsigns.nvim'
  --use 'famiu/feline.nvim'
  use 'windwp/windline.nvim'
  use 'yashguptaz/calvera-dark.nvim'
  use 'Shadorain/shadotheme'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'vim-jp/syntax-vim-ex'
  use 'pechorin/any-jump.vim'
  --use 'arcticicestudio/nord-vim'
  --use 'rakr/vim-one'
  use 'Rigellute/rigel'
  use 'ghifarit53/tokyonight-vim'
  use 'ntk148v/vim-horizon'
  use 'pineapplegiant/spaceduck'
  use 'neovim/nvim-lsp'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/lsp-status.nvim'
  --use 'liuchengxu/vista.vim'
  --use 'junegunn/goyo.vim'
  --use 'flrnprz/candid.vim'
  use 'ayu-theme/ayu-vim'
  use 'rakr/vim-two-firewatch'
  use 'rakr/vim-togglebg'
  --use 'markonm/traces.vim'
  use 'fenetikm/falcon'
  use 'godlygeek/tabular'  
  use 'editorconfig/editorconfig-vim'
  use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
  use 'junegunn/fzf.vim'
  use 'mileszs/ack.vim'
  use 'prettier/vim-prettier'
  use 'rbgrouleff/bclose.vim'
  use 'sbdchd/neoformat'
  --use 'scrooloose/nerdcommenter'
  use 'sebdah/vim-delve'
  --use 'terryma/vim-multiple-cursors'
  use 'tpope/vim-fugitive'
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  --use 'cespare/vim-toml'
  use 'kshenoy/vim-signature'
  use 'junegunn/vim-easy-align'
  use 'tpope/vim-commentary'
  use 'tpope/vim-vinegar'
  --use 'mhinz/vim-janah'
  use { 'challenger-deep-theme/vim', as='challenger-deep' }
  use 'NLKNguyen/papercolor-theme'
  --use 'puppetlabs/puppet-syntax-vim'
  use 'tpope/vim-unimpaired'
  use 'maksimr/vim-jsbeautify'
  --use 'reedes/vim-pencil'
  use 'tpope/vim-markdown'
  --use 'jtratner/vim-flavored-markdown'
  use 'kablamo/vim-git-log'
  use 'junegunn/gv.vim'
  use 'airblade/vim-gitgutter'
  --use 'sjl/badwolf'
  use 'tomasr/molokai'
  --use 'morhetz/gruvbox'
  use { 'zenorocha/dracula-theme', rtp='vim/'}
  use 'mkarmona/colorsbox'
  use 'romainl/Apprentice'
  use 'Lokaltog/vim-distinguished'
  use 'w0ng/vim-hybrid'
  use 'atelierbram/Base2Tone-vim'
  use 'tpope/vim-surround'
  use 'ryanoasis/vim-devicons'
  use 'mhinz/vim-startify'
  use 'freitass/todo.txt-vim'
  use { 'embark-theme/vim', as= 'embark' }
  use {
       'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
  use 'cocopon/iceberg.vim'
  --prereq: pip install sqlparse
  --use 'mpyatishev/vim-sqlformat'

  -- Load on a combination of conditions: specific filetypes or commands
  -- Also run code after load (see the "config" key)
  -- use {
  --   'w0rp/ale',
  --   ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
  --   cmd = 'ALEEnable',
  --   config = 'vim.cmd[[ALEEnable]]'
  -- }


  end)
