require'jester'.setup{
  cmd = "NODE_OPTIONS=--experimental-vm-modules node ./node_modules/jest/bin/jest.js -t \"$result\" $file", -- run command
  terminal_cmd = ":ToggleTerm",
  dap = {
    type = 'pwa-node',
    request = 'launch',
    name = 'Jest Debug',
    cwd = "${workspaceFolder}",
    rootPath = "${workspaceFolder}",
    runtimeExecutable = "node",
    runtimeArgs = {
      "./node_modules/jest/bin/jest.js",
      "--runInBand",
      "-t",
      "$result",
      "$file",
    },
    -- args = { "--runTestsByPath", "${relativeFile}" },
    args = { "--no-cache" },
    env = { NODE_OPTIONS = '--experimental-vm-modules' },
    sourceMaps = true,
    skipFiles = { "<node_internals>/**" },
    port=9229,
    console = 'integratedTerminal',
    disableOptimisticBPs = true
  },
}
