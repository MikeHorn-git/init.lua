local ok, mlsp = pcall(require, "mason-lspconfig")
if ok then
  mlsp.setup {
    ensure_installed = {
      "asm_lsp",
      "clangd",
      "gopls",
      "pylsp",
      "ruff",
      "rust_analyzer",
    },
    automatic_installation = true,
  }
end
