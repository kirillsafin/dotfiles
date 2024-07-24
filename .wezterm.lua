-- wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder() -- create config object with default values

local function recompute_padding(window)
  local window_dims = window:get_dimensions()
  local current_config = window:effective_config()
  local overrides = window:get_config_overrides()

  if not current_config.window_padding then
    return
  end

  overrides.window_padding = nil

  local y_padding = math.floor((window_dims.pixel_height % (current_config.font_size)) / 2)
  local new_padding = {
    top = y_padding,
    bottom = 0,
  }

  if overrides.window_padding and new_padding.left == overrides.window_padding.top then
    return -- padding is same, avoid triggering further changes
  end

  overrides.window_padding = new_padding
  window:set_config_overrides(overrides)
end

-- General
config.automatically_reload_config = true -- reload config when it changes

-- Appearance
config.font = wezterm.font_with_fallback({
  {
    -- family = "NotoMono Nerd Font", -- "CaskaydiaCove Nerd Font Mono", "NotoMono Nerd Font"
    -- family = "CaskaydiaMono Nerd Font Mono", -- "CaskaydiaCove Nerd Font Mono", "NotoMono Nerd Font"
    family = "CaskaydiaCove Nerd Font Mono",
    weight = "Regular",
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
  },
  {
    family = "codicon",
    weight = "Regular"
  }
})

-- config.window_background_image = os.getenv("HOME") .. "/Pictures/Wallpapers/Red Velvet/red-velvet1.jpg"
-- config.window_background_image = os.getenv("HOME") .. "/Pictures/Wallpapers/Red Velvet/red-velvet2.jpg"
-- config.window_background_image = os.getenv("HOME") .. "/Pictures/Wallpapers/AOA/AOA6.jpg"
-- config.window_background_image = os.getenv("HOME") .. "/Pictures/Wallpapers/AOA/AOA6.png"
config.window_background_image = os.getenv("HOME") .. "/.dotfiles/term-backgrounds/dec/BESTie.png"

config.window_background_image_hsb = {
  brightness = 0.35,
  hue = 1.0,
  saturation = 1.0,
} -- adjust the background image

-- # initial padding otherwise resizing doesn't work properly (Who knows why?)
config.window_padding = {
  left = 0,
  right = 0,
  top = 8,
  bottom = 0,
}

config.font_size = 10.5

config.hide_tab_bar_if_only_one_tab = true

config.window_decorations = "TITLE | RESIZE"

-- Key bindings
config.keys = {
  {
    key = "F11",
    action = wezterm.action.ToggleFullScreen,
  }
}

config.colors = {
  cursor_bg = '#c4c4c6'
}

config.force_reverse_video_cursor = false -- cursor color

-- config.default_prog = { "/usr/bin/tmux" }

wezterm.on('window-resized', function(window, _)
  recompute_padding(window)
end)

wezterm.on('window-config-reloaded', function(window)
  recompute_padding(window)
end)


return config
