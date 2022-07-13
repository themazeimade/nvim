local status_ok, neorg = pcall(require, "neorg")
if not status_ok then
  return
end

neorg.setup {
  load = {
    ["core.defaults"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          work = "~/notes/work",
          home = "~/notes/home",
        }
      }
    },
    ["core.norg.completion"] = {
      config = { -- Note that this table is optional and doesn't need to be provided
        engine = "nvim-cmp" -- Configuration here
      },
    },
    ["core.norg.concealer"] = {
      config = { -- Note that this table is optional and doesn't need to be provided
        icon_preset = "diamond"
      }
    }
  }
}
