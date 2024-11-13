return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      log_level = "error",
      auto_save_enabled = true,
      auto_restore_enabled = true,
      silent_restore = true,
      auto_session_allowed_dirs = {
        "~/.dotfiles",
      },
      cwd_change_handling = false,
    })
  end,
}
