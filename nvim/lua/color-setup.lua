require("catppuccin").setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = "latte",
    dark = "mocha",
  },
  transparent_background = true, -- disables setting the background color.
  show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
  term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = false, -- dims the background color of inactive window
    shade = "transparent",
    percentage = 0.15, -- percentage of the shade to apply to the inactive window

  },
  no_italic = false, -- Force no italic
  no_bold = false, -- Force no bold
  no_underline = false, -- Force no underline
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" }, -- Change the style of comments
    conditionals = { "italic" },
    loops = {"italic"},
    functions = {"italic"},
    keywords = {"bold"},
    strings = {},
    variables = {},
    numbers = {"italic"},
    booleans = {"italic"},
    properties = {},
    types = {},
    operators = {},
  },
  color_overrides = {},
  custom_highlights = function(colors)
    return {
      Comment = { fg = "#89AEB1"},
      LineNr = { fg = colors.overlay0 }
    }
  end,
  integrations = {
    cmp = true,
    gitsigns = false,
    nvimtree = false,
    treesitter = true,
    notify = false,
    mini = false,
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  },
  highlight_overrides = {
    all = function(colors)
      return {
        NvimTreeNormal = { bg = colors.none },
        CmpBorder = { fg = "#3e4145" },
      }
    end,
  }
})

-- require('nightfox').setup({
--   options = {
--     transparent = true,     -- disable setting background
--     terminal_colors = true,  -- set terminal colors (vim.g.terminal_color_*) used in `:terminal`
--     dim_inactive = false,    -- non focused panes set to alternative background
--     module_default = true,   -- default enable value for modules
--     colorblind = {
--       enable = false,        -- enable colorblind support
--       simulate_only = false, -- only show simulated colorblind colors and not diff shifted
--       severity = {
--         protan = 0,          -- severity [0,1] for protan (red)
--         deutan = 0,          -- severity [0,1] for deutan (green)
--         tritan = 1,          -- severity [0,1] for tritan (blue)
--       },
--     },
--     styles = {               -- style to be applied to different syntax groups
--       comments = "none",     -- value is any valid attr-list value `:help attr-list`
--       conditionals = "none",
--       constants = "none",
--       functions = "none",
--       keywords = "none",
--       numbers = "none",
--       operators = "none",
--       strings = "none",
--       types = "none",
--       variables = "none",
--     },
--     inverse = {             -- inverse highlight for different types
--       match_paren = false,
--       visual = false,
--       search = false,
--     },
--     modules = {},             -- list of various plugins and additional options
--   },
--   palettes = {},
--   specs = {},
--   groups = {},
-- })
