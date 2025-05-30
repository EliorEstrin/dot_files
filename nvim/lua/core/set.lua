-- [[ Setting options ]]
-- See `:help vim.o`
--
-- open a split window to the right side like a normal human being
vim.o.splitright = true
-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true
-- Reletive number
vim.o.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Minimum lines down
vim.opt.scrolloff = 8

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true
-- Case insensitive searching UNLESS /C or capital in search vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


vim.cmd[[
    autocmd FileType jenkinsfile setlocal filetype=groovy
]]
