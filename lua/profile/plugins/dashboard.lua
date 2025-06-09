return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = { " Neovim " }

        dashboard.section.buttons.val = {
            dashboard.button("e", "New file", ":ene | startinsert<CR>"),
            dashboard.button("n", "Netrw", ":Ex .<CR>"),
            dashboard.button("f", "Find file", ":Telescope find_files<CR>"),
            dashboard.button("r", "Recent", ":Telescope oldfiles<CR>"),
            dashboard.button("u", "Update", ":checkhealth | Lazy update | MasonUpdate<CR>"),
            dashboard.button("q", "Quit", ":qa<CR>"),
        }

        dashboard.section.footer.val = { "" }

        alpha.setup(dashboard.opts)
    end,
}
