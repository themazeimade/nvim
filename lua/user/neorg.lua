local status_ok, neorg = pcall(require, "neorg")
if not status_ok then
  return
end

-- local status_head, headlines = pcall(require, "headlines")
-- if not status_head then
--   return
-- end

neorg.setup {
  load = {
    ["core.defaults"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          notes = "~/notes",
          autochdir = false,
          index = "index.norg",
          default_workspace = "notes"
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
        -- icon_preset = "varied"
        icons = {
          heading = {
            enabled = true,

            level_1 = {
                icon = "◉",
            },

            level_2 = {
                icon = " ◈",
            },

            level_3 = {
                icon = "  ○",
            },

            level_4 = {
                icon = "   ❖",
            },

            level_5 = {
                icon = "    ◇",
            },

            level_6 = {
                icon = "     ",
            },
          },

          marker = {
            icon = "",
          },

          footnote = {
            single = {
                icon = "†",
            },
            multi_prefix = {
                icon = "‡ ",
            },
            multi_suffix = {
                icon = "‡ ",
            }
          }
        }
      }
    },
    ["core.norg.journal"] = {
      config = {
        workspace = "notes",
        strategy = "nested"
      }
    },
    ["core.norg.qol.toc"] = {
      config = {
        close_split_on_jump = true
      }
    },
    ["core.gtd.base"] = {
      config = {
        workspace = "notes"
      }
    }
  }
}

-- headlines.setup {
--   norg = {
--     query = vim.treesitter.parse_query(
--       "norg",
--       [[
--         [
--           (heading1_prefix)
--           (heading2_prefix)
--           (heading3_prefix)
--           (heading4_prefix)
--           (heading5_prefix)
--           (heading6_prefix)
--         ] @headline
--
--         (weak_paragraph_delimiter) @dash
--         (strong_paragraph_delimiter) @doubledash
--
--         ((ranged_tag
--           name: (tag_name) @_name
--           (#eq? @_name "code")
--         ) @codeblock (#offset! @codeblock 0 0 1 0))
--
--         (quote1_prefix) @quote
--       ]]
--     ),
--     headline_highlights = { "Headline" },
--     codeblock_highlight = "CodeBlock",
--     dash_highlight = "Dash",
--     dash_string = "-",
--     doubledash_highlight = "DoubleDash",
--     doubledash_string = "=",
--     quote_highlight = "Quote",
--     quote_string = "┃",
--     fat_headlines = false,
--   },
-- }
