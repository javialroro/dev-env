
-- Making exec
print("hello nvim")
vim.keymap.set('n', '<C-e>', ':!chmod +x %<CR>', { noremap = true, silent = false })

