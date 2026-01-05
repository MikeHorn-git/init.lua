local opt = vim.opt
local o = vim.o
local g = vim.g

o.laststatus = 3
o.showmode = false
o.splitkeep = "screen"

o.clipboard = ""
o.mouse = "a"

-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

-- Numbers
o.number = true
o.relativenumber = true
o.numberwidth = 2
o.ruler = false

-- Disable some default providers
g.markdown_recommended_style = 0
g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
opt.linebreak = true -- Wrap lines
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in popup
opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.shortmess:append "sI" -- Disable nvim intro message
opt.whichwrap:append "<>[]hl" -- Allow wrapping across lines with arrow keys and h/l
