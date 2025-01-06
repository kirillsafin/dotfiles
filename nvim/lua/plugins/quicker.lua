return {
  "stevearc/quicker.nvim",
  enabled = true,
  opts = {
    keys = {
      {
        ">",
        function()
          require("quicker").expand({ before = 3, after = 5, add_to_existing = true })
        end,
        desc = "Expand quickfix context",
      },
      {
        "<",
        function()
          require("quicker").collapse()
        end,
        desc = "Collapse quickfix context",
      },
    },
  },
  keys = {
    {
      "<leader>qn",
      "<cmd>cnext<CR>",
      mode = "n",
      desc = "Next Quickfix Entry",
    },
    {
      "<leader>qp",
      "<cmd>cprevious<CR>",
      mode = "n",
      desc = "Previous Quickfix Entry",
    },
    {
      "<leader>qc",
      "<cmd>cclose<CR>",
      mode = "n",
      desc = "Close Quickfix",
    },
  },
  init = function()
    local keymap = vim.keymap
    local quicker = require("quicker")

    keymap.set("n", "<leader>qb", function()
      quicker.toggle()
    end, { desc = "Toggle(Basic) Quickfix" })

    keymap.set("n", "<leader>ql", function()
      quicker.toggle({ loclist = true })
    end, { desc = "Toggle(Loclist) Quickfix" })

    keymap.set("n", "<leader>qr", function()
      quicker.refresh()
    end, { desc = "Refresh Quickfix" })
  end,
}
