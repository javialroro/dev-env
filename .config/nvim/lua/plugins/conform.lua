return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_ft = {
		rust = { "rustfmt" },
		go = { "gofmt" },
		python = { "black" },
		typescript = { "prettier" },
		javascript = { "prettier" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		}
        })
    end
}

