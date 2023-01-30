local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local builtin = require('telescope.builtin')

local Remap = require("jllz.keymap")
local nnoremap = Remap.nnoremap

telescope.setup {
  defaults = {

    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    },
} 

-- For being able to see media files
telescope.load_extension('media_files')

-- Remap section
nnoremap("<leader>f", ":Telescope")
nnoremap("<Leader>ff", function()
    require('telescope.builtin').find_files()
end)
nnoremap("<leader>fs", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end)
nnoremap("<leader>fb", function()
    require('telescope.builtin').buffers()
end)
nnoremap("<leader>fh", function()
    require('telescope.builtin').help_tags()
end)
