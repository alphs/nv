-- init.lua


-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("custom.lazy")


vim.opt.rnu = true
vim.opt.nu = true

vim.opt.shiftwidth = 4
vim.opt.signcolumn = 'yes'
vim.opt.scrolloff = 8


-- keymaps
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

vim.keymap.set("n", "-", "<cmd>Ex<CR>")

-- `help: vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("highligt-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank({
      timeout = 100,
    })
  end,
})
