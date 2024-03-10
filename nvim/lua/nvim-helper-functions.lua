local M = { }

function M.getPythonExec ()
  local cwd = vim.fn.getcwd()

  if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
    return cwd .. '/venv/bin/python'
  else
    return 'python'
  end
end

function M.findVsCodeCppTools ()
  local cpp_tools_versions = {}
  local vs_code_extentions_dir = os.getenv('HOME') .. '/.vscode/extensions'
  local dir = io.popen('ls -a "'..vs_code_extentions_dir..'"')

  for filename in dir:lines() do
    if (filename:sub(1, #'ms-vscode.cpptools') == 'ms-vscode.cpptools' and filename:sub(-#'linux-x64') == 'linux-x64') then
      table.insert(cpp_tools_versions, filename)
    end
  end

  if #(cpp_tools_versions) == 0 then
    return ''
  end
  table.sort(cpp_tools_versions)

  return cpp_tools_versions[#cpp_tools_versions]
end

M.formatOnSave = function ()
  vim.lsp.buf.format ({
    filter = function(client)
      if client.name == 'docker_compose_language_service' then
        return false
      end

      return true
    end,
    async = false
  })
end

M.getArduinoBoardFQBN = function ()
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

  return board_fqbn
end

return M
