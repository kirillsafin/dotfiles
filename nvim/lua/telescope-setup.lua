local telescope = require("telescope")
local lga_actions = require("telescope-live-grep-args.actions")

telescope.setup{
  defaults = {
    file_ignore_patterns = { "node_modules/", "venv/", 'plugged/', 'undodir/', '.git/', 'dist/', 'build/', '/bin', 'target/', 'lib/', 'vcpkg_installed/'},
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key",
      }
    }
  },
  extensions = {
    live_grep_args = {
      auto_quoting = false,
      mappings = { -- extend mappings
        i = {
          ["<C-k>"] = lga_actions.quote_prompt(),
          ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
        }
      }
    }
  }
}

telescope.load_extension('live_grep_args')
require("telescope").load_extension("notify")
