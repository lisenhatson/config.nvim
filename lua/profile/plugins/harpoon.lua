  return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()

            vim.keymap.set("n", "<leader>A", function() harpoon:list():prepend() end)
            vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
            vim.keymap.set("n", "<M-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n", "<M-h>", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "<M-t>", function() harpoon:list():select(2) end)
            vim.keymap.set("n", "<M-n>", function() harpoon:list():select(3) end)
            vim.keymap.set("n", "<M-s>", function() harpoon:list():select(4) end)
            vim.keymap.set("n", "<leader><M-h>", function() harpoon:list():replace_at(1) end)
            vim.keymap.set("n", "<leader><M-t>", function() harpoon:list():replace_at(2) end)
            vim.keymap.set("n", "<leader><M-n>", function() harpoon:list():replace_at(3) end)
            vim.keymap.set("n", "<leader><M-s>", function() harpoon:list():replace_at(4) end)
        end
    }
