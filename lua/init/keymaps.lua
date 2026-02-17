local map = vim.keymap.set

vim.g.mapleader = " " -- <Space> leader key

-- Normal mode
--- General
map("n", "<leader>c", vim.cmd.noh, { desc = "Clear highlights" })
map("n", "<leader>d", '"_d', { desc = "Delete in black-hole register" })
map("n", "<leader>f", vim.lsp.buf.format, { desc = "Format buffer lsp" })
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }, { desc = "Make file executable" })
map("n", "<leader>Y", [["+yy]], { desc = "Yanks to EOL in system clipboard" })

--- Motions
map("n", "<leader>n", vim.cmd.Ex, { desc = "File navigation" })
map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

--- Plugins
map("n", "<leader>l", vim.cmd.Lazy, { desc = "Lazy" })
map("n", "<leader>m", vim.cmd.Mason, { desc = "Mason" })
map("n", "<leader>p", vim.cmd.VimBeGood, { desc = "VimeBeGood" })
map("n", "<leader>t", vim.cmd.TSUpdate, { desc = "Treesitter update" })
map("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Undotree" })
map("n", "<leader>w", vim.cmd.WhichKey, { desc = "WhichKey" })

-- Visual mode
--- General
map("x", "<leader>p", [["_dP]], { desc = "Paste without overwriting the register" })
map("v", "<leader>y", [["+y]], { desc = "Yanks in system clipboard" })
