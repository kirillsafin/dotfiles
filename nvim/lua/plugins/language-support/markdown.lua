package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua"

return {
  {

    "OXY2DEV/markview.nvim",
    enabled = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- Used by the code blocks
    },
    opts = {},
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    enabled = true,
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- Used by the code blocks
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {},
  },
  {
    "3rd/diagram.nvim",
    enabled = true,
    dependencies = {
      "3rd/image.nvim",
    },
    branch = "feature/toggle",
    opts = {
      renderer_options = {
        mermaid = {
          background = '"#AAAAAA"',
          theme = "dark",
          scale = 1.5,
        },
      },
    },
  },
  {
    "3rd/image.nvim",
    enabled = true,
    opts = {
      integrations = {
        markdown = {
          download_remote_images = false,
          only_render_image_at_cursor = true,
        },
      },
      max_width = 200,
      max_height = 200,
      editor_only_render_when_focused = true,
      tmux_show_only_in_active_window = true,
    },
    keys = {
      {
        "<leader>ic",
        function()
          require("image").clear()
        end,
        desc = "Clear Image",
      },
    },
  },
}
