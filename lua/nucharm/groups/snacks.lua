local M = {}

---@type fun(c: nucharm.Palette):table<string,vim.api.keyset.highlight|string>
function M.get(c)
	--- :help highlight-groups
	return {
		SnacksPickerCursorLine = { bg = c.neutral[4] },
		SnacksPickerListCursorLine = { bg = c.neutral[4] },
		SnacksPickerPreviewCursorLine = { bg = c.neutral[4] },
	}
end

return M
