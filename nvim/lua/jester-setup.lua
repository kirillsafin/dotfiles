require'jester'.setup{
  cmd = "NODE_OPTIONS=--experimental-vm-modules TEST_POSTGRES_HOST=127.0.0.1 TEST_POSTGRES_PORT=5432 TEST_POSTGRES_USER=postgres TEST_POSTGRES_PASSWORD=password TEST_POSTGRES_DB=nest_db TEST_CLUSTER_NAME=cluster-1 SALT_MASTER_TEST_URL=test.com SALT_MASTER_TEST_USER=user SALT_MASTER_TEST_PWD=test node ./node_modules/jest/bin/jest.js --detectOpenHandles -t \"$result\" $file", -- run command
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
    env = { 
      NODE_OPTIONS = '--experimental-vm-modules',
      TEST_POSTGRES_HOST = '127.0.0.1',
      TEST_POSTGRES_PORT = 5432,
      TEST_POSTGRES_USER = 'postgres',
      TEST_POSTGRES_PASSWORD='password',
      TEST_POSTGRES_DB='nest_db_test',

      TEST_CLUSTER_NAME='cluster-1',
    },
    sourceMaps = true,
    skipFiles = { "<node_internals>/**" },
    port=9229,
    console = 'integratedTerminal',
    disableOptimisticBPs = true
  },
}
