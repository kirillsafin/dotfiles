-- wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder() -- create config object with default values

local function recompute_padding(window, pane)
  local window_dims = window:get_dimensions()
  local current_config = window:effective_config()
  local overrides = window:get_config_overrides()
  local pane_dims = pane:get_dimensions()

  if not current_config.window_padding then
    return
  end

  -- font_size is in points, 96dpi <-> font_size * 1.333333 = font_size in pixels
  local font_line_height = pane_dims.pixel_height / (pane_dims.viewport_rows - 1)
  local gap = window_dims.pixel_height % font_line_height
  local y_padding = gap / 2
  local new_padding = {
    right = 0,
    left = 0,
    top = math.floor(y_padding),
    bottom = gap - y_padding,
  }

  if overrides and overrides.window_padding and new_padding.left == overrides.window_padding.top then
    return -- padding is same, avoid triggering further changes
  end

  if not overrides then
    overrides = { window_padding = nil }
  end

  overrides.window_padding = new_padding
  window:set_config_overrides(overrides)
end

-- General
config.automatically_reload_config = true -- reload config when it changes

-- Appearance
config.font = wezterm.font_with_fallback({
  {
    family = "CaskaydiaCove Nerd Font Mono",
    weight = "Regular",
    harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
  },
})

-- # initial padding otherwise resizing doesn't work properly (Who knows why?)
config.window_padding = {
  left = 0,
  right = 0,
}

config.font_size = 10

config.hide_tab_bar_if_only_one_tab = true

config.window_decorations = "TITLE | RESIZE"

-- Key bindings
config.keys = {
  {
    key = "F11",
    action = wezterm.action.ToggleFullScreen,
  },
}

config.colors = {
  cursor_bg = "#c4c4c6",
}

config.force_reverse_video_cursor = false -- cursor color

wezterm.on("window-resized", function(window, pane)
  recompute_padding(window, pane)
end)

wezterm.on("window-config-reloaded", function(window, pane)
  recompute_padding(window, pane)
end)

return config
