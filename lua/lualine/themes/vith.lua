local palette = {
	bg0 = "NONE",
	bg1 = "NONE",
	bg2 = "NONE",
	bg3 = "NONE",
	bg4 = "NONE",

	fg = "#C9BEC2",
	red = "#D17B9A",
	orange = "#C5663F",
	yellow = "#F6C38A",
	green = "#7BE6AB",
	cyan = "#4CA1B3",
	blue = "#64AAE4",
	purple = "#7060eb",
	grey = "#5C5457",
	light_grey = "#87757C",
	light_yellow = "#DDB988",
	none = "NONE",
}

local vith_lualine = {}

vith_lualine.normal = {
	a = { fg = palette.bg0, bg = palette.blue, gui = "bold" },
	b = { fg = palette.fg, bg = palette.bg1 },
	c = { fg = palette.grey, bg = palette.none },
}

vith_lualine.insert = {
	a = { fg = palette.bg0, bg = palette.red, gui = "bold" },
	b = { fg = palette.fg, bg = palette.bg1 },
	c = { fg = palette.grey, bg = palette.none },
}

vith_lualine.visual = {
	a = { fg = palette.bg0, bg = palette.orange, gui = "bold" },
	b = { fg = palette.fg, bg = palette.bg1 },
	c = { fg = palette.grey, bg = palette.none },
}

vith_lualine.replace = {
	a = { fg = palette.bg0, bg = palette.red, gui = "bold" },
	b = { fg = palette.fg, bg = palette.bg1 },
	c = { fg = palette.grey, bg = palette.none },
}

vith_lualine.command = {
	a = { fg = palette.bg0, bg = palette.purple, gui = "bold" },
	b = { fg = palette.fg, bg = palette.bg1 },
	c = { fg = palette.grey, bg = palette.none },
}

vith_lualine.inactive = {
	a = { fg = palette.light_grey, bg = palette.bg1, gui = "bold" },
	b = { fg = palette.light_grey, bg = palette.bg1 },
	c = { fg = palette.light_grey, bg = palette.none },
}

return vith_lualine
