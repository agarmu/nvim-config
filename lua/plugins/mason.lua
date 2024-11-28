-- Customize Mason plugins

---@type LazySpec
return {
  {
    "pest-parser/pest.vim",
  },
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "bashls", "pest_ls", "asm_lsp", "coq_lsp" },
        handlers = {
          ["pest_ls"] = function() require("pest-vim").setup {} end,
        },
      }
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        "asmfmt",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "cppdbg",
        "lua_ls",
        -- add more arguments for adding more debuggers
      },
    },
  },
}
