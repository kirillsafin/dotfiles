local M = {}

function M.getDebugPythonExec()
  return os.getenv("HOME") .. '/prog/debug-servers/python-debug/venv/bin/python'
end

function M.getPythonVenvPath()
  local cwd = vim.fn.getcwd()

  local ok = os.rename(cwd .. "/venv", cwd .. "/venv")
  if ok then
    return cwd .. '/venv'
  end

  return ""
end

function M.findVsCodeCppTools()
  local cpp_tools_versions = {}
  local vs_code_extentions_dir = os.getenv('HOME') .. '/.vscode/extensions'
  local dir = io.popen('ls -a "' .. vs_code_extentions_dir .. '"')

  for filename in dir:lines() do
    if (filename:sub(1, #'ms-vscode.cpptools') == 'ms-vscode.cpptools' and filename:sub(- #'linux-x64') == 'linux-x64') then
      table.insert(cpp_tools_versions, filename)
    end
  end

  if #(cpp_tools_versions) == 0 then
    return ''
  end
  table.sort(cpp_tools_versions)

  return cpp_tools_versions[#cpp_tools_versions]
end

M.formatOnSave = function()
  vim.lsp.buf.format({
    filter = function(client)
      if client.name == 'docker_compose_language_service' then
        return false
      end

      return true
    end,
    async = false
  })
end

M.getArduinoBoardFQBN = function()
  -- read sketch.yaml file and get fqbn from it
  local sketch_yaml = io.open('sketch.yaml', 'r')

  if sketch_yaml == nil then
    return ''
  end

  local board_fqbn = ''
  for line in sketch_yaml:lines() do
    if line:sub(1, #'default_fqbn:') == 'default_fqbn:' then
      board_fqbn = line:sub(#'default_fqbn:' + 2)
      break
    end
  end

  vim.notify("Arduino LSP: Board Found -> " .. board_fqbn)
  return board_fqbn
end

return M
