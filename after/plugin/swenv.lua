local swnv = require('swenv').setup({
	get_venvs = function(venvs_path)
		return require(swenv.api).get_venvs(venvs_path)
	end,
	venvs_path = vim.fn.expand('~/venvs'),
	post_set_venv = nil,
})



--vim.keymap.set("n", "<leader>en", function() require('swenv').pick_venv()|vim.cmd("LspRestart"))
vim.keymap.set("n", "<leader>en", function() require('swenv').pick_venv() end)
