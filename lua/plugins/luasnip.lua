return {
  {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp",
    config = function()
      require("luasnip").config.set_config({
        enable_autosnippets = true,
        store_selection_keys = "<Tab>",
      })
      require("luasnip.loaders.from_lua").load({ paths = { "./lua/luasnip/" } })
    end,
  },
}
