
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
      "julia",
      "just",
      "latex",
      "lua",
      "make",
      "nix",
      "ocaml",
      "php",
      "rust",
      "sql",
      "yaml",
      "zig"
      -- add more arguments for adding more treesitter parsers
    },
  },
}
