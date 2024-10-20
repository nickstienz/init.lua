return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true,
            },

            indent = {
                enable = true,
            },

            autotag = {
                enable = true,
            },

            ensure_installed = {
                "asm",
                "bash",
                "c",
                "cmake",
                "css",
                "cpp",
                "dockerfile",
                "html",
                "java",
                "javascript",
                "json",
                "latex",
                "llvm",
                "lua",
                "make",
                "markdown",
                "markdown_inline",
                "regex",
                "rust",
                "toml",
                "yaml",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end,
}
