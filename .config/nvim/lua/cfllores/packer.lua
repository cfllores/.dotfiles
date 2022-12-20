-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    use "mbbill/undotree"
    use "sbdchd/neoformat"
    use ({'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}, after = "gruvbox" })
    use "windwp/nvim-autopairs"

    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use "nvim-lua/plenary.nvim"

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use "mfussenegger/nvim-dap"
    use "rcarriga/nvim-dap-ui"
    use "theHamsta/nvim-dap-virtual-text"

    -- Treesitter
    use ("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use "romgrk/nvim-treesitter-context"

    -- Colorschemes
    use "gruvbox-community/gruvbox"
end)
