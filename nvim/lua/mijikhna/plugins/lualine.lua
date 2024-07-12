return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    lualine.setup({
      options = {
        theme = "auto",
      },
      sections = {
        lualine_c = {},
        lualine_x = {
          {
            function()
              local msg = "No LSP"
              local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
              local clients = vim.lsp.get_clients()
              if next(clients) == nil then
                return msg
              end
              for _, client in ipairs(clients) do
                local filetypes = client.config.filetypes
                if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                  return client.name
                end
              end
              return msg
            end,
            icon = " LSP:",
            color = { fg = "#ccb3b3" },
            padding = 3,
          },
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
          },
          { "encoding" }, { "fileformat" }, { "filetype" }
        }
      }
    })
  end
}
