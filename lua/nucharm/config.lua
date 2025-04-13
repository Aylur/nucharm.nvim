local M = {}

---@alias nucharm.Style "wild" | "day"
---@alias nucharm.Highlights table<string,vim.api.keyset.highlight|string>

---@class nucharm.Options
---@field style? nucharm.Style
---@field light_style? nucharm.Style
---@field on_colors? fun(palette: nucharm.Palette): nil
---@field on_highlights? fun(highlights: nucharm.Highlights, palette: nucharm.Palette): nil
M.defaults = {
	style = "wild",
	light_style = "day",
	on_colors = function(palette) end,
	on_highlights = function(highlights, palette) end,
}

M.options = vim.tbl_deep_extend("force", {}, M.defaults)

---@param options? nucharm.Options
function M.setup(options)
	M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? nucharm.Options
---@return nucharm.Options
function M.extend(opts)
	return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

return M
