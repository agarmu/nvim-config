-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- import/override with your plugins folder
  { import = "astrocommunity.fuzzy-finder.fzf-lua" },
  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },
  -- language packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cpp" },
  -- { import = "astrocommunity.pack.haskell" },
  { import = "astrocommunity.pack.just" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.julia" },
  { import = "astrocommunity.pack.lean" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.ocaml" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.typst" },
  { import = "astrocommunity.pack.zig" },
}
