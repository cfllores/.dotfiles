local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.ensure_installed({
    'sumneko_lua',
    'rust_analyzer',
})

local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
    ["<C-d>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
})

lsp.setup_nvim_cmp({
    mappings = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = ' E',
        warn = ' W',
        hint = ' H',
        info = ' I'
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "<leader>gd", ":lua vim.lsp.buf.definition()<CR>", opts)
    vim.keymap.set("n", "<leader>gD", ":lua vim.lsp.buf.declaration()<CR>", opts)
    vim.keymap.set("n", "K", ":lua vim.lsp.buf.hover()<CR>", opts)
    vim.keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
    vim.keymap.set("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
    vim.keymap.set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", opts)
    vim.keymap.set("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", opts)
    vim.keymap.set("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", opts)
    vim.keymap.set("n", "<C-k>", ":lua vim.lsp.buf.signature_help()<CR>", opts)
end)

lsp.setup()
local cmp_autopairs = require('nvim-autopairs.completion.cmp')

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

-- Autopairs
local npairs = require("nvim-autopairs")
local Rule = require('nvim-autopairs.rule')

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
    }
})

local ts_conds = require('nvim-autopairs.ts-conds')

-- press % => %% only while inside a comment or string
npairs.add_rules({
  Rule("%", "%", "lua")
    :with_pair(ts_conds.is_ts_node({'string','comment'})),
  Rule("$", "$", "lua")
    :with_pair(ts_conds.is_not_ts_node({'function'}))
})
