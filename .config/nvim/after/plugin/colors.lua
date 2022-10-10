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

require('lualine').setup{
    options = {
        theme = 'gruvbox',
    }
}
