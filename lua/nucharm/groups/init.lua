local M = {}

---@param palette nucharm.Palette
---@param opts nucharm.Options
---@return table<string,vim.api.keyset.highlight>
M.get = function(palette, opts)
	---@type nucharm.Palette
	local colors = vim.tbl_deep_extend("force", {}, palette)

	opts.on_colors(colors)

	---@type table<string,vim.api.keyset.highlight|string>
	local groups = vim.tbl_extend(
		"force",
		{},
		require("nucharm.groups.kinds").get(colors),
		require("nucharm.groups.base").get(colors),
		require("nucharm.groups.treesitter").get(colors),
		require("nucharm.groups.semantic_tokens").get(colors),
		require("nucharm.groups.snacks").get(colors),
		require("nucharm.groups.blink").get(colors)
	)

	require("nucharm.groups.terminal").set_terminal_colors(colors)
	opts.on_highlights(groups, colors)

	---@type table<string,vim.api.keyset.highlight>
	local ret = {}

	for group, hl in pairs(groups) do
		if type(hl) == "string" then
			ret[group] = { link = hl }
		else
			ret[group] = hl
		end
	end

	return ret
end

return M
