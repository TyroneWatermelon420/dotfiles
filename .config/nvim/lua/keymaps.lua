vim.g.mapleader = ','
-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
keymap("n", "<C-c>", ":qa!<CR>")
keymap("n", "<C-t>", ":NvimTreeToggle | wincmd p<CR>")
keymap("n", "<C-p>", ":NvimTreeFocus<CR>")
