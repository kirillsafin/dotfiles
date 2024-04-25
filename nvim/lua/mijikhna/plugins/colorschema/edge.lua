return {
  "sainnhe/edge",
  priority = 1000,
  config = function()
    vim.g.edge_style = "neon"
    vim.g.airline_theme = "edge"
    vim.g.edge_better_performance = true
    vim.g.edge_transparent_background = true
    vim.g.edge_dim_inactive_windows = false
    vim.g.edge_enable_italic = true
    -- vim.g.edge_disable_italic_comment = true
    vim.g.edge_diagnostic_virtual_text = "colored"

    vim.cmd("colorscheme edge")
  end
}
