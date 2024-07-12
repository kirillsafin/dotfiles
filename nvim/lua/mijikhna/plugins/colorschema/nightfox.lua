return {
  "EdenEast/nightfox.nvim",
  priority = 1000,
  enabled = false,
  lazy = true,
  opts = {
    options = {
      transparent = true,      -- Disable setting background
      terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
      dim_inactive = false,    -- Non focused panes set to alternative background
      module_default = true,   -- Default enable value for modules
      colorblind = {
        enable = false,        -- Enable colorblind support
        simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
        severity = {
          protan = 1,          -- Severity [0,1] for protan (red)
          deutan = 1,          -- Severity [0,1] for deutan (green)
          tritan = 1,          -- Severity [0,1] for tritan (blue)
        },
      },
      inverse = { -- Inverse highlight for different types
        match_paren = false,
        visual = false,
        search = false,
      },
    },
    groups = {
      -- carbonfox = {
      --   SpellCap = { bold = true }, -- file names
      --   Directory = { bold = false }, -- directory names
      -- },
    },
  },
  init = function()
    vim.cmd("colorscheme nightfox")
    local msg_hl = vim.api.nvim_get_hl(0, { name = "MoreMsg" })
    vim.api.nvim_set_hl(0, "MoreMsg", vim.tbl_deep_extend("force", {}, msg_hl, { bold = false }))

    local directory = vim.api.nvim_get_hl(0, { name = "NvimTreeFolderName" })
    vim.api.nvim_set_hl(0, "NvimTreeFolderName", vim.tbl_deep_extend("force", {}, directory, { bold = true }))
  end
}
