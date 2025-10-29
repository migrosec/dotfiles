vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- escapes
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "fd", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "<C-g>", "<Esc>", { noremap = true, silent = true, desc = "Escape from Insert Mode" })
keymap.set("v", "<C-g>", "<Esc>", { noremap = true, silent = true, desc = "Escape from Visual Mode" })
keymap.set("t", "<C-g>", "<C-\\><C-n>", { noremap = true, silent = true, desc = "Escape from Terminal Mode" })

-- quitting neovim
keymap.set("n", "<leader>qq", ":q!<CR>", { desc = "Quit neovim" }) -- split window vertically

-- sensible defaults
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>wi", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>wu", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>wc", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", { desc = "Move left window" }) -- close current split window
keymap.set("n", "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>", { desc = "Move down window" }) -- close current split window
keymap.set("n", "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>", { desc = "Move up window" }) -- close current split window
keymap.set("n", "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>", { desc = "Move right window" }) -- close current split window

-- tabs management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- save operations
keymap.set("n", "<leader>fs", ":w<CR>", { noremap = true, silent = true, desc = "Save current file" })
keymap.set("n", "<leader>fS", ":wa<CR>", { noremap = true, silent = true, desc = "Save all files" })

-- dired
keymap.set("n", "<leader>d", "<CMD>Oil<CR>", { desc = "Open parent directory" }) -- opens parent dir over current active window

-- toggleterm
keymap.set("n", "<leader>/", ":ToggleTerm<CR>", { desc = "ToggleTerm" }) -- opens parent dir over current active window
