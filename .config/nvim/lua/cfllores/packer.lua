-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    use "mbbill/undotree"
    use "sbdchd/neoformat"
    use ({'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}, after = "gruvbox" })
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use "nvim-lua/plenary.nvim"

    -- LSP
    use "neovim/nvim-lspconfig"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/nvim-cmp"
    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"
    use "onsails/lspkind-nvim"
    use "glepnir/lspsaga.nvim"
    use "simrat39/symbols-outline.nvim"

    use "mfussenegger/nvim-dap"
    use "rcarriga/nvim-dap-ui"
    use "theHamsta/nvim-dap-virtual-text"

    -- Treesitter
    use ("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use "romgrk/nvim-treesitter-context"

    -- Colorschemes
    use "gruvbox-community/gruvbox"
end)
