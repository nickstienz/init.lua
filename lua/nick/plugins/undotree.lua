return {
    "mbbill/undotree",
    event = "VeryLazy",
    config = function()
        local keymap = vim.keymap
        keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle Undotree" })
    end,
}
