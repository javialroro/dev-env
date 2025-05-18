
-- Making exec
print("hello nvim")
vim.keymap.set('n', '<C-e>', ':!chmod +x %<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG"+y', { noremap = true, silent = true })

