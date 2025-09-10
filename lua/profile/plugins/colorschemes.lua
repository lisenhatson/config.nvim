-- This is Primeagen's ColorMyPencils + TJ's colorschemes
--
function SetColor(color)
	color = color or "dark_flat"
	vim.cmd.colorscheme(color)

    -- Transparency
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- The main background in normal text
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" }) -- On non-currently selected windows
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" }) -- On the line number
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" }) -- Left side of the line number
    vim.api.nvim_set_hl(0, "ModeMsg", { bg = "none" }) -- the --INSERT-- etc
    vim.api.nvim_set_hl(0, "MsgArea", { bg = "none" }) -- commandline area ":"
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" }) -- end of bufer (~~~~)
    vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#a8c0d0" })

    local com_fg = "#a8d8a4"
    vim.api.nvim_set_hl(0, "Comment", { fg = com_fg, italic = true, bg = "none" })
    vim.api.nvim_set_hl(0, "@comment", { fg = com_fg, italic = true, bg = "none" })
end

return {
    "rebelot/kanagawa.nvim",
    "folke/tokyonight.nvim",
    "sekke276/dark_flat.nvim",
    "cpea2506/one_monokai.nvim",
    "embark-theme/vim",
    "Shatur/neovim-ayu",
    "ellisonleao/gruvbox.nvim",
    "sainnhe/sonokai",
    "Everblush/nvim",
    "https://gitlab.com/bartekjaszczak/finale-nvim",
    { "rose-pine/neovim", name = "rose-pine" },
    { "catppuccin/nvim", name = "catppuccin" },
    {
        "judaew/ronny.nvim",
        config = function()
        require("ronny").setup({
        display = {
        monokai_original  = false,
            }
        })
        end
    },
    {
    "maxmx03/fluoromachine.nvim",
    -- config = function()
    --   local fm = require "fluoromachine"
    --   fm.setup { glow = true, theme = "fluoromachine" }
    -- end,
    },

}
