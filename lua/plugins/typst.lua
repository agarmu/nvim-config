return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "tinymist",
      },
    },
  },
  {
    "kaarmu/typst.vim",
    ft = "typst",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tinymist = {
          settings = {
            formatterMode = "typstyle",
            exportPdf = "onType",
            semanticTokens = "disable",
          },
        },
      },
    },
  },
  {
    "chomosuke/typst-preview.nvim",
    cmd = { "TypstPreview", "TypstPreviewToggle", "TypstPreviewUpdate" },
    build = function()
      require("typst-preview").update()
    end,
    opts = {
      dependencies_bin = {
        tinymist = "tinymist",
      },
    },
  },
}
