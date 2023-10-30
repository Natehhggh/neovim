local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<C-g>', function()
	builtin.grep_string({search = vim.fn.input("Grep > ") } );
end)

vim.keymap.set('n', '<leader>fg', builtin.live_grep,{})

vim.keymap.set('n', '<leader>gr', "<cmd>Telescope resume<cr>")

require("telescope").load_extension("git_worktree")
