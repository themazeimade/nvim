" filetype plugin indent on
"vim-plug
call plug#begin()

" Impatient (Faster loading)
Plug 'lewis6991/impatient.nvim'

"This is a comment
" Plug 'mbbill/undotree'
" Plug 'gruvbox-community/gruvbox'
Plug 'lunarvim/colorschemes'
Plug 'nvim-lualine/lualine.nvim'
" Plug 'ap/vim-css-color'
" Plug 'shinchu/lightline-gruvbox.vim'
Plug 'lervag/vimtex'
Plug 'akinsho/bufferline.nvim'
Plug 'moll/vim-bbye'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'akinsho/toggleterm.nvim'
Plug 'numToStr/Comment.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'stevearc/aerial.nvim'
Plug 'abecodes/tabout.nvim'
Plug 'lukas-reineke/headlines.nvim'
Plug 'p00f/nvim-ts-rainbow'
Plug 'max397574/better-escape.nvim'
Plug 'phaazon/hop.nvim', { 'branch':'v1'}

"Focus mode
Plug 'folke/twilight.nvim'
Plug 'folke/zen-mode.nvim'
" Git
Plug 'lewis6991/gitsigns.nvim'

" File Manager
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'alvan/vim-closetag'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'preservim/nerdtree'
" Plug 'ryanoasis/vim-devicons'
" Plug 'jiangmiao/auto-pairs'

"Lua/Telescope required plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'lewis6991/spellsitter.nvim'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'ray-x/lsp_signature.nvim'
" Plug 'f3fora/cmp-spell'

" snippets
Plug 'L3MON4D3/Luasnip'
Plug 'rafamadriz/friendly-snippets'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'jose-elias-alvarez/null-ls.nvim'
" Plug 'SmiteshP/nvim-navic'
" Future
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'
" Plug 'rcarriga/cmp-dap'
" Plug 'vigoux/LanguageTool.nvim'
" Plug 'puremourning/vimspector'
"
" To be determined
Plug 'nvim-neorg/neorg'

call plug#end()

" LUA CONFIG FILES

lua require "user.impatient"

lua require "user.keymaps"

" lua require 'user.navic'

lua require "user.lsp"

lua require "user.bufferline"

lua require "user.lualine"

lua require "user.treesitter"

lua require "user.cmp"

lua require "user.nvim-tree"

lua require "user.toggleterm"

lua require "user.comment"

lua require "user.gitsigns"

lua require "user.autopairs"

lua require "user.indentline"

lua require "user.dap"

lua require "user.options"

lua require "user.aerial"

lua require "user.spellsitter"

lua require "user.tabout"

lua require "user.zen"

lua require "user.neorg"

lua require "user.escape"

lua require "user.hop"
" set winbar+=%{%v:lua.require'nvim-navic'.get_location()%}
" set colorcolumn=90
" set spell
" highlight ColorColumn ctermbg=0 guibg=lightgrey
" colorscheme gruvbox
" set background=dark
