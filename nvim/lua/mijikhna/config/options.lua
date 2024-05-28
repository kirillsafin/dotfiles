local opt = vim.opt

opt.hidden = true

opt.shell = "/usr/bin/zsh"
opt.compatible = false

opt.swapfile = false
opt.updatetime = 5000

opt.backup = false

opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
opt.undofile = true

opt.relativenumber = true
opt.number = true -- shows number before each line
opt.numberwidth = 3

-- tab & indent
opt.tabstop = 2
opt.shiftwidth = 2
-- opt.softtabstop = 2
opt.expandtab = true
-- opt.autoindent = true
opt.smartindent = true

opt.wrap = true
opt.linebreak = false
-- search
-- opt.ignorecase = true
-- opt.smartcase = true

opt.cursorline = true
opt.scrolloff = 10
opt.colorcolumn = "80"

opt.history = 250

opt.showcmd = true
opt.wildignore = { "*.docx", "*.jpg", "*.png", "*.gif", "*.pdf", "*.pyc", "*.exe", "*.flv", "*.img", "*.xlsx" }

-- colors
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "auto"

opt.backspace = "indent,eol,start"


-- split
opt.splitright = true
opt.splitbelow = true

-- spell check
opt.encoding = "utf-8"
opt.spell = true
opt.spelllang = { "en_us", "de_de" }
opt.syntax = "off"

opt.scrollbind = false
opt.cursorbind = false

opt.foldlevel = 99

opt.filetype = "on"
opt.clipboard = "unnamedplus" -- for Windows WSL

-- vim.cmd("filetype plugin on")
-- vim.cmd("filetype indent on")
