return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "study-notes",
        path = "~/vaults/StudyNotes",
      },
      {
        name = "cheet-sheets",
        path = "~/vaults/CheatSheets"
      },
      {
        name = "wisdom-base",
        path = "~/vaults/WisdomBase",
      }
    },
    -- see below for full list of options 👇
  },
}
