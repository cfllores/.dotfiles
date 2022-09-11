local dap = require("dap")
local dapui = require("dapui")

require("nvim-dap-virtual-text").setup()

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

vim.keymap.set("n", "<leader>b", ":lua require('dap').toggle_breakpoint()<CR>", { noremap = true})
vim.keymap.set("n", "<leader>B", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { noremap = true})
vim.keymap.set("n", "<leader><leader>", ":lua require('dap').close()<CR>", { noremap = true})
vim.keymap.set("n", "<leader>rc", ":lua require('dap').run_to_cursor()<CR>", { noremap = true})

vim.keymap.set("n", "<Up>", ":lua require('dap').continue()<CR>", { noremap = true})
vim.keymap.set("n", "<Down>", ":lua require('dap').step_over()<CR>", { noremap = true})
vim.keymap.set("n", "<Left>", ":lua require('dap').step_out()<CR>", { noremap = true})
vim.keymap.set("n", "<Right>", ":lua require('dap').step_into()<CR>", { noremap = true})
