local opt = vim.opt

-- clipboard
vim.api.nvim_set_option("clipboard", "unnamedplus")

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentaiton
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
opt.autoindent = true

--line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- clipboard
-- cursor line
opt.cursorline = true

-- apearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
opt.iskeyword:append("&")
