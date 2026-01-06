local M = {}

---@type fun(c: nucharm.Palette):table<string,vim.api.keyset.highlight|string>
function M.get(c)
	return {
		MiniIconsGrey = { fg = c.neutral[8] },
		MiniIconsAzure = { fg = c.blue },
		MiniIconsPurple = { fg = c.magenta },
		MiniIconsBlue = { fg = c.blue },
		MiniIconsCyan = { fg = c.cyan },
		MiniIconsRed = { fg = c.red },
		MiniIconsOrange = { fg = c.orange },
		MiniIconsYellow = { fg = c.yellow },
		MiniIconsGreen = { fg = c.green },
	}
end

return M
