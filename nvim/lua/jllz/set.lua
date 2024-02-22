-- cursor
vim.opt.guicursor = ""
vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

-- apparence
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs & indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.list = true -- This is for the indent backline

-- backspace
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, eol or insert mode start

-- line wrapping
vim.opt.wrap = false
vim.api.nvim_command('autocmd FileType markdown,text,tex,md set wrap linebreak nolist textwidth=80')

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- scrolloff
vim.opt.scrolloff = 8

-- color column
vim.opt.colorcolumn = "80"

-- clipboard (same as the system)
vim.opt.clipboard:append("unnamedplus")

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Defining space as leader key (for keymapping)
vim.g.mapleader = " "
