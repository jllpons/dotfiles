local Remap = require("jllz.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader>u", vim.cmd.UndotreeToggle)
