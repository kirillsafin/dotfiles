return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      log_level                  = "info",
      auto_save_enabled          = true,
      auto_restore_enabled       = true,
      auto_session_suppress_dirs = {
        "~/Downloads",
        "~/Documents",
        "~/Desktop",
      },
      cwd_change_handling        = {
        restore_upcoming_session = true,
      }
    })
  end
}
