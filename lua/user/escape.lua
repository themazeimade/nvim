local status_ok, escape = pcall(require, 'better_escape')
if not status_ok then
  return
end

escape.setup {
  mapping = { "jk" }, -- a table with mappings to use
  timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
  clear_empty_lines = false, -- clear line after escaping if there is only whitespace
  keys = "<Esc>",
}
