return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
            |\      _,,,---,,_
      ZZZzz /,`.-'`'    -.  ;-;;,_
           |,4-  ) )-,_. ,\ (  `'-'
          '---''(_/--'  `-'\_)

        l e m o n a d e . d e v
          ]],
        },
      },
    },
  },

  -- ダッシュボードのヘッダー色を変更
  {
    "catppuccin/nvim",
    opts = {
      custom_highlights = function(colors)
        return {
          SnacksDashboardHeader = { fg = "#c8d4e6", bold = true },
          SnacksDashboardFooter = { fg = "#4a5a75", italic = true },
          SnacksDashboardIcon = { fg = "#8aabc4" },
          SnacksDashboardKey = { fg = "#6a9fd8", bold = true },
          SnacksDashboardDesc = { fg = "#a8b4c4" },
        }
      end,
    },
  },
}
