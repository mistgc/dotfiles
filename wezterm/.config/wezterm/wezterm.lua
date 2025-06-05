local wezterm = require('wezterm')
local scheme_gruvbox = require('lua.gruvbox')
local config = {
    font_size = 14,
    colors = scheme_gruvbox.colors(),
    -- window_frame = scheme_rose_pine.window_frame(),
    use_fancy_tab_bar = false,
    hide_tab_bar_if_only_one_tab = true,
    show_new_tab_button_in_tab_bar = false,
    window_background_opacity = 0.9,
    text_background_opacity = 0.9,
    adjust_window_size_when_changing_font_size = false,
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0
    },
    use_ime = true,
    xim_im_name = "fcitx",
}

return config
