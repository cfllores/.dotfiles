vim.g.gruvbox_invert_selection = "0"
vim.g.gruvbox_contrast_dark = "hard"

vim.cmd("colorscheme gruvbox")
vim.cmd("highlight Normal guibg=none")
vim.cmd("highlight CursorLineNr guibg=none")

vim.cmd("highlight SignColumn guibg=none")
vim.cmd("highlight GruvboxRedSign guibg=none")
vim.cmd("highlight GruvboxYellowSign guibg=none")
vim.cmd("highlight GruvboxBlueSign guibg=none")
vim.cmd("highlight GruvboxAquaSign guibg=none")

vim.cmd("highlight! link StatusLine Normal")
vim.cmd("highlight! link StatusLineNC Normal")

local colors = {
    darkgray = "#16161d",
    gray = "#727169",
    innerbg = nil,
    outerbg = "#16161D",
    normal = "#458487",
    insert = "#98961A",
    visual = "#B06185",
    replace = "#d69821",
    command = "#cb231d",
}

local config = {
    options = {
        theme = {
            inactive = {
                a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
            visual = {
                a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
            replace = {
                a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
            normal = {
                a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
            insert = {
                a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
            command = {
                a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
        },
        component_separators = '|',
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = {
            { 'mode', separator = { left = ' ' } },
        },
        lualine_z = {
            { 'location', separator = { right = ' ' } },
        },
    },
}

require('lualine').setup(config)
