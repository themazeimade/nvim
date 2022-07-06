" filetype plugin indent on
"vim-plug
call plug#begin()

" Impatient (Faster loading)
Plug 'lewis6991/impatient.nvim'

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
Plug 'lukas-reineke/indent-blankline.nvim'

" Git
Plug 'lewis6991/gitsigns.nvim'

" File Manager
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'alvan/vim-closetag'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'preservim/nerdtree'
" Plug 'ryanoasis/vim-devicons'
" Plug 'jiangmiao/auto-pairs'

"Lua/Telescope required plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'f3fora/cmp-spell'

" snippets
Plug 'L3MON4D3/Luasnip'
Plug 'rafamadriz/friendly-snippets'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'jose-elias-alvarez/null-ls.nvim'

call plug#end()

" LUA CONFIG FILES
lua require "user.impatient"

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

lua require "user.indentline"

" highlight ColorColumn ctermbg=0 guibg=lightgrey
colorscheme gruvbox
set background=dark
