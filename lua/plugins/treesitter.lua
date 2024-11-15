-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "bash",
      "cpp",
      "git_config",
      "git_rebase",
      "gitignore",
      "java",
      "javascript",
      "json",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
