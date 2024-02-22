require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
    ensure_installed = {
        "bash",
        "bibtex",
        "html",
        "http",
        "json",
        "latex",
        "lua",
        "markdown",
        "markdown_inline",
        "perl",
        "python",
        "r",
        "regex",
        "yaml",
        "rust",
        "rust",
        "toml",
    },

  -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
