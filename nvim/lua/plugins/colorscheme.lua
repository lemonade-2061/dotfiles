return {
  -- テーマ: catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      color_overrides = {
        mocha = {
          base = "#12161e",
          mantle = "#0e1119",
          crust = "#0a0d14",
          surface0 = "#1a2030",
          surface1 = "#253045",
          surface2 = "#2e3d55",
          overlay0 = "#4a5a75",
          overlay1 = "#5a6d8a",
          text = "#a8b4c4",
          subtext1 = "#8a9ab0",
          subtext0 = "#7a8da6",
          blue = "#6a9fd8",
          lavender = "#8aabc4",
          sapphire = "#5a8abf",
          sky = "#7ab4d0",
          teal = "#5a9a8a",
          green = "#7aaa7a",
          yellow = "#c4a870",
          peach = "#c49070",
          red = "#c47070",
          mauve = "#9a7abc",
          pink = "#b47a9a",
        },
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        neotree = true,
        treesitter = true,
        mason = true,
        which_key = true,
      },
    },
  },

  -- LazyVimにテーマを設定
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
