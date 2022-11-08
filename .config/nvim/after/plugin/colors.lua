vim.g.gruvbox_invert_selection = "0"
vim.g.gruvbox_contrast_dark = "hard"

vim.cmd("colorscheme gruvbox")
vim.cmd("highlight Normal guibg=none guifg=none")
vim.cmd("highlight CursorLineNr guibg=none")

vim.cmd("highlight SignColumn guibg=none")
vim.cmd("highlight GruvboxRedSign guibg=none")
vim.cmd("highlight GruvboxYellowSign guibg=none")
vim.cmd("highlight GruvboxBlueSign guibg=none")
vim.cmd("highlight GruvboxAquaSign guibg=none")

vim.cmd("highlight! link StatusLine Normal")

local custom_gruvbox = require("lualine.themes.gruvbox")

custom_gruvbox.normal.c.bg = nil
custom_gruvbox.insert.c.bg = nil
custom_gruvbox.command.c.bg = nil
custom_gruvbox.visual.c.bg = nil

local config = {
    options = {
        theme = custom_gruvbox,
        component_separators = '|',
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = {
            { 'mode', separator = { left = '' } },
        },
        lualine_x = {},
        lualine_z = {
            { 'location', separator = { right = '' } },
        },
    },
}

require('lualine').setup(config)
