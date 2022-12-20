vim.keymap.set("n", "<leader>u", ":UndotreeShow<CR>", { noremap = true})

vim.keymap.set("n", "J", ":m '>+1<CR>gv=gv", { noremap = true})
vim.keymap.set("n", "K", ":m '<-2<CR>gv=gv", { noremap = true})
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<leader>db", "<cmd>bd<CR>", { noremap = true})
vim.keymap.set("n", "<tab>", "<cmd>bn<CR>", { noremap = true})
vim.keymap.set("n", "<S-tab>", "<cmd>bp<CR>", { noremap = true})

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { noremap = true})
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { noremap = true})
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { noremap = true})
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { noremap = true})

vim.keymap.set("i", "<C-c>", "<Esc>")
