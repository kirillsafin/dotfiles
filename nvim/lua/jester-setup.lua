require'jester'.setup{
  cmd = "NODE_OPTIONS=--experimental-vm-modules node ./node_modules/jest/bin/jest.js -t \"$result\" -- $file", -- run command
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
      "$file",
      "-t",
      "$result",
    },
    args = { "--runTestsByPath", "${relativeFile}" },
    env = { NODE_OPTIONS = '--experimental-vm-modules' },
    sourceMaps = true,
    skipFiles = { "<node_internals>/**" },
    port=9229,
    console = 'integratedTerminal',
    disableOptimisticBPs = true
  },
}
