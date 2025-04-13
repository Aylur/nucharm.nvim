local M = {}

---@type fun(c: nucharm.Palette): nil
function M.set_terminal_colors(c)
	vim.g.terminal_color_0 = c.terminal.black
	vim.g.terminal_color_8 = c.terminal.black_bright

	vim.g.terminal_color_7 = c.terminal.white
	vim.g.terminal_color_15 = c.terminal.white_bright

	vim.g.terminal_color_1 = c.terminal.red
	vim.g.terminal_color_9 = c.terminal.red_bright

	vim.g.terminal_color_2 = c.terminal.green
	vim.g.terminal_color_10 = c.terminal.green_bright

	vim.g.terminal_color_3 = c.terminal.yellow
	vim.g.terminal_color_11 = c.terminal.yellow_bright

	vim.g.terminal_color_4 = c.terminal.blue
	vim.g.terminal_color_12 = c.terminal.blue_bright

	vim.g.terminal_color_5 = c.terminal.magenta
	vim.g.terminal_color_13 = c.terminal.magenta_bright

	vim.g.terminal_color_6 = c.terminal.cyan
	vim.g.terminal_color_14 = c.terminal.cyan_bright
end

return M
