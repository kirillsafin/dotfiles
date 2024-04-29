local general_util = require("mijikhna.utils.general")

vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<CR>", "o<ESC>", { desc = "Add new line in normal mode" })

keymap.set("n", "<leader>nh", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- splits
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Vertical split" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Horizontal split" })
keymap.set("n", "<leader>sq", ":q<CR>", { desc = "Close window" })
keymap.set("n", "<leader>s=", "<C-w>=", { desc = "Close other windows" })

-- tabs
keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tN", ":tabnew %<CR>", { desc = "Open current buffer in new tab" })
keymap.set("n", "<leader>tq", ":tabclose<CR>", { desc = "Close tab" })
keymap.set("n", "<leader>tp", ":tabprev<CR>", { desc = "Previous tab" })
keymap.set("n", "<leader>tn", ":tabnext<CR>", { desc = "Next tab" })

-- keymap.set("n", "<C-s>", general_util.format_on_save, { desc = "Format on save" })
keymap.set("n", "<C-s>", ":w<CR>", { desc = "Format on save" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half page" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half page" })

keymap.set("n", "n", "nzzzv", { desc = "Move to next search result", noremap = true })
keymap.set("n", "N", "Nzzzv", { desc = "Move to previous search result", noremap = true })

keymap.set("x", "<leader>p", "_dP", { desc = "Paste without overwriting clipboard" })

keymap.set({ "n", "v" }, "<leader>y", "\"+y", { desc = "Copy to clipboard" })
keymap.set("n", "<leader>Y", "\"+Y", { desc = "Copy to clipboard" })

keymap.set({ "n", "v" }, "<leader>d", "\"_d", { desc = "Delete without overwriting clipboard", noremap = true })

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and replace" })
