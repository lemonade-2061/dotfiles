return {
  -- Go言語サポート
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "go",
        "gomod",
        "gowork",
        "gosum",
      })
    end,
  },

  -- LSP設定
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Go用LSP
        gopls = {
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
              },
              staticcheck = true,
            },
          },
        },
        -- Dockerfile用LSP
        dockerls = {},
        -- docker-compose用LSP
        docker_compose_language_service = {},
      },
    },
  },

  -- Mason（LSPの自動インストール）
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Go
        "gopls", -- LSP
        "goimports", -- フォーマッター
        "gofumpt", -- より厳格なフォーマッター
        "golangci-lint", -- リンター
        -- Docker
        "dockerfile-language-server", -- Dockerfile LSP
        "docker-compose-language-service", -- docker-compose LSP
        "hadolint", -- Dockerfileリンター
      },
    },
  },
}
