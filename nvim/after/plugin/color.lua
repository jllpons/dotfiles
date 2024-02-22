-- vim.opt.background = "dark"
-- vim.g.gruvbox_contrast_dark = "hard"

 require("catppuccin").setup {
            flavour = "mocha", -- mocha, macchiato, frappe, latte
        }

require("rose-pine").setup({
    dark_variant = "moon", -- "main"
})

-- vim.cmd[[colorscheme tokyonight]]
-- vim.g.sonokai_diagnostic_virtual_text = "colored"
-- vim.sonokai_diagnostic_text_highlight = 1
-- vim.g.sonokai_style = 'atlantis'
-- vim.cmd("colorscheme sonokai")

-- Gruvbox-material section
vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
vim.gruvbox_material_diagnostic_text_highlight = 1
vim.g.gruvbox_material_foreground = 'mix'
vim.g.gruvbox_material_background = 'medium'
-- vim.g.gruvbox_material_transparent_background = 1
vim.cmd('colorscheme gruvbox-material')


-- Everforest section
-- vim.g.everforest_diagnostic_virtual_text = "colored"
-- vim.everforest_diagnostic_text_highlight = 1
-- vim.g.everforest_background = 'hard'
-- vim.cmd('colorscheme everforest')

-- vim.cmd('colorscheme onedark')

-- vim.api.nvim_command('autocmd FileType markdown,text,tex,md colorscheme nord')
