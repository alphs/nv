return {
	{
		'catppuccin/nvim',
		config = function()
			vim.cmd.colorscheme 'catppuccin-macchiato'
			-- what does this do ? -- vim.cmd.hi 'Comment gui=none'
		end
	}
}
