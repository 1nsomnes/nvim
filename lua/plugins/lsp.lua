return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    after = "mason.nvim",     -- Ensure this runs after mason.nvim is loaded
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "gopls", "ts_ls", "jsonls" }
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    after = { "mason-lspconfig.nvim", "cmp_nvim_lsp" },     -- Ensure this runs after mason-lspconfig.nvim is loaded
    config = function()
      -- Example of setting up an LSP with mason
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.sourcekit.setup {}
      -- Set up your LSP servers here
      local on_attach = function(client, bufnr)
        local bufmap = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end

        bufmap("n", "[d", vim.diagnostic.goto_prev, "Prev Diagnostic")
        bufmap("n", "]d", vim.diagnostic.goto_next, "Next Diagnostic")
      end

      local servers = { "lua_ls", "pyright", "gopls", "ts_ls", "jsonls", "dartls"}
      for _, name in ipairs(servers) do
        lspconfig[name].setup {
          capabilities = capabilities,
          on_attach    = on_attach,
        }
      end
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
