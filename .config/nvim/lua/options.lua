vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 0                         -- always show tabs
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 4                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4                             -- insert 2 spaces for a tab
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.number = true                           -- set numbered lines
vim.wo.relativenumber = true
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1                    -- disable netrw

vim.cmd [[colorscheme tokyonight-night]]
