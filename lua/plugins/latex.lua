return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "texlab",
        "tex-fmt",
      },
    },
  },
  {
    "lervag/vimtex",
    lazy = false,
    -- tag = "v2.15", -- uncomment to pin to a specific release
    config = function()
      --global vimtex settings
      vim.g.vimtex_imaps_enabled = 0 --i.e., disable them
      --vimtex_view_settings
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_view_general_options =
        "-reuse-instance -forward-search @tex @line @pdf"
      --quickfix settings
      vim.g.vimtex_quickfix_open_on_warning = 0 --  don't open quickfix if there are only warnings
      vim.g.vimtex_quickfix_ignore_filters = {
        "Underfull",
        "Overfull",
        "LaTeX Warning: .\\+ float specifier changed to",
        "Package hyperref Warning: Token not allowed in a PDF string",
      }
    end,
  },
  -- {
  --   "iurimateus/luasnip-latex-snippets.nvim",
  --   config = function()
  --     require("luasnip-latex-snippets").setup()
  --     -- or setup({ use_treesitter = true })
  --     require("luasnip").config.setup({ enable_autosnippets = true })
  --   end,
  -- },
  {
    "let-def/texpresso.vim",
  },
}
