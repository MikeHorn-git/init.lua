local ok, mlsp = pcall(require, "mason-lspconfig")
if ok then
  mlsp.setup {
    ensure_installed = {
      "clangd",
      "pylsp",
      "ruff",
      "rust_analyzer",
    },
    automatic_installation = true,
  }
end
