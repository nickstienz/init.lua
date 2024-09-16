return {
    "tpope/vim-fugitive",
    event = "VeryLazy",
    config = function()
        local keymap = vim.keymap
        keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Open git with fugitive" })
    end,
}
