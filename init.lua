require("config.lazy")

-- keymap
vim.api.nvim_set_keymap('n', '<C-d>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])

-- Enable line numbers
vim.wo.number = true         -- Show line numbers
vim.wo.numberwidth = 4

-- Use spaces instead of tabs
vim.o.expandtab = true      -- Use spaces instead of tabs
vim.o.shiftwidth = 4         -- Number of spaces for (auto)indent
vim.o.tabstop = 4            -- Number of spaces that a <Tab> counts for
