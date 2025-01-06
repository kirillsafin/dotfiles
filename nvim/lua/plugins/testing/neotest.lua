return {
  "nvim-neotest/neotest",
  -- event = "VeryLazy",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
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
          python = "venv/bin/python",
          runner = "pytest",
          pytest_discover_instances = true,
        }),
        require('neotest-jest')({
          jestCommand = "npm test --",
          jestConfigFile = "custom.jest.config.ts",
          cwd = function(path)
            return vim.fn.getcwd()
          end,
        }),
        require("neotest-vitest"),
        require("neotest-java")({
          ignore_wrapper = false,                     -- whether to ignore maven/gradle wrapper
          junit_jar = "path/to/junit-standalone.jar", -- default: .local/share/nvim/neotest-java/junit-platform-console-standalone-[version].jar
        }),
        require("neotest-gtest"),
        require("neotest-bash")
      },
      discovery = {
        concurrent = 0,
        enabled = true,
      },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>trt", neotest.run.run, { desc = "Run nearest test" })
    keymap.set("n", "<leader>trf", function() neotest.run.run(vim.fn.expand("%")) end, { desc = "Run file tests" })
    keymap.set("n", "<leader>tdt", function() neotest.run.run({ strategy = "dap" }) end, { desc = "Debug nearest test" })
    keymap.set("n", "<leader>tc", neotest.run.stop, { desc = "Stop test" })

    keymap.set("n", "<leader>tm", neotest.summary.toggle, { desc = "Toggle test summary" })
    keymap.set("n", "<leader>too", function() neotest.output.open({ enter = true }) end, { desc = "Open Output" })
    keymap.set("n", "<leader>toc", function() neotest.watch.toggle(vim.fn.expand("%")) end, { desc = "Close Output" })
  end
}
