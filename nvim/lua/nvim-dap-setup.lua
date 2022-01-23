local dap = require('dap')

dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/prog/vscode-node-debug-2/out/src/nodeDebug.js'},
}

dap.configurations.node2 = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach',
    type = 'node2',
    request = 'attach',
    cwd = vim.fn.getcwd(),
    localRoot = vim.fn.getcwd(),
    remoteRoot = '/app',
    processId = require'dap.utils'.pick_process,
    sourceMaps = true,
    skipFiles = {
      "**/node_modules/**",
			"<node_internals>/**",
    }
  },
}

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
    type = 'python',
    name = 'Launch File',
    request = 'launch',
    program = '${file}',
    pythonPath = python_exec
  },
  {
    type = 'remote_python' ,
    name = "Attach",
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
        -- localRoot = '/media/kirill/WindowsD/Programmieren/Training/PLAYAREA2/fastapi/src-backend',
        remoteRoot = "/app",
      },
    },
  }
}

dap.adapters.cppdbg = {
  type = 'executable',
  command = os.getenv('HOME') .. '/prog/vscode-cpptools/extension/debugAdapters/bin/OpenDebugAD7',
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
    setupCommands = {
      {
         text = '-enable-pretty-printing',
         description =  'enable pretty printing',
         ignoreFailures = false 
      },
    },
  },
  {
    name = 'Attach to gdbserver :1234',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:1234',
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

dap.configurations.c = dap.configurations.cpp

require("dapui").setup()
require("nvim-dap-virtual-text").setup()
