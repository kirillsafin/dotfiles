require('notify').setup({
  stages = "slide",  -- Animation style (see below for details)
  on_open = nil,  -- Function called when a new window is opened, use for changing win settings/config
  on_close = nil,  -- Function called when a window is closed
  render = "default",  -- Render function for notifications. See notify-render()
  timeout = 5000,  -- Default timeout for notifications
  background_colour = "Normal",-- For stages that change opacity this is treated as the highlight behind the window, set this to either a highlight group, an RGB hex value e.g. "#000000" or a function returning an RGB code for dynamic values
  minimum_width = 50,  -- Minimum width for notification windows
  icons = {  -- Icons for the different levels
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
})

vim.notify = require('notify')
vim.print = require('notify')
