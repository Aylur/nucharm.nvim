local Util = require("nucharm.util")

local M = {}

---@type fun(c: nucharm.Palette):table<string,vim.api.keyset.highlight|string>
function M.get(c)
	local darken = function(color, alpha)
		return Util.blend(color, alpha, c.neutral[1])
	end

	return {
		TodoBgFIX = { bold = true, bg = darken(c.red, 0.2), fg = c.red },
		TodoFgFIX = { fg = darken(c.red, 0.7) },
		TodoBgHACK = { bold = true, bg = darken(c.orange, 0.2), fg = c.orange },
		TodoFgHACK = { fg = darken(c.orange, 0.7) },
		TodoBgNOTE = { bold = true, bg = darken(c.neutral[8], 0.2), fg = c.neutral[8] },
		TodoFgNOTE = { fg = darken(c.neutral[8], 0.7) },
		TodoBgTEST = { bold = true, bg = darken(c.yellow, 0.2), fg = c.yellow },
		TodoFgTEST = { fg = darken(c.yellow, 0.7) },
		TodoBgTODO = { bold = true, bg = darken(c.blue, 0.2), fg = c.blue },
		TodoFgTODO = { fg = darken(c.blue, 0.7) },
		TodoBgWARN = { bold = true, bg = darken(c.orange, 0.2), fg = c.orange },
		TodoFgWARN = { fg = darken(c.orange, 0.7) },
	}
end

return M
