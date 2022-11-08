local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
           require("luasnip").lsp_expand(args.body)
        end,
    },
    formatting = {
        format = lspkind.cmp_format({
            mode = "symbol",
            maxwidth = 50,
        }),
    },
    mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
    }, {
        { name = "buffer" },
    })
})

local function config(_config)
    return vim.tbl_deep_extend("force", {
        capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = function()
            vim.keymap.set("n", "<leader>gd", ":lua vim.lsp.buf.definition()<CR>", { noremap = true})
            vim.keymap.set("n", "<leader>gD", ":lua vim.lsp.buf.declaration()<CR>", { noremap = true})
            vim.keymap.set("n", "K", ":lua vim.lsp.buf.hover()<CR>", { noremap = true})
            vim.keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", { noremap = true})
            vim.keymap.set("n", "gr", ":lua vim.lsp.buf.references()<CR>", { noremap = true})
            vim.keymap.set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", { noremap = true})
            vim.keymap.set("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", { noremap = true})
            vim.keymap.set("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", { noremap = true})
            vim.keymap.set("n", "<C-k>", ":lua vim.lsp.buf.signature_help()<CR>", { noremap = true})
        end,
    }, _config or {})
end

local signs = { Error = "●", Warn = "●", Hint = "●", Info = "●" }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl })
end

vim.diagnostic.config({
    virtual_text = false
})

vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

require("lspconfig").ccls.setup(config())

require("lspconfig").cmake.setup(config())

require("lspconfig").tsserver.setup(config({
    single_file_support = true
}))

require("lspconfig").rust_analyzer.setup(config({
    cmd = { "rustup", "run", "nightly", "rust_analyzer" },
}))

require("lspconfig").sumneko_lua.setup(config({
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
}))

local opts = {
    highlight_hovered_item = true,
    show_guides = true,
}

require("symbols-outline").setup(opts)
