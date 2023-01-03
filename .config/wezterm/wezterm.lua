local colors = require('lua/rose-pine').colors()
local window_frame = require('lua/rose-pine').window_frame()
local wezterm = require 'wezterm'

return {
    colors = colors,
    window_frame = window_frame, -- needed only if using fancy tab bar

  font = wezterm.font('Recursive Mono Casual Static', { weight = 'Regular', italic = false }),
  font_size = 15,

  cursor_blink_rate = 800,
    visual_bell = {
    fade_in_function = 'EaseIn',
    fade_in_duration_ms = 100,
    fade_out_function = 'EaseOut',
    fade_out_duration_ms = 100,
  },

  cursor_blink_ease_in = 'Linear',
  cursor_blink_ease_out = 'Linear',
  default_cursor_style = 'BlinkingBlock',
  animation_fps = 24,

  initial_cols = 136,
  initial_rows = 40,
  
  window_background_opacity = 0.95,
  native_macos_fullscreen_mode = true,
  audible_bell = 'Disabled'
}
