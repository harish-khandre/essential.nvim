vim.g.mapleader = " "

vim.keymap.set("n", "<leader>di", vim.diagnostic.open_float, { desc = "Diagnostic info" })
vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Diagnostic set loclist" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr><esc>", { desc = "Delete buffer " })
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "[W]ord" })
vim.keymap.set("n", "<leader>qo", "<cmd>copen<cr>", { desc = "[Q]uickfix window" })
vim.keymap.set("n", "<leader>qc", "<cmd>ccl<cr>", { desc = "[Q]uickfix close" })
vim.keymap.set("n", "<leader>qe", "<cmd>cw<cr>", { desc = "open if errors" })
vim.keymap.set("n", "<leader>qp", "<cmd>cp<cr>", { desc = "previous error" })
vim.keymap.set("n", "<leader>qf", "<cmd>cnf<cr>", { desc = "first error in the next file" })
vim.keymap.set("n", "<leader>qu", "<cmd>.cc<cr>", { desc = "error under cursor" })
vim.keymap.set("n", "<leader>e", "<cmd>Explore<cr>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "n", "Nzzzv")
vim.keymap.set("n", "ZZ", "<cmd>wqa<cr><esc>")
vim.keymap.set("n", "Q", "<cmd>q<cr><esc>")
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "go to prev. diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "go to next diagnostic" })
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>wa<cr><esc>", { desc = "Save file" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-a>", "GVgg")
vim.keymap.set("n", "<cr>", "o")
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true

vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.linebreak = true
vim.opt.wrapmargin = 2
vim.opt.smartindent = true

vim.opt.scrolloff = 8
vim.opt.updatetime = 50
vim.opt.cursorline = true
vim.opt.spelllang = { "en" }
vim.opt.spell = true

vim.opt.relativenumber = true
vim.opt.number = true

vim.g.netrw_banner = 0
