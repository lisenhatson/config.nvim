return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
[[Neovim]],
-- [[    .                  .-.    .  _   *     _   .]],
-- [[           *          /   \     ((       _/ \       *    .]],
-- [[         _    .   .--'\/\_ \     `      /    \  *    ___]],
-- [[     *  / \_    _/ ^      \/\'__        /\/\  /\  __/   \ *]],
-- [[       /    \  /    .'   _/  /  \  *' /    \/  \/ .`'\_/\   .]],
-- [[  .   /\/\  /\/ :' __  ^/  ^/    `--./.'  ^  `-.\ _    _:\ _]],
-- [[     /    \/  \  _/  \-' __/.' ^ _   \_   .'\   _/ \ .  __/ \]],
-- [[   /\  .-   `. \/     \ / -.   _/ \ -. `_/   \ /    `._/  ^  \]],
-- [[  /  `-.__ ^   / .-'.--'    . /    `--./ .-'  `-.  `-. `.  -  `.]],
-- [[@/        `.  / /      `-.   /  .-'   / .   .'   \    \  \  .-  \%]],
-- [[@&8jgs@@%% @)&@&(88&@.-_=_-=_-=_-=_-=_.8@% &@&&8(8%@%8)(8@%8 8%@)%]],
-- [[@88:::&(&8&&8:::::%&`.~-_~~-~~_~-~_~-~~=.'@(&%::::%@8&8)::&#@8::::]],
-- [[`::::::8%@@%:::::@%&8:`.=~~-.~~-.~~=..~'8::::::::&@8:::::&8:::::']],
}

        dashboard.section.buttons.val = {
            dashboard.button("e", "n[e]w file", ":ene | startinsert<CR>"),
            dashboard.button("n", "[n]etrw", ":Ex .<CR>"),
            dashboard.button("f", "[f]ind", ":Telescope find_files<CR>"),
            dashboard.button("r", "[r]ecent", ":Telescope oldfiles<CR>"),
            dashboard.button("u", "[u]pdate", ":checkhealth | Lazy update | MasonUpdate<CR>"),
        }

        dashboard.section.footer.val = {
[[★]],
}

        alpha.setup(dashboard.opts)
    end,
}
