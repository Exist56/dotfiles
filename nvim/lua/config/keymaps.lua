-- lua/config/keymaps.lua

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- ========================================
-- General
-- ========================================

-- Save
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

-- Quit
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- Clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search" })

-- File Explorer
map("n", "<leader>e", "<cmd>Oil<CR>", {
    desc = "Open file explorer",
})


-- ========================================
-- Window navigation
-- ========================================

map("n", "<C-h>", "<C-w>h", { desc = "Move left" })
map("n", "<C-j>", "<C-w>j", { desc = "Move down" })
map("n", "<C-k>", "<C-w>k", { desc = "Move up" })
map("n", "<C-l>", "<C-w>l", { desc = "Move right" })


-- ========================================
-- Telescope
-- ========================================

local builtin = require("telescope.builtin")

map("n", "<leader>ff", builtin.find_files, {
    desc = "Find files",
})

map("n", "<leader>fg", builtin.live_grep, {
    desc = "Live grep",
})

map("n", "<leader>fb", builtin.buffers, {
    desc = "Find buffers",
})

map("n", "<leader>fh", builtin.help_tags, {
    desc = "Find help",
})


-- ========================================
-- LSP
-- ========================================

map("n", "gd", vim.lsp.buf.definition, {
    desc = "Go to definition",
})

map("n", "gr", vim.lsp.buf.references, {
    desc = "Find references",
})

map("n", "K", vim.lsp.buf.hover, {
    desc = "Hover documentation",
})

map("n", "<leader>rn", vim.lsp.buf.rename, {
    desc = "Rename symbol",
})

map("n", "<leader>ca", vim.lsp.buf.code_action, {
    desc = "Code action",
})

-- =======================================
-- Terminal 
-- =======================================
local Terminal = require("toggleterm.terminal").Terminal

vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>", {
    desc = "Toggle terminal",
})
