require('doing').setup {
  -- default options
  message_timeout = 2000,
  winbar = { 
    enabled = true,
    -- ignores buffers that match filetype
    ignored_buffers = { 'NvimTree' }
  },

  doing_prefix = 'Current Task: ',
  store = {
    -- automatically create a .tasks when calling :Do
    auto_create_file = true, 
    file_name = '.tasks',
  },
}
    -- example on how to change the winbar highlight
--    vim.api.nvim_set_hl(0, 'WinBar', { link = 'Search' })

 --   local api = require('doing.api')

  --  vim.keymap.set('n', '<leader>de', api.edit, { desc = '[E]dit what tasks you`re [D]oing' })
   -- vim.keymap.set('n', '<leader>dn', api.done, { desc = '[D]o[n]e with current task' })
