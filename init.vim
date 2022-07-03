filetype plugin indent on
"vim-plug
" ('~/.config/nvim/')
call plug#begin()

Plug 'mbbill/undotree'
Plug 'gruvbox-community/gruvbox'
"Plug 'itchyny/lightline.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'ap/vim-css-color'
"Plug 'mcchrish/nnn.vim'
Plug 'shinchu/lightline-gruvbox.vim'
"Plug 'nvim-telescope/telescope.nvim'
"Plug 'ycm-core/YouCompleteMe'
Plug 'lervag/vimtex'
Plug 'akinsho/bufferline.nvim'
Plug 'moll/vim-bbye'
"File Manager
"Plug 'preservim/nerdtree'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'

"Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'nathanaelkane/vim-indent-guides'

"Lua/Telescope required plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

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
set colorcolumn=80
""more column
"set cmdheight=2
"set sc
"set smd


"LUA CONFIG FILES
"
"
lua require "user.keymaps"

lua require "user.bufferline"

lua require "user.lualine"

lua require "user.options"

lua require "user.treesitter"

lua require "user.cmp"

lua require "user.lsp"

lua require "user.nvim-tree"

highlight ColorColumn ctermbg=0 guibg=lightgrey
colorscheme gruvbox
set background=dark



"NERDTree shorcuts and CONFIG
"
"
"autocmd VimEnter * NERDTree | wincmd p


" Exit Vim if NERDTree is the only window remaining in the only tab.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
"autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <leader>e :NERDTreeToggle<CR>

"LIGHTLINE CONFIG
"
"
"let g:lightline = {}
"let g:lightline.colorscheme = 'gruvbox'
"
"VIMTEX CONFIG
"
"
let g:vimtex_view_method = 'sioyek'
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
let g:vimtex_complete_enabled = 1
"set completeopt-=preview
