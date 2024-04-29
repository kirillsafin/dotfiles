local PythonUtil = {}

function PythonUtil.get_debug_python_exec()
  return os.getenv("HOME") .. '/prog/debug-servers/python-debug/venv/bin/python'
end

function PythonUtil.get_python_venv_path()
  local cwd = vim.fn.getcwd()

  local ok = os.rename(cwd .. "/venv", cwd .. "/venv")
  if ok then
    return cwd .. '/venv'
  end

  return ""
end

return PythonUtil
