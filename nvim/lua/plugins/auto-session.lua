return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    vim.o.sessionoptions = "blank,buffers,curdir,folds,tabpages,winsize,winpos,terminal,localoptions"
    vim.o.sessionoptions = "blank,buffers,curdir,tabpages,winsize,winpos,terminal,localoptions"

    auto_session.setup({
      log_level = "error",
      auto_save_enabled = true,
      auto_restore_enabled = true,
      silent_restore = true,
      auto_session_allowed_dirs = {
        "~/.dotfiles",
        "/media/" .. os.getenv("ME") .. "/WindowsD/vaults/*",
        "/media/" .. os.getenv("ME") .. "/WindowsD/Coding/Hands-On/Js-And-Ts/Projects/*",
        "/media/" .. os.getenv("ME") .. "/WindowsD/Coding/Hands-On/Python/*",
      },
      cwd_change_handling = {
        restore_upcoming_session = true,
      },
    })
  end,
}
