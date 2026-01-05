vim.diagnostic.config {
  signs = {
    active = true,
    values = {
      { name = "DiagnosticSignError", text = "E" },
      { name = "DiagnosticSignWarn", text = "W" },
      { name = "DiagnosticSignHint", text = "H" },
      { name = "DiagnosticSignInfo", text = "I" },
    },
  },
  virtual_text = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
}
