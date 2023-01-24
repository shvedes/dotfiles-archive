-- https://github.com/shvedes/dotfiles

-- open & close nvim-tree by ctrl+n
vim.api.nvim_set_keymap('n', '<c-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- focus on nvim-tree
vim.api.nvim_set_keymap('n', '<c-f>', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
