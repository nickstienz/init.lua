vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<C-s>", ":w<CR>", { desc = "Saves current buffer" })

keymap.set("n", "<leader>nr", vim.cmd.Ex, { desc = "Opens netrw" })

keymap.set("n", "<leader>ch", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>cr", ":! cargo run<CR>", {desc = "Run \"cargo run\" through nvim" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
