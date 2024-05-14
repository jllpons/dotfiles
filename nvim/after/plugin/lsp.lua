local lsp_zero = require('lsp-zero')

lsp_zero.preset("recommended")


lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.set_preferences({
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
  }
})

lsp_zero.setup()

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "pyright",
        "ruff_lsp",
        "rust_analyzer",
        "r_language_server",
        "bashls",
        "lua_ls",
        "marksman"
    },
    handlers = {
        lsp_zero.defalut_setup,
        pyright = function()
            require('lspconfig').pyright.setup({})
        end,
        ruff_lsp = function()
            require('lspconfig').ruff_lsp.setup({})
        end,
        rust_analyzer = function()
            require('lspconfig').rust_analyzer.setup({})
        end,
        bashls = function()
            require('lspconfig').bashls.setup({})
        end,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
        marksman = function()
            require('lspconfig').marksman.setup({})
        end,
    },
}


local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()

cmp.setup({
  -- if you don't know what is a "source" in nvim-cmp read this:
  -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/autocomplete.md#adding-a-source
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'luasnip', keyword_length = 2},
    {name = 'buffer', keyword_length = 3},
    }
})


