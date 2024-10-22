-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

--[[
    Disable left-right scroll keymaps & replace them with Shift+Up/Down Keymaps
    due to infrequent need & prevent accidental use.
--]]
vim.keymap.set({ "n", "i", "v" }, "<ScrollWheelRight>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<ScrollWheelLeft>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<S-ScrollWheelUp>", "<ScrollWheelRight>")
vim.keymap.set({ "n", "i", "v" }, "<S-ScrollWheelDown>", "<ScrollWheelRight>")
