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
        keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add file to harpoon" })
        keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open harpoon menu" })

        keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Open harpoon 1" })
        keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Open harpoon 2" })
        keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Open harpoon 3" })
        keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Open harpoon 4" })
        keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Open harpoon 5" })


        keymap.set("n", "<leader>h1", function() harpoon:list():replace_at(1) end, { desc = "Set harpoon 1 to current buffer" })
        keymap.set("n", "<leader>h2", function() harpoon:list():replace_at(2) end, { desc = "Set harpoon 2 to current buffer" })
        keymap.set("n", "<leader>h3", function() harpoon:list():replace_at(3) end, { desc = "Set harpoon 3 to current buffer" })
        keymap.set("n", "<leader>h4", function() harpoon:list():replace_at(4) end, { desc = "Set harpoon 4 to current buffer" })
        keymap.set("n", "<leader>h5", function() harpoon:list():replace_at(5) end, { desc = "Set harpoon 5 to current buffer" })
    end,
}
