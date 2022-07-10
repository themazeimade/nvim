local navic = require("nvim-navic")

local opts = {
  on_attach = {
    function(client, bufnr)
      navic.attach(client,bufnr)
    end
  },
}

return opts
