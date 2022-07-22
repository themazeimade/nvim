local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

-- Navi = require("nvim-navic")

require("user.lsp.lsp-signature")
require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"

-- Temporal maybe

-- require("lspconfig").texlab.setup{
--   on_attach = require("aerial").on_attach,
-- }
