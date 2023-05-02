local dap = require('dap')

-- dap.set_log_level('TRACE')

-- PYTHON
local function get_python_exec()
  local cwd = vim.fn.getcwd()

  if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
    return cwd .. '/venv/bin/python'
  else
    return 'python'
  end
end

local python_exec = get_python_exec()

dap.adapters.python = {
  type = 'executable',
  command = python_exec,
  args = { '-m', 'debugpy.adapter' }
}

dap.adapters.remote_python = {
  type = 'server',
  host = '127.0.0.1',
  port = 5678
}

-- dap.adapters.remote_python = function (callback)
--   callback({
--     type = 'server',
--     host = '127.0.0.1',
--     port = 5678
--   })
-- end

dap.configurations.python = {
  {
    type = 'remote_python' ,
    name = "Attach (DAP Config)",
    request = "attach",
    mode = "remote",
    subProcess = false,
    connect = {
      port = 5678,
      host = '127.0.0.1',
    },
    cwd = vim.fn.getcwd(),
    pathMappings = {
      {
        localRoot = vim.fn.getcwd(),
        remoteRoot = "/app",
      },
    },
  }
}

-- C++ & C
dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  -- TODO: create function which grabs the latest vscode cpptools folder
  command = os.getenv('HOME') .. '/.vscode/extensions/ms-vscode.cpptools-1.14.5-linux-x64/debugAdapters/bin/OpenDebugAD7',
  options = {
    detached = false
  },
}

dap.configurations.cpp = {
  {
    name = 'Attach (DAP Config)',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:9091',
    miDebuggerPath = '/usr/bin/gdb',
    cwd = '${workspaceFolder}',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    setupCommands = {
      {
         text = '-enable-pretty-printing',
         description =  'enable pretty printing',
         ignoreFailures = false
      },
    },
  },
}

-- TODO:

-- JAVA
-- local config = {
--     cmd = {os.getenv('HOME') .. 'jdtls'},
--     root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
-- }
-- require('jdtls').start_or_attach(config)



-- TYPESCRIPT AND JAVASCRIPT
local dap_vscode = require("dap-vscode-js")
dap_vscode.setup({
  debugger_path = os.getenv('HOME')  .. '/prog/debug-server/vscode-js-debug-X',     -- Path to vscode-js-debug installation.
  adapters = { 'pwa-node', 'pwa-chrome' },                                          -- which adapters to register in nvim-dap
  -- node_path = "node",                                                            -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  -- debugger_cmd = { "js-debug-adapter" },                                         -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
  -- log_file_path = "(stdpath cache)/dap_vscode_js.log"                            -- Path for file logging
  -- log_file_level = false                                                         -- Logging level for output to file. Set to false to disable file logging.
  -- log_console_level = vim.log.levels.ERROR                                       -- Logging level for output to console. Set to false to disable console output.
})

for _, language in ipairs({ "typescript", "javascript" }) do
  dap.configurations[language] = {
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach (DAP Config)",
      processId = require'dap.utils'.pick_process,
      cwd = "${workspaceFolder}",
    }
  }
end

require('dap.ext.vscode').load_launchjs(nil,
{
  ['pwa-node'] = { 'javascript', 'typescript' },
  cppdbg = { 'cpp', 'c'}
})

require("dapui").setup()
require("nvim-dap-virtual-text").setup()
