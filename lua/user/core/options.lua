vim.g.netrw_liststyle = 3

local options = {
	-- line numbers
	relativenumber = true, -- show relative line numbers
	number = true, -- shows absolute line number on cursor line (when relative number is on)

	-- tabs & indentation
	tabstop = 2, -- 2 spaces for tabs (prettier default)
	shiftwidth = 2, -- 2 spaces for indent width
	expandtab = true, -- expand tab to spaces
	smartindent = true, -- copy indent from current line when starting new one

	-- line wrapping
	wrap = false, -- disable line wrapping

	-- search settings
	ignorecase = true, -- ignore case when searching
	smartcase = true, -- if you include mixed case in your search, assumes you want case-sensitive

	-- cursor line
	cursorline = true, -- highlight the current cursor line

	-- appearance

	-- turn on termguicolors for nightfly colorscheme to work
	-- (have to use iterm2 or any other true color terminal)
	termguicolors = true,
	background = "dark", -- colorschemes that can be light or dark will be made dark
	signcolumn = "yes", -- show sign column so that text doesn't shift

	-- backspace
	backspace = "indent,eol,start", -- allow backspace on indent, end of line or insert mode start position

	-- split windows
	splitright = true, -- split vertical window to the right
	splitbelow = true, -- split horizontal window to the bottom

	-- turn off swapfile
	swapfile = false,

	backup = false, -- creates a backup file

	-- scroll
	scrolloff = 8,
	sidescrolloff = 8,

	-- cmdheight = 2,                           -- more space in the neovim command line for displaying messages
	-- completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	-- conceallevel = 0,                        -- so that `` is visible in markdown files
	-- fileencoding = "utf-8",                  -- the encoding written to a file
	-- hlsearch = true,                         -- highlight all matches on previous search pattern
	-- mouse = "a",                             -- allow the mouse to be used in neovim
	-- pumheight = 10,                          -- pop up menu height
	showmode = false, -- we don't need to see things like -- INSERT -- anymore
	-- showtabline = 2,                         -- always show tabs
	-- timeoutlen = 1000,                        -- time to wait for a mapped sequence to complete (in milliseconds)
	undofile = true, -- enable persistent undo
	-- updatetime = 300,                        -- faster completion (4000ms default)
	-- writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	-- cursorline = true,                       -- highlight the current line
	-- number = true,                           -- set numbered lines
	-- relativenumber = false,                  -- set relative numbered lines
	-- numberwidth = 4,                         -- set number column width to 2 {default 4}
	-- guifont = "monospace:h17",               -- the font used in graphical neovim applications
}

vim.opt.shortmess:append("c")
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

for k, v in pairs(options) do
	vim.opt[k] = v
end
