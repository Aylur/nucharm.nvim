local config = require("nucharm.config")
local groups = require("nucharm.groups")

local M = {}

---@param opts? nucharm.Options
M.load = function(opts)
	opts = require("nucharm.config").extend(opts)

	local bg = vim.o.background
	local style = bg == "dark" and opts.style or opts.light_style

	vim.cmd("hi clear")
	vim.g.colors_name = "nucharm-" .. style

	---@type nucharm.Palette
	local palette = require("nucharm.palettes." .. style)

	for group, hl in pairs(groups.get(palette, opts)) do
		if type(hl) == "string" then
			vim.api.nvim_set_hl(0, group, { link = hl })
		else
			vim.api.nvim_set_hl(0, group, hl)
		end
	end
end

M.setup = config.setup

return M
