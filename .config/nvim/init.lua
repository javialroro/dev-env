
-- Making exec
vim.keymap.set('n', '<C-e>', ':!chmod +x %<CR>', { noremap = true, silent = false })

require("config.lazy")
require("config.remap")
