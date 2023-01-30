local Remap = require("jllz.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap

-- Go to Netrw
nnoremap("<leader>pv", ":Ex<CR>")
 
-- Run current script using python as interpreter
nnoremap("<leader>rp", ":w<CR>:!python %<CR>")
 
-- Comment the highlighted block using "#"
vnoremap("<leader>#", ":s/^/# <CR>:noh<CR>")
 
-- Uncomment the highlighted block using # 
vnoremap("<leader>-#", ":s/^# //<CR>:noh<CR>")


vnoremap("<leader>--", ":s/^/-- <CR>:noh<CR>")
 
-- Uncomment the highlighted block using # 
vnoremap("<leader>---", ":s/^-- //<CR>:noh<CR>")

-- Being able to move up and down a highlighted block
vnoremap("J", ":m '>+1<CR>gv=gv<CR>")
vnoremap("K", ":m '<-2<CR>gv=gv<CR>")

-- When I jump half page, keep the cursor on the center of the screen
nnoremap("<C-d>", "<C-d>zz<CR>")
nnoremap("<C-u>", "<C-u>zz<CR>")

-- When I search for something, keep the cursor on the center of the screen
nnoremap("n", "nzzV<CR>")
nnoremap("N", "NzzV<CR>")

