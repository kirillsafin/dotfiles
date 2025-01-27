return {
  "rmagatti/auto-session",
  enabled = true,
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      log_level = "error",
      auto_save_enabled = true,
      auto_restore_enabled = true,
      silent_restore = true,
      auto_session_allowed_dirs = {
        "~/.dotfiles",
        "/media/" .. os.getenv("ME") .. "/WindowsD/vaults/*",

        os.getenv("HOME") .. "/Desktop/EDA/Code/*",
        "/media/" .. os.getenv("ME") .. "/WindowsD/Coding/Projects/PLAYAREA-Spotify/*",
      },
      cwd_change_handling = true,
    })
  end,
}
