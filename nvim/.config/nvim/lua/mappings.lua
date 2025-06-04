require "nvchad.mappings"

local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save File" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "Copy Entire File" })

map("n", "<leader>ga", vim.lsp.buf.code_action, { desc = "[G]oto Code [A]ction" })
map("n", "<leader>gO", "<Cmd>Telescope lsp_document_symbols<CR>", { desc = "Open Document Symbols" })
map("n", "<leader>gW", "<Cmd>Telescope lsp_dynamic_workspace_symbols<CR>", { desc = "Open Workspace Symbols" })
map("n", "<leader>grt", "<Cmd>Telescope lsp_type_definitions<CR>", { desc = "[G]oto [T]ype Definition" })
