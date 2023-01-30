vim.opt.background = "dark"
vim.g.gruvbox_contrast_dark = "hard"

 require("catppuccin").setup {
            flavour = "mocha", -- mocha, macchiato, frappe, latte
        }

require("rose-pine").setup({
    dark_variant = "moon", -- "main"
})

-- vim.cmd("colorscheme gruvbox")
vim.cmd("colorscheme catppuccin")
