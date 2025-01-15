-- init.lua

require("custom.lazy")


vim.opt.rnu = true
vim.opt.nu = true

vim.opt.shiftwidth = 4


-- keymaps
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

vim.keymap.set("n", "-", "<cmd>Ex<CR>")

-- autocmds

-- `help: vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("highligt-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
