return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        vue = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        -- markdown = { "prettier" },
        python = { "isort", "black" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        lua = { "stylua" },
      },
      -- format_on_save = {
      --   lsp_fallback = true,
      --   async = false,
      --   timeout_ms = 1000,
      -- },
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 700
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
