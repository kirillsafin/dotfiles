--[[ requirements:
-- 1: npm install -g browser-sync
-- ]]
return {
  "ray-x/web-tools.nvim",
  opts = {
    keymaps = {
      rename = nil,         -- by default use same setup of lspconfig
    },
    hurl = {                -- hurl default
      show_headers = false, -- do not show http headers
      floating = false,     -- use floating windows (need guihua.lua)
      formatters = {        -- format the result by filetype
        json = { 'jq' },
        html = { 'prettier', '--parser', 'html' },
      },
    },
  }
}
