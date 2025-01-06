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
    event = "VeryLazy",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- Used by the code blocks
      "nvim-treesitter/nvim-treesitter",
    },
    config = true,
    opts = { file_type = { "markdown", "Avante", "copilot-chat" } },
  },
  {
    "3rd/image.nvim",
    enabled = true,
    event = "VeryLazy",
    opts = {
      backend = "kitty",
      processor = "magick_cli", -- or "magick_cli"
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = true,
          download_remote_images = false,
          only_render_image_at_cursor = true,
          filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
        },
        html = {
          enabled = false,
        },
        css = {
          enabled = false,
        },
      },
      max_width = nil,
      max_height = nil,
      max_width_window_percentage = nil,
      max_height_window_percentage = 70,
      window_overlap_clear_enabled = true, -- toggles images when windows are overlapped
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
      editor_only_render_when_focused = false, -- auto show/hide images when the editor gains/looses focus
      tmux_show_only_in_active_window = true, -- auto show/hide images in the correct Tmux window (needs visual-activity off)
      hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" }, -- render image files as images when opened
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
  {
    "3rd/diagram.nvim",
    enabled = true,
    event = "VeryLazy",
    dependencies = {
      "3rd/image.nvim",
    },
    branch = "feature/toggle",
    opts = {
      renderer_options = {
        mermaid = {
          background = '"#888888 "',
          theme = "dark",
          scale = 2,
        },
      },
    },
  },
}
