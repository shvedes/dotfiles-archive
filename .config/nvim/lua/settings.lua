-- https://github.com/shvedes/dotfiles

local opt = vim.opt 
local g = vim.g

----------------------------------------------------------------------------------------

-- solorschemes

-- vim.cmd.colorscheme "catppuccin-latte"
-- vim.cmd.colorscheme "catppuccin-frappe"
-- vim.cmd.colorscheme "catppuccin-macchiato"
-- vim.cmd.colorscheme "catppuccin-mocha"
-- vim.cmd.colorscheme "onedark"
-- vim.cmd.colorscheme "gruvbox"
vim.cmd.colorscheme "nord"

opt.relativenumber 		= true                      -- set relative number
opt.termguicolors       = true                      -- 24 bit color support
opt.smartindent         = true                      -- autoindent new lines
opt.autoindent 			= true                      -- autoindent filetypes
opt.ignorecase			= true                      -- ignore case when searching
opt.cursorline          = true                      -- highlight cursorline
opt.expandtab 			= true                      -- use spaces instead of tabs
opt.hlsearch 			= false                     -- disabe highlighting when searching
opt.swapfile			= false                     -- do not use swap file
opt.backup 				= false                     -- do not use backup
opt.number 				= true                      -- set number
opt.hidden 				= true                      -- hide unused buffers
opt.title 				= true                      -- show file title

opt.shiftwidth			= 4                         -- 
opt.scrolloff			= 10                        -- 
opt.tabstop				= 4                         -- 

opt.spelllang           = { 'en_us', 'ru' }         -- dictionaries
opt.clipboard           = 'unnamedplus'             -- clipboard support between applications
opt.encoding			= 'UTF-8'                   -- default encoding for new files
opt.syntax 				= 'on'                      -- enable syntax highlighting
opt.mouse 				= 'a'                       -- mouse support

----------------------------------------------------------------------------------------

-- plugins

-- opt.completeopt         = 'menu,menuone,noselect'   -- for cmp

-- disable netrw

g.loaded_netrw          = 1
g.loaded_netrwPlugin    = 1

opt.completeopt         = {'menu', 'menuone', 'noselect'}

vim.cmd [[autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]]  

----------------------------------------------------------------------------------------
