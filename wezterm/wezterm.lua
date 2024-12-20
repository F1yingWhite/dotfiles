local wezterm = require("wezterm")
local config = {
	font_size = 14,
	font = wezterm.font_with_fallback({
		{ family = "JetBrainsMono Nerd Font", weight = "Medium" },
		{ family = "HarmonyOS Sans" },
	}),
	color_scheme = "Catppuccin Mocha",
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "RESIZE",
	show_new_tab_button_in_tab_bar = false,
	window_background_opacity = 0.6,
	macos_window_background_blur = 70,
	text_background_opacity = 0.6,
	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 5,
	},
	adjust_window_size_when_changing_font_size = false,
	window_close_confirmation = "NeverPrompt",
}

return config
