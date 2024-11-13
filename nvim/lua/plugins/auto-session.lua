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
        "/media/" .. os.getenv("ME") .. "/WindowsD/Coding/Hands-On/Js-And-Ts/Projects/*",
        "/media/" .. os.getenv("ME") .. "/WindowsD/Coding/Hands-On/Python/*",
        os.getenv("HOME") .. "/Desktop/EDA/Code/Training/*",
        os.getenv("HOME") .. "/Desktop/EDA/Code/Crescendo-Player",
      },
      cwd_change_handling = true,
    })
  end,
}
