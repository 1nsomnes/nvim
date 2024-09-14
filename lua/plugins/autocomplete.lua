return {
  {
    'hrsh7th/nvim-cmp',
    
    dependencies = { 
      -- autocomplete stuff 
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',

        -- vsnip
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',

    },
   
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        end,
      },
        mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
        }, {
          { name = "buffer" },
        }),

        window = {
          documentation = {
        border = {"┌", "─", "┐", "│", "┘", "─", "└", "│"},
      },
      completion = {
        border = {"┌", "─", "┐", "│", "┘", "─", "└", "│"},
      }
      },
        completion = {
          completeopt = 'menu,menuone,noinsert'
        }
      })
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  }
}
