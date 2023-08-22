--base setup

-- encoding
vim.scriptencoding = 'utf-8'
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

-- better ui
vim.o.title = true
vim.o.laststatus =  true
vim.o.wrap = false

--shell
vim.o.shellcmdflag = "-c"
vim.o.cmdheight = 1
vim.o.shell = "bash"

-- Set highlight on search
vim.o.hlsearch = false

-- Make relative line numbers default 
vim.wo.number = true
vim.wo.relativenumber = true

-- Disable mouse mode
vim.cmd [[set mouse=]]

-- indenting
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.breakindent= true

-- Save undo history
vim.o.undofile = true

--Case insensative searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- set Colorscheme
ColorMyPencils('habamax')
vim.o.termguicolors = true
function ColorMyPencils(size)
	color = color or 'onedark'
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = none})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = none})
	end

ColorMyPencils('habamax')

--set completeopt to have a better completion experience 
vim.o.completeopt = 'menuone,noselect'

-- [[HighLight on yank]]

--See `:help vim.hightlight.onyank()`
--keymaps

local keymap = vim.keymap

-- escape insert mode with `jk`
keymap.set("i", "jk", "<esc>")
