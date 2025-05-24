return {
  {
    "tpope/vim-fugitive",
    config = function()
      -- Abrir interfaz Git status
      vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

      -- Hacer commit con mensaje rápido (abriendo la ventana de commit)
      vim.keymap.set("n", "<leader>gc", function()
        vim.cmd.Git("commit")
      end)

      -- Agregar todos los cambios al stage
      vim.keymap.set("n", "<leader>ga", function()
        vim.cmd.Git("add .")
      end)

      -- Hacer push
      vim.keymap.set("n", "<leader>gp", function()
        vim.cmd.Git("push")
      end)

      -- Hacer pull con rebase
      vim.keymap.set("n", "<leader>gP", function()
        vim.cmd.Git({"pull", "--rebase"})
      end)

      -- Resolver conflictos: traer versión local y remota (diffget)
      vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
      vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
    end,
  }
}

