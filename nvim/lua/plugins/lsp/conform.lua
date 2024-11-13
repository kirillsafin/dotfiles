return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 700,
      })
    end, { desc = "Format file or range (in visual mode)" })

    vim.keymap.set("n", "<C-s>", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 700,
      })
      vim.cmd("write")
    end, { desc = "Format file" })
  end,
}
