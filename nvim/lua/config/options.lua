vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
-- Wrap on word boundaries.
vim.opt.linebreak = true
-- Displays may have grown wider, but eyes are still more comfortable with short line lengths.
-- Column at 101 so that everything up to the 100th character is not striked.
vim.opt.colorcolumn = "101"

-- Remember that == indents a line correctly.
vim.opt.autoindent = true
-- Do not enable smartindent globally. It is a C-oriented heuristic that
-- forces lines beginning with # to column zero.
vim.opt.smartindent = false

-- Fallback indentation settings.
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Integrate with system clipboard by default.
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.updatetime = 100
vim.opt.timeoutlen = 300
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.smoothscroll = true
