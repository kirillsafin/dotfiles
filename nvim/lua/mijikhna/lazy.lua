local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
  {
    { import = "mijikhna.plugins" },
    { import = "mijikhna.plugins.colorschema" },
    { import = "mijikhna.plugins.dap" },
    { import = "mijikhna.plugins.git" },
    { import = "mijikhna.plugins.markdown" },
    { import = "mijikhna.plugins.web" },
    { import = "mijikhna.plugins.test" }
  },
  {
    change_detection = {
      notify = false,
    },
    checker = {
      enable = false,
      notify = false,
    }
  })
