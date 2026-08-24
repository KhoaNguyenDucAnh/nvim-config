-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.keymap.set("x", "p", [["_dP]], { desc = "Paste without yanking replaced text" })

local group = vim.api.nvim_create_augroup("AutoReload", { clear = true })

vim.api.nvim_create_autocmd({
  "FocusGained",
  "BufEnter",
  "CursorHold",
  "CursorHoldI",
}, {
  group = group,
  command = "if mode() != 'c' | checktime | endif",
})

vim.api.nvim_create_autocmd("FileChangedShellPost", {
  group = group,
  callback = function()
    vim.notify("File reloaded from disk", vim.log.levels.INFO)
  end,
})
