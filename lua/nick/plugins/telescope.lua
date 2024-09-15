return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local telescope = require('telescope')
        local actions = require('telescope.actions')

        telescope.setup({
            defaults = {
                path_display = { 'smart' },
                mappings = {
                    i = {
                        ['<C-k>'] = actions.move_selection_previous,
                        ['<C-j>'] = actions.move_selection_next,
                        ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
        })

        telescope.load_extension('fzf')

        local builtin = require('telescope.builtin')
        local keymap = vim.keymap
        keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = 'Fuzzy find files in CWD' })
        keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>', { desc = 'Fuzzy find recent files' })
        keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<CR>', { desc = 'Fuzzy find string in CWD' })
        keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<CR>', { desc = 'Fuzzy find string under cursor in CWD' })
        keymap.set('n', '<C-p>', builtin.git_files, {})
    end,
}
