return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({
            settings = {
                save_on_toggle = true,
            }
        })

        local keymap = vim.keymap

        function map(number)
            keymap.set("n", ("<leader>"..number), function() harpoon:list():select(number) end, { desc = ("Navigate to harpoon "..number) })
            keymap.set("n", ("<leader>h"..number), function() harpoon:list():replace_at(number) end, { desc = ("Set harpoon "..number.." to current buffer") })
        end

        keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Add file to harpoon" })
        keymap.set("n", "<leader>he", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open harpoon menu" })

        for x = 1, 5 do
            map(x)
        end
    end,
}
