return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        after = "mason.nvim",  -- Ensure this runs after mason.nvim is loaded
        config = function()
            require("mason-lspconfig").setup({
              ensure_installed= { "lua_ls", "pyright", "gopls", "ts_ls" }
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        after =  { "mason-lspconfig.nvim", "cmp_nvim_lsp"},  -- Ensure this runs after mason-lspconfig.nvim is loaded
        config = function()
            -- Example of setting up an LSP with mason
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            -- Set up your LSP servers here
            lspconfig.lua_ls.setup{
              capabilities=capabilities
            }
            lspconfig.pyright.setup{
              capabilities=capabilities
            }
            lspconfig.gopls.setup{
              capabilities=capabilities
            }
            lspconfig.ts_ls.setup{
              capabilities=capabilities
            }
        end,
    },
    {
      "nvim-treesitter/nvim-treesitter",
      event = { "BufReadPre", "BufNewFile" },
      build = ":TSUpdate",
      config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
          highlight = {
            enable = true,
          },
          indent = { enable = true },

          ensure_installed = {
            "json",
            "lua",
            "javascript",
            "go",
            "python",
            "rust",
          },
        })
      end,
    }
}

