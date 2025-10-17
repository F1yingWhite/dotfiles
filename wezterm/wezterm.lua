local wezterm = require("wezterm")
local opcaity = 0.6
local config = {
	font_size = 14,
	font = wezterm.font_with_fallback({
		{ family = "JetBrainsMono Nerd Font", weight = "Medium" },
		{ family = "HarmonyOS Sans" },
	}),
	color_scheme = "Catppuccin Mocha",
	colors = {
		-- background = "#292c33",
	},
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "RESIZE",
	show_new_tab_button_in_tab_bar = false,
	window_background_opacity = opcaity,
	macos_window_background_blur = 20,
	text_background_opacity = opcaity,
	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 5,
	},
	adjust_window_size_when_changing_font_size = false,
	window_close_confirmation = "NeverPrompt",
}

-- 自动检测是否进入 Vim
wezterm.on("update-right-status", function(window, pane)
	local process_name = pane:get_foreground_process_name()
	if process_name and process_name:find("vim") then
		window:set_config_overrides({
			window_background_opacity = 0.9, -- Vim 中不透明
		})
	else
		window:set_config_overrides({
			window_background_opacity = opcaity, -- 恢复默认透明度
		})
	end
end)

return config
