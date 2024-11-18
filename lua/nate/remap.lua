-- Assigns leader key
vim.g.mapleader = " "


--Returns to netrw
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)



--Moves highlighted text with cursor and indents
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")


-- keeps cursor home on J command
vim.keymap.set("n", "J", "mzJ`z")


-- centers screen on half page jumps
vim.keymap.set("n", "<C-d>",  "<C-d>zz") 
vim.keymap.set("n", "<C-u>",  "<C-u>zz") 


--next in search keeps screen centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


--paste over highlighted but dont replace yank register with highlighed text
vim.keymap.set("x", "<leader>p", "\"_dP")


--using system clipboard over vims
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<F1>", "<nop>")
vim.keymap.set("v", "<F1>", "<nop>")
vim.keymap.set("i", "<F1>", "<nop>")


vim.keymap.set("n", "<Home>", "<nop>")
vim.keymap.set("v", "<Home>", "<nop>")
vim.keymap.set("i", "<Home>", "<nop>")


vim.keymap.set("n", "<End>", "<nop>")
vim.keymap.set("v", "<End>", "<nop>")
vim.keymap.set("i", "<End>", "<nop>")

--todo figure out tmux windows this is what I want
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- rename hovered word
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><left>")

-- toggle relative line number for screenshare
vim.keymap.set("n", "<C-l><C-l>", ":set relativenumber!<CR>")

