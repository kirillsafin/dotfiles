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

  table.sort(cpp_tools_versions)

  return cpp_tools_versions[#cpp_tools_versions]
end

return M
