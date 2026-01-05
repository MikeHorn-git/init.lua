local autocmd = vim.api.nvim_create_autocmd

-- Trailing white space
autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
