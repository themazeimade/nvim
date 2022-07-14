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
      config = {
        engine = "nvim-cmp"
      },
    },
    ["core.norg.concealer"] = {
      config = {
        icon_preset = "diamond"
      }
    },
    ["core.norg.journal"] = {
      config = {
        workspace = 'home',
        strategy = 'flat'
      }
    },
    ["core.norg.qol.toc"] = {
      config = {
        close_split_on_jump = true
      }
    },
    ["core.gtd.base"] = {
      config = {
        workspace = "work"
      }
    }
  }
}
