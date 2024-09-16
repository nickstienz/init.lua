return {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        local keymap = vim.keymap
        keymap.set("n", "<leader>a", mark.add_file, { desc = "Added file to harpoon" })
        keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Open harpoon menu" })
        
        keymap.set("n", "<leader>h", function() ui.nav_file(1) end, { desc = "Navigate to file 1" })
        keymap.set("n", "<leader>j", function() ui.nav_file(2) end, { desc = "Navigate to file 2" })
        keymap.set("n", "<leader>k", function() ui.nav_file(3) end, { desc = "Navigate to file 3" })
        keymap.set("n", "<leader>l", function() ui.nav_file(4) end, { desc = "Navigate to file 4" })
    end,
}
