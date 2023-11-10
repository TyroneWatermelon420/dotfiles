vim.g.mapleader = 'ö'
-- Shorten function name
local builtin = require('telescope.builtin')
local keymap = vim.keymap.set
local opts = { silent = true }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
keymap("n", "<C-c>", "<cmd>qa!<CR>")
keymap('n', "<leader>ff", builtin.find_files, {})
keymap("n", "<leader>g", builtin.git_status, {})
keymap("n", "<leader>t", "<cmd>Telescope<CR>")
keymap("n", "<leader>l", "<cmd>Lazy<CR>")
