filetype plugin indent on
"vim-plug
" ('~/.config/nvim/')
call plug#begin()
"This is a comment
Plug 'mbbill/undotree'
Plug 'gruvbox-community/gruvbox'
Plug 'lunarvim/colorschemes'
Plug 'nvim-lualine/lualine.nvim'
Plug 'ap/vim-css-color'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'lervag/vimtex'
Plug 'akinsho/bufferline.nvim'
Plug 'moll/vim-bbye'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'akinsho/toggleterm.nvim'
Plug 'numToStr/Comment.nvim'
Plug 'windwp/nvim-autopairs'

" Git
Plug 'lewis6991/gitsigns.nvim'

"File Manager
"Plug 'preservim/nerdtree'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'

"Plug 'ryanoasis/vim-devicons'
" Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'nathanaelkane/vim-indent-guides'

"Lua/Telescope required plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

"Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'

"snippets
Plug 'L3MON4D3/Luasnip'
Plug 'rafamadriz/friendly-snippets'

"LSP 

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'jose-elias-alvarez/null-ls.nvim'

call plug#end()

syntax on
syntax enable

"set guicursor=
"set noerrorbells
"set hidden
"set nohlsearch
"set tabstop=4 softtabstop=4
"set shiftwidth=4
"set expandtab
"set relativenumber
"set smartindent
"set nu
"set nowrap
"set smartcase
"set noswapfile
"set nobackup
"set undodir=~/.vim/undodir
"set undofile
"set scrolloff=8
"set incsearch
"set signcolumn=yes
" set colorcolumn=80
"more column
"set cmdheight=2
"set sc
"set smd


"LUA CONFIG FILES


lua require "user.keymaps"

lua require "user.bufferline"

lua require "user.lualine"

lua require "user.options"

lua require "user.treesitter"

lua require "user.cmp"

lua require "user.lsp"

lua require "user.nvim-tree"

lua require "user.toggleterm"

lua require "user.comment"

lua require "user.gitsigns"

lua require "user.autopairs"

" highlight ColorColumn ctermbg=0 guibg=lightgrey
colorscheme gruvbox
set background=dark

"VIMTEX CONFIG

let g:vimtex_view_method = 'sioyek'
let g:vimtex_complete_enabled = 1
"let g:vimtex_view_general_viewer = 'SumatraPDF'
"let g:vimtex_view_general_options
"            \ = '-reuse-instance -forward-search @tex @line @pdf'

"let g:vimtex_quickfix_ignore_filters = [ 
"            \'Package biblatex Warning: The starred command ']
"let g:vimtex_view_general_viewer = 'okular'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
"let g:vimtex_view_general_options_latexmk = '--unique'
"let g:vimtex_view_compiler_method = 'latexrun'
"let maplocalleader = ','
"set completeopt-=preview
