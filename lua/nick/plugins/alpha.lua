local art_nvim = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

local art_sleepyhead = {
	"                                     ",
	"                                     ",
	"                                     ",
	"          [ Neovim ]                 ",
	"                                     ",
	"                                     ",
	"                                     ",
	"      |\\      _,,,---,,_            ",
	"ZZZzz /,`.-'`'    -.  ;-;;,_         ",
	"     |,4-  ) )-,_. ,\\ (  `'-'       ",
	"    '---''(_/--'  `-'\\_)            "
}

return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = art_sleepyhead

        dashboard.section.buttons.val = {
            dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("SPC pv", "  > Open Netrw For Current Directory", vim.cmd.Ex),
            dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
        }

        alpha.setup(dashboard.opts)

        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
