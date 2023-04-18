vim.o.encoding = "utf-8"

-- Auto reread changed files
vim.o.autoread = true

vim.o.autoindent = true
vim.o.backspace="indent,eol,start"
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.number = true
vim.o.signcolumn = "yes"
vim.o.ignorecase = true
vim.o.smartcase = true

-- persistent undo
if vim.fn.has("persistent_undo") then
  vim.o.undofile = true;
  vim.o.undodir= os.getenv( "HOME" ) .. "/.cache/vim"
end

vim.opt.termguicolors = true
vim.cmd [[
  syntax enable
  colorscheme gruvbox
]]

vim.cmd [[
  set noswapfile
  set nobackup
]]


vim.o.background = "dark"
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

vim.api.nvim_create_autocmd('TextYankPost', {
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})


vim.api.nvim_create_autocmd({"BufWritePre"}, {
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

