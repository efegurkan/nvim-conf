vim.g.mapleader = ","

-- Better split switching
vim.api.nvim_set_keymap("n", '<C-J>', '<C-W>j', {})
vim.api.nvim_set_keymap("n", '<C-K>', '<C-W>k', {})
vim.api.nvim_set_keymap("n", '<C-H>', '<C-W>h', {})
vim.api.nvim_set_keymap("n", '<C-L>', '<C-W>l', {})


-- clipboard
vim.keymap.set("x", "<leader>P", [["_dP]])
vim.keymap.set("n", "<leader>p", [["*p]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader> ", ":nohlsearch<CR>")

vim.keymap.set("n", "<leader>gu", ":UndotreeToggle<CR>")

vim.keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>F", ":NvimTreeFindFile<CR>")

