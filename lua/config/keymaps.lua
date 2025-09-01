-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- save
map("n", "<C-s>", ":w<CR>", opts)

-- quit
map("n", "<C-q>", ":q<CR>", opts)

-- copy, cut, paste (use system clipboard)
map({ "n", "v" }, "<C-c>", '"+y', opts)
map({ "n", "v" }, "<C-x>", '"+d', opts)
map({ "n", "v" }, "<C-v>", '"+p', opts)
map("i", "<C-v>", "<C-r>+", opts)

-- undo/redo
map("n", "<C-z>", "u", opts)
map("n", "<C-y>", "<C-r>", opts)

-- find
map("n", "<C-f>", ":Telescope live_grep<CR>", opts)

-- file explorer
map("n", "<C-b>", ":Neotree toggle<CR>", opts)

-- open file
map("n", "<C-p>", ":Telescope find_files<CR>", opts)

-- tab / buffer navigation
map("n", "<C-Tab>", ":bnext<CR>", opts)
map("n", "<C-S-Tab>", ":bprevious<CR>", opts)
map("n", "<C-w>", ":bd<CR>", opts) -- close buffer

-- split window
map("n", "<C-\\>", ":vsplit<CR>", opts)

-- comment toggle
map({ "n", "v" }, "<C-/>", function()
  require("Comment.api").toggle.linewise.current()
end, opts)

-- backspace yung word deletion
map("i", "<C-BS>", "<C-h>", opts)

-- cursor movement
map({ "n", "i" }, "<C-Left>", "<C-o>b", opts)
map({ "n", "i" }, "<C-Right>", "<C-o>w", opts)
map({ "n", "i" }, "<C-Up>", "<C-o>k", opts)
map({ "n", "i" }, "<C-Down>", "<C-o>j", opts)

-- selection
-- Horizontal word selection
map("n", "<C-S-Left>", "v<Left>", opts)
map("n", "<C-S-Right>", "v<Right>", opts)
map("v", "<C-S-Left>", "<Left>", opts)
map("v", "<C-S-Right>", "<Right>", opts)

-- Vertical line selection
map("n", "<C-S-Up>", "v<Up>", opts)
map("n", "<C-S-Down>", "v<Down>", opts)
map("v", "<C-S-Up>", "<Up>", opts)
map("v", "<C-S-Down>", "<Down>", opts)

-- start block selection with CTRL+SHIFT+ALT + any arrow
map("n", "<C-S-A-Left>", "<C-v>h", opts)
map("n", "<C-S-A-Right>", "<C-v>l", opts)
map("n", "<C-S-A-Up>", "<C-v>k", opts)
map("n", "<C-S-A-Down>", "<C-v>j", opts)

-- extend selection in block mode
map("x", "<C-S-A-Left>", "h", opts)
map("x", "<C-S-A-Right>", "l ", opts)
map("x", "<C-S-A-Up>", "k", opts)
map("x", "<C-S-A-Down>", "j", opts)
