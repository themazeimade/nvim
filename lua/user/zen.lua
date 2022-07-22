local status_ok, zen = pcall(require, "zen-mode")
if not status_ok then
	return
end

-- local twilight_ok, twilight = pcall(require, "twilight")
-- if not twilight_ok then
-- 	return
-- end
--
-- twilight.setup {
--   treesitter = false
-- }
zen.setup {
  plugins = {
    twilight = false
  }
}

