local kinds = require("nucharm.groups.kinds")

local M = {}

---@type fun(c: nucharm.Palette):table<string,vim.api.keyset.highlight|string>
function M.get(c)
	---@type table<string,vim.api.keyset.highlight|string>
	local ret = {
		BlinkCmpKindDefault = { fg = c.blue },
		BlinkCmpKindCodeium = { fg = c.pink },
		BlinkCmpKindCopilot = { fg = c.pink },
		BlinkCmpKindSupermaven = { fg = c.cyan },
		BlinkCmpKindTabNine = { fg = c.cyan },
	}

	for kind, _ in pairs(kinds.get(c)) do
		ret["BlinkCmpKind" .. kind] = kind
	end

	return ret
end

return M
