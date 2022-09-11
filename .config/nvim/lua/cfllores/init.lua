require("cfllores.set")
require("cfllores.packer")
require("cfllores.debugger")

local augroup = vim.api.nvim_create_augroup
CflloresGroup = augroup("cflloresGroup", {})

local autocmd = vim.api.nvim_create_autocmd

autocmd({"BufWritePre"}, {
    group = CflloresGroup,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})
