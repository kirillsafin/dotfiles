local helper_func = require('./nvim-helper-functions')
local dap = require('dap')

-- dap.set_log_level('TRACE')

-- PYTHON
dap.adapters.python = function (callback, config)
  if config.request == 'attach' then
    callback({
      type = 'server',
      port = assert(config.connect.port or config.port, '`connect.port` is required for a python `attach` configuration'),
      host = config.connect.host or config.host,
      options = { source_filetype = 'python' }
    })
  elseif config.request == 'launch' then
    callback({
      type = 'executable',
      command = helper_func.getPythonExec(),
      args = { '-m', 'debugpy.adapter' },
      options = { source_filetype = 'python' }
    })
  end
end

-- C++ & C
dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = os.getenv('HOME') .. '/.vscode/extensions/' .. helper_func.findVsCodeCppTools() .. '/debugAdapters/bin/OpenDebugAD7',
  options = {
    detached = false
  },
}


-- TODO: JAVA

-- TYPESCRIPT AND JAVASCRIPT
for _, adapter in ipairs({'pwa-node', 'pwa-chrome'}) do
  require('dap').adapters[adapter] = {
    type = 'server',
    host = 'localhost',
    port = '${port}',
    executable = {
      command = 'node',
      args = { os.getenv('HOME') .. '/prog/debug-servers/vscode-js-debug/src/dapDebugServer.js', '${port}' },
    }
  }
end

require('dap.ext.vscode').load_launchjs('.nvim/launch.json',
{
  ['pwa-node'] = { 'javascript', 'typescript' },
  ['pwa-chrome'] = { 'javascript', 'typescript' },
  cppdbg = { 'cpp', 'c'}
})


require("nvim-dap-virtual-text").setup()

require("cmp").setup({
  enabled = function()
    return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt"
        or require("cmp_dap").is_dap_buffer()
  end
})

local dapui = require("dapui")
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open({ reset = true })
end

dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

require("cmp").setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
  sources = {
    { name = "dap" },
  },
})
