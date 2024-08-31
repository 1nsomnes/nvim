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
              ensure_installed= { "lua_ls", "pyright" }
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        after = "mason-lspconfig.nvim",  -- Ensure this runs after mason-lspconfig.nvim is loaded
        config = function()
            -- Example of setting up an LSP with mason
            local lspconfig = require("lspconfig")

            -- Set up your LSP servers here
            lspconfig.lua_ls.setup{}
            lspconfig.pyright.setup{}
        end,
    },
}

