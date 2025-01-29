-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


use "nvim-lua/plenary.nvim" -- dependant for harpoon and telescope


-- Fuzzy finder
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}


-- color scheme
use { "catppuccin/nvim", as = "catppuccin" }

use{'nvim-treesitter/nvim-treesitter', run =':TSUpdate'}

-- Harpoon, Jump to marked files
use { 
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
}


-- Undo Tree, TODO: find out how to utilize more
use('mbbill/undotree')

-- Git Integration TODO: get better use from
use('tpope/vim-fugitive')

-- LSP
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

-- Switches Pip env, Mostly unused
use 'AckslD/swenv.nvim'

-- adds the indent guidlines
use 'lukas-reineke/indent-blankline.nvim'

-- wont work with verison nvim?
--use 'psf/black'
--not sure if it was going anywhere
--use 'dense-analysis/ale'



-- LSP for Python TODO: Update as it's been retired for a while
use 'jose-elias-alvarez/null-ls.nvim'


-- Git Worktree integration
use 'ThePrimeagen/git-worktree.nvim'


-- status line customization
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

-- todo list
use 'Hashino/doing.nvim'

end) 
