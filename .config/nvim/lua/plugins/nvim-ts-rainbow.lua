return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        {
            "p00f/nvim-ts-rainbow",
            config = function()
                require("nvim-treesitter.configs").setup {
                    highlight = { enable = true },
                    rainbow = {
                        enable = true,
                        extended_mode = true,
                        max_file_lines = nil,
                        colors = {
                            "#F38BA8", "#A6E3A1", "#89B4FA", "#F9E2AF", "#CBA6F7", "#94E2D5"
                        },
                    },
                }
            end,
        }
    },
}

