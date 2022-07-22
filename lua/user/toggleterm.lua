local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup({
	size = 10,
	open_mapping = [[<c-_>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = 'pwsh -NoLogo',
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  -- vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
  -- vim.api.nvim_buf_set_keymap(0, 't', '<C-s>', [[<C-\><C-n><cmd]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _LAZYGIT_TOGGLE()
	lazygit:toggle()
end

local live_server = Terminal:new({
  cmd = "browser-sync start --server --files .",
  hidden = true,
  on_open = function(term)
    -- vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<leader>g", "<cmd>lua _WEB_TOGGLE()<CR>", {noremap = true, silent = true})
    vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<leader>w", "<cmd>bdelete!<CR>", {noremap = true, silent = true})
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "<leader>w", "<cmd>bdelete!<CR>", {noremap = true, silent = true})
  end,
})

function _WEB_TOGGLE()
live_server:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _WEB_TOGGLE()<CR>", {noremap = true, silent = true})

--local node = Terminal:new({ cmd = "node", hidden = true })
--
--function _NODE_TOGGLE()
--	node:toggle()
--end
--
--local ncdu = Terminal:new({ cmd = "ncdu", hidden = true })
--
--function _NCDU_TOGGLE()
--	ncdu:toggle()
--end
--
--local htop = Terminal:new({ cmd = "htop", hidden = true })
--
--function _HTOP_TOGGLE()
--	htop:toggle()
--end
--
--local python = Terminal:new({ cmd = "python", hidden = true })
--
--function _PYTHON_TOGGLE()
--	python:toggle()
--end
