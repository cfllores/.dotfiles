vim.g.gruvbox_invert_selection = "0"
vim.g.gruvbox_contrast_dark = "hard"

vim.cmd("colorscheme gruvbox")
vim.cmd("highlight Normal guibg=none")

require("lualine").setup({
    theme = "gruvbox",
    tabline = {
        lualine_a = {'buffers'},
    },
})
