-- require("catppuccin").setup({
--   flavour = "mocha", -- latte, frappe, macchiato, mocha
--   background = { -- :h background
--     light = "latte",
--     dark = "mocha",
--   },
--   transparent_background = true, -- disables setting the background color.
--   show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--   term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--   dim_inactive = {
--     enabled = false, -- dims the background color of inactive window
--     shade = "transparent",
--     percentage = 0.15, -- percentage of the shade to apply to the inactive window

--   },
--   no_italic = false, -- Force no italic
--   no_bold = false, -- Force no bold
--   no_underline = false, -- Force no underline
--   styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--     comments = { "italic" }, -- Change the style of comments
--     conditionals = { "italic" },
--     loops = {"italic"},
--     functions = {"italic"},
--     keywords = {"bold"},
--     strings = {},
--     variables = {},
--     numbers = {"italic"},
--     booleans = {"italic"},
--     properties = {},
--     types = {},
--     operators = {},
--   },
--   color_overrides = {},
--   custom_highlights = function(colors)
--     return {
--       Comment = { fg = "#89AEB1"},
--       LineNr = { fg = colors.overlay0 }
--     }
--   end,
--   integrations = {
--     cmp = true,
--     gitsigns = false,
--     nvimtree = true,
--     treesitter = true,
--     notify = false,
--     mini = false,
--     -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--   },
--   highlight_overrides = {
--     all = function(colors)
--       return {
--         NvimTreeNormal = { bg = colors.none },
--         CmpBorder = { fg = "#3e4145" },
--       }
--     end,
--   }
-- })

-- require('nightfox').setup({
--   options = {
--     transparent = true,     -- Disable setting background
--     terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
--     dim_inactive = false,    -- Non focused panes set to alternative background
--     module_default = true,   -- Default enable value for modules
--     colorblind = {
--       enable = false,        -- Enable colorblind support
--       simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
--       severity = {
--         protan = 0,          -- Severity [0,1] for protan (red)
--         deutan = 0,          -- Severity [0,1] for deutan (green)
--         tritan = 0,          -- Severity [0,1] for tritan (blue)
--       },
--     },
--     styles = {               -- Style to be applied to different syntax groups
--       comments = "NONE",     -- Value is any valid attr-list value `:help attr-list`
--       conditionals = "NONE",
--       constants = "NONE",
--       functions = "NONE",
--       keywords = "NONE",
--       numbers = "NONE",
--       operators = "NONE",
--       strings = "NONE",
--       types = "NONE",
--       variables = "NONE",
--     },
--     inverse = {             -- Inverse highlight for different types
--       match_paren = false,
--       visual = false,
--       search = false,
--     },
--     modules = {},             -- List of various plugins and additional options
--   },
--   palettes = {},
--   specs = {},
--   groups = {},
-- })

require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = true,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
})
