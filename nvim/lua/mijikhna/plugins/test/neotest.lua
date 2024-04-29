return {
  "nvim-neotest/neotest",
  event = "VeryLazy",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    -- test runners
    "nvim-neotest/neotest-python",
    "nvim-neotest/neotest-jest",
    "marilari88/neotest-vitest",
    "rcasia/neotest-java",
    "alfaix/neotest-gtest",
    "rcasia/neotest-bash",
  },
  config = function()
    local neotest = require("neotest")

    neotest.setup({
      adapters = {
        require("neotest-python")({
          dap = { justMyCode = false },
        }),
        -- require('neotest-jest')({
        --   jestCommand = require('neotest-jest.jest-util').getJestCommand(vim.fn.expand '%:p:h') .. ' --watch',
        -- }),
        require("neotest-vitest"),
        -- require("neotest-java")({
        --   ignore_wrapper = false,                       -- whether to ignore maven/gradle wrapper
        --   junit_jar = "path/to/junit-standalone.jar",   -- default: .local/share/nvim/neotest-java/junit-platform-console-standalone-[version].jar
        -- }),
          require("neotest-gtest"),
          require("neotest-bash")
      },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>tr", neotest.run.run, { desc = "Run nearest test" })
    keymap.set("n", "<leader>tf", function() neotest.run.run(vim.fn.expand("%")) end, { desc = "Run file tests" })
    keymap.set("n", "<leader>td", function() neotest.run.run({ strategy = "dap" }) end, { desc = "Debug nearest test" })
    keymap.set("n", "<leader>ts", neotest.run.stop, { desc = "Stop test" })
  end
}
