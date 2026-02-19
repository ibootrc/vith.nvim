local M = {}

local palette = {
	bg0 = "NONE", -- fully transparent background
	bg1 = "NONE",
	bg2 = "NONE",
	bg3 = "NONE",
	bg4 = "NONE",

	fg = "#C9BEC2",
	fg2 = "#E4F0FB",
	red = "#D17B9A",
	orange = "#C5663F",
	yellow = "#F6C38A",
	green = "#7BE6AB",
	cyan = "#4CA1B3",
	blue = "#1b668f",
	purple = "#7060eb",
	grey = "#5C5457",
	light_grey = "#87757C",
	light_yellow = "#DDB988",
	none = "NONE",
}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.setup(overrides)
	vim.opt.termguicolors = true
	vim.opt.background = "dark"
	vim.g.colors_name = "vith"

	local groups = {
		-- Core UI
		Normal = { fg = palette.fg, bg = palette.bg0 },
		SignColumn = { bg = palette.bg0 },
		EndOfBuffer = { fg = palette.bg0, bg = palette.bg0 },
		LineNr = { fg = palette.grey, bg = palette.bg0 },
		CursorLineNr = { fg = palette.fg, bold = true },
		CursorLine = { bg = palette.bg1 },

		-- Visuals & Search
		Visual = { bg = palette.blue, fg = palette.bg0 },
		--Search = { reverse = true },
		--IncSearch = { reverse = true },

		-- Popup Menu
		Pmenu = { fg = palette.grey, bg = palette.bg3 },
		PmenuSel = { fg = palette.grey, bg = palette.grey },

		-- Statusline
		StatusLine = { fg = palette.fg, bg = palette.bg3 },
		StatusLineNC = { fg = palette.grey, bg = palette.bg1 },

		-- Diagnostics
		DiagnosticError = { fg = palette.red },
		DiagnosticWarn = { fg = palette.orange },
		DiagnosticInfo = { fg = palette.blue },
		DiagnosticHint = { fg = palette.purple },

		-- Syntax
		Comment = { fg = palette.light_grey, italic = true },
		String = { fg = palette.green },
		Character = { fg = palette.green },
		Number = { fg = palette.purple },
		Boolean = { fg = palette.purple },
		Identifier = { fg = palette.blue },
		Function = { fg = palette.green, bold = true },
		Keyword = { fg = palette.red, bold = true },
		Conditional = { fg = palette.red, bold = true },
		Repeat = { fg = palette.red, bold = true },
		Operator = { fg = palette.red, bold = true },
		Type = { fg = palette.blue, bold = true },
		Include = { fg = palette.red, bold = true },
		Constant = { fg = palette.cyan, bold = true },
		Special = { fg = palette.yellow },
		Todo = { fg = palette.purple, italic = true },
	}

	-- Apply highlights
	for group, opts in pairs(groups) do
		hl(group, opts)
	end

	-- Apply user overrides if any
	if overrides then
		for group, opts in pairs(overrides) do
			hl(group, opts)
		end
	end
end

return M
