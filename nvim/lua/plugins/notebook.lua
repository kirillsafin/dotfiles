return {
  -- see https://maxwellrules.com/misc/nvim_jupyter.html
  {
    -- proper presentation of notebook
    {
      "GCBallesteros/jupytext.nvim",
      config = true,
    },
    -- execute cells
    {
      "Vigemus/iron.nvim",
      config = function()
        local iron = require("iron.core")
        iron.setup({
          config = {
            -- Whether a repl should be discarded or not
            scratch_repl = true,
            should_map_plug = false,
            -- Your repl definitions come here
            repl_definition = {
              python = {
                command = { "ipython" },
                format = require("iron.fts.common").bracketed_paste,
              },
            },
            -- How the repl window will be displayed
            -- See below for more information
            repl_open_cmd = require('iron.view').split.vertical.botright(50)
          },
          -- Iron doesn't set keymaps by default anymore.
          -- You can set them here or manually add keymaps to the functions in iron.core
          keymaps = {
            send_motion = "<space>sc",
            visual_send = "<space>sc",
            send_file = "<space>sf",
            send_line = "<space>sl",
            send_paragraph = "<space>sp",
            send_until_cursor = "<space>su",
            send_mark = "<space>sm",
            mark_motion = "<space>mc",
            mark_visual = "<space>mc",
            remove_mark = "<space>md",
            cr = "<space>s<cr>",
            interrupt = "<space>s<space>",
            exit = "<space>sq",
            clear = "<space>cl",
          },
          -- If the highlight is on, you can change how it looks
          -- For the available options, check nvim_set_hl
          highlight = {
            italic = true
          },
          ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
        })
      end,
    },
    -- alternative for iron.nvim
    -- {
    --   "dccsillag/magma-nvim",
    --   build = ":UpdateRemotePlugins",
    --   init = function()
    --     local python_utils = require("utils.python")
    --
    --     vim.g.python3_host_prog = python_utils.get_venv_python_exec()
    --   end
    -- },
    -- actually just for more similar notebook navigation
    {
      "GCBallesteros/vim-textobj-hydrogen",
      dependencies = {
        "kana/vim-textobj-user",
      }
    }
  },
  -- {
  --   "luk400/vim-jukit"
  -- },
}
